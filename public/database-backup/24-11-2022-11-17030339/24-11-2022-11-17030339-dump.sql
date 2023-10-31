
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
DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `mainTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mainDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec1_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec2_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `benifitTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `benifitDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellingTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellingDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about_us_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,NULL,'About Us','initail slug','Delevering happiness on the goal.','<p>We believe time is valuable to our fellow residents, and that they should not have to waste hours in traffic, brave bad weather and wait in line just to buy basic necessities like eggs! This is why Chaldal delivers everything you need right at your door-step and at no additional cost.</p>','frontend\\default\\img\\about_1.png','frontend\\default\\img\\about_1.png','Benefits','<p>Opens the doorway for everybody to shop over the Internet. We constantly update with lot of new products, services and special offers. We provide on-time delivery of products and quick resolution of any concerns.</p>','ALL YOU JUST NEED IS START SELLING','<p>Selling is very easy in this site. You can easily register here as a vendor and start selling immediately</p>','Starting @ $7.00/month','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solid_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gradient_color_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gradient_color_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gradient_color_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scroll_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_white` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_white` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_black` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_black` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danger_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toastr_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toastr_time` double(8,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_colors` WRITE;
/*!40000 ALTER TABLE `admin_colors` DISABLE KEYS */;
INSERT INTO `admin_colors` VALUES (1,'Default Color','Gradient','image','backend/img/admin-body-bg.jpg','','#415094','','#7C32FF','#A235EC','#C738D8','#7E7172','#828BB2','#FFFFFF','#FFFFFF','#000000','#000000','#FFFFFF','rgba(130, 139, 178, 0.3)','#4BCF90','#E09079','#FF6D68','toast-top-right',3000.00,1,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `admin_colors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `analytics_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytics_tools` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `analytics_tools` WRITE;
/*!40000 ALTER TABLE `analytics_tools` DISABLE KEYS */;
INSERT INTO `analytics_tools` VALUES (1,'google_analytics',NULL,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'facebook_pixel',NULL,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `analytics_tools` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attendance` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'P',
  `date` date DEFAULT NULL,
  `day` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendances_created_by_foreign` (`created_by`),
  KEY `attendances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `attendances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `attendances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,'black',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'red',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'white',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,'5th',2,'2022-11-24 08:59:19',NULL);
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_type` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attributes_created_by_foreign` (`created_by`),
  KEY `attributes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `attributes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attributes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'Color','radio_button','this is for color atrribute.',1,NULL,NULL,'2018-11-05 01:12:26','2018-11-05 01:12:26'),(2,'Gen',NULL,NULL,1,NULL,NULL,'2022-11-24 08:59:19','2022-11-24 08:59:19');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `backendmenu_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backendmenu_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backendmenu_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `position` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `backendmenu_users` WRITE;
/*!40000 ALTER TABLE `backendmenu_users` DISABLE KEYS */;
INSERT INTO `backendmenu_users` VALUES (1,1,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(2,2,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(3,3,1,2,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(4,4,1,3,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(5,5,1,2,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(6,6,1,5,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(7,7,1,5,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(8,8,1,5,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(9,9,1,5,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(10,10,1,5,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(11,11,1,5,6,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(12,12,1,5,7,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(13,13,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(14,14,1,13,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(15,15,1,14,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(16,16,1,14,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(17,17,1,14,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(18,18,1,14,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(19,19,1,14,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(20,20,1,14,6,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(21,21,1,14,7,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(22,22,1,14,8,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(23,23,1,14,9,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(24,24,1,14,10,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(25,25,1,14,11,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(26,26,1,14,12,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(27,27,1,14,13,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(28,28,1,13,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(29,29,1,28,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(30,30,1,28,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(31,31,1,28,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(32,32,1,28,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(33,33,1,28,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(34,34,1,28,6,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(35,35,1,28,7,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(36,36,1,13,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(37,37,1,36,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(38,38,1,13,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(39,39,1,38,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(40,40,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(41,41,1,40,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(42,42,1,41,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(43,43,1,41,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(44,44,1,41,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(45,45,1,41,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(46,46,1,41,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(47,47,1,40,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(48,48,1,47,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(49,49,1,47,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(50,50,1,47,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(51,51,1,47,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(52,52,1,47,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(53,53,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(54,54,1,53,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(55,55,1,54,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(56,56,1,54,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(57,57,1,54,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(58,58,1,54,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(59,59,1,54,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(60,60,1,54,6,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(61,61,1,54,7,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(62,62,1,54,8,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(63,63,1,53,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(64,64,1,63,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(65,65,1,63,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(66,66,1,63,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(67,67,1,53,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(68,68,1,67,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(69,69,1,67,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(70,70,1,67,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(71,71,1,67,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(72,72,1,67,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(73,73,1,53,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(74,74,1,73,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(75,75,1,73,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(76,76,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(77,77,1,76,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(78,78,1,77,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(79,79,1,77,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(80,80,1,77,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(81,81,1,77,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(82,82,1,77,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(83,83,1,77,6,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(84,84,1,77,7,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(85,85,1,77,8,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(86,86,1,76,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(87,87,1,86,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(88,88,1,NULL,0,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(89,89,1,88,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(90,90,1,89,1,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(91,91,1,89,2,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(92,92,1,89,3,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(93,93,1,89,4,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(94,94,1,89,5,1,'2022-11-23 17:56:36','2022-11-23 17:56:36'),(95,95,1,89,6,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(96,96,1,89,7,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(97,97,1,88,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(98,98,1,97,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(99,99,1,97,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(100,100,1,97,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(101,101,1,97,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(102,102,1,NULL,0,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(103,103,1,102,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(104,104,1,103,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(105,105,1,103,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(106,106,1,102,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(107,107,1,106,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(108,108,1,102,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(109,109,1,108,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(110,110,1,108,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(111,111,1,108,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(112,112,1,108,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(113,113,1,108,5,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(114,114,1,108,6,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(115,115,1,108,7,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(116,116,1,108,8,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(117,117,1,108,9,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(118,118,1,108,10,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(119,119,1,108,11,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(120,120,1,108,12,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(121,121,1,102,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(122,122,1,121,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(123,123,1,121,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(124,124,1,121,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(125,125,1,121,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(126,126,1,121,5,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(127,127,1,102,5,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(128,128,1,127,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(129,129,1,127,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(130,130,1,102,6,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(131,131,1,130,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(132,132,1,NULL,0,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(133,133,1,132,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(134,134,1,133,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(135,135,1,133,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(136,136,1,133,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(137,137,1,133,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(138,138,1,133,5,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(139,139,1,133,6,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(140,140,1,133,7,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(141,141,1,133,8,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(142,142,1,133,9,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(143,143,1,133,10,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(144,144,1,133,11,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(145,145,1,133,12,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(146,146,1,133,13,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(147,147,1,133,14,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(148,148,1,133,15,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(149,149,1,133,16,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(150,150,1,132,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(151,151,1,132,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(152,152,1,132,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(153,153,1,152,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(154,154,1,152,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(155,155,1,152,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(156,156,1,152,4,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(157,157,1,156,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(158,158,1,156,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(159,159,1,156,3,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(160,160,1,132,5,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(161,161,1,160,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(162,162,1,160,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(163,163,1,132,6,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(164,164,1,132,7,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(165,165,1,1,1,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(166,166,1,132,8,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(167,167,1,28,8,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(168,168,1,133,17,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(169,169,1,3,2,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(170,170,1,14,14,1,'2022-11-23 17:56:37','2022-11-23 17:56:37'),(171,172,1,14,15,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(172,173,1,2,3,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(173,174,1,172,1,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(174,175,1,172,2,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(175,176,1,172,3,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(176,177,1,172,4,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(177,178,1,172,5,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(178,179,1,172,6,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(179,182,1,97,5,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(180,183,1,88,3,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(181,184,1,180,1,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(182,185,1,180,2,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(183,188,1,54,9,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(184,189,1,63,4,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(185,190,1,63,5,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(186,193,1,41,6,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(187,194,1,47,6,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(188,196,1,108,13,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(189,197,1,108,14,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(190,204,1,1,2,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(191,205,1,190,1,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(192,206,1,190,2,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(193,207,1,190,3,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(194,208,1,190,4,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(195,209,1,190,5,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(196,210,1,190,6,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(197,211,1,190,7,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(198,212,1,190,8,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(199,214,1,1,3,1,'2022-11-23 18:21:42','2022-11-23 18:21:42'),(200,215,1,132,9,1,'2022-11-23 18:22:08','2022-11-23 18:22:08'),(201,216,1,200,1,1,'2022-11-23 18:22:08','2022-11-23 18:22:08'),(202,1,2,NULL,0,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(203,2,2,NULL,0,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(204,40,2,NULL,0,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(205,47,2,204,1,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(206,53,2,NULL,0,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(207,63,2,206,1,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(208,67,2,206,2,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(209,68,2,208,1,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(210,69,2,208,2,1,'2022-11-24 14:36:19','2022-11-24 14:36:19'),(211,70,2,208,3,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(212,71,2,208,4,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(213,72,2,208,5,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(214,73,2,206,3,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(215,74,2,214,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(216,75,2,214,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(217,88,2,NULL,0,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(218,102,2,NULL,0,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(219,121,2,218,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(220,132,2,NULL,0,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(221,150,2,220,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(222,151,2,220,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(223,171,2,202,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(224,180,2,204,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(225,181,2,224,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(226,183,2,217,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(227,184,2,226,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(228,185,2,226,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(229,186,2,203,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(230,187,2,217,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(231,189,2,207,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(232,190,2,207,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(233,191,2,206,4,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(234,192,2,233,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(235,194,2,205,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(236,195,2,219,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(237,198,2,218,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(238,199,2,237,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(239,200,2,237,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(240,201,2,237,3,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(241,202,2,237,4,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(242,203,2,237,5,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(243,204,2,202,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(244,205,2,243,1,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(245,206,2,243,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(246,207,2,243,3,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(247,208,2,243,4,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(248,209,2,243,5,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(249,210,2,243,6,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(250,211,2,243,7,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(251,212,2,243,8,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(252,213,2,233,2,1,'2022-11-24 14:36:20','2022-11-24 14:36:20'),(253,214,2,202,3,1,'2022-11-24 14:36:20','2022-11-24 14:36:20');
/*!40000 ALTER TABLE `backendmenu_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `backendmenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backendmenus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_seller` tinyint(1) NOT NULL DEFAULT '0',
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` bigint(20) unsigned NOT NULL DEFAULT '0',
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `backendmenus` WRITE;
/*!40000 ALTER TABLE `backendmenus` DISABLE KEYS */;
INSERT INTO `backendmenus` VALUES (1,'common.dashboard','fas fa-th',NULL,NULL,1,1,NULL,1,NULL,NULL,NULL),(2,'common.user_manages',NULL,NULL,NULL,1,1,NULL,2,NULL,NULL,NULL),(3,'common.customer','fas fa-users',NULL,2,1,0,'cusotmer.list_active',1,NULL,NULL,NULL),(4,'common.all_customer','fas fa-users',NULL,3,1,0,'cusotmer.list_active',1,NULL,NULL,NULL),(5,'hr.human_resource','fas fa-users',NULL,2,1,0,'human_resource',2,NULL,NULL,NULL),(6,'hr.staff','fas fa-users',NULL,5,1,0,'staffs.index',1,NULL,NULL,NULL),(7,'hr.role','fas fa-users',NULL,5,1,0,'permission.roles.index',2,NULL,NULL,NULL),(8,'hr.department','fas fa-users',NULL,5,1,0,'departments.index',3,NULL,NULL,NULL),(9,'hr.attendance','fas fa-users',NULL,5,1,0,'attendances.index',4,NULL,NULL,NULL),(10,'hr.attendance_report','fas fa-users',NULL,5,1,0,'attendance_report.index',5,NULL,NULL,NULL),(11,'hr.event','fas fa-users',NULL,5,1,0,'events.index',6,NULL,NULL,NULL),(12,'hr.holiday_setup','fas fa-users',NULL,5,1,0,'holidays.index',7,NULL,NULL,NULL),(13,'frontendCms.frontend_cms',NULL,NULL,NULL,1,0,NULL,3,NULL,NULL,NULL),(14,'frontendCms.frontend_cms','ti-eye',NULL,13,1,0,'frontend_cms',1,NULL,NULL,NULL),(15,'frontendCms.home_page','ti-home',NULL,14,1,0,'frontendcms.widget.index',1,NULL,NULL,NULL),(16,'frontendCms.features','ti-eye',NULL,14,1,0,'frontendcms.features.index',2,NULL,NULL,NULL),(17,'frontendCms.return_exchange','ti-eye',NULL,14,1,0,'frontendcms.return-exchange.index',3,NULL,NULL,NULL),(18,'frontendCms.contact_content','ti-eye',NULL,14,1,0,'frontendcms.contact-content.index',4,NULL,NULL,NULL),(19,'frontendCms.dynamic_pages','ti-eye',NULL,14,1,0,'frontendcms.dynamic-page.index',5,NULL,NULL,NULL),(20,'frontendCms.footer_setting','ti-eye',NULL,14,1,0,'footerSetting.footer.index',6,NULL,NULL,NULL),(21,'frontendCms.subscription','ti-eye',NULL,14,1,0,'frontendcms.subscribe-content.index',7,NULL,NULL,NULL),(22,'frontendCms.popup_content','ti-eye',NULL,14,1,0,'frontendcms.popup-content.index',8,NULL,NULL,NULL),(23,'frontendCms.promotion_bar','ti-eye',NULL,14,1,0,'frontendcms.promotionbar.index',9,NULL,NULL,NULL),(24,'frontendCms.ads_bar','ti-eye',NULL,14,1,0,'frontendcms.ads_bar.index',10,NULL,NULL,NULL),(25,'frontendCms.related_sale_setting','ti-eye',NULL,14,1,0,'frontendcms.title_index',11,NULL,NULL,NULL),(26,'frontendCms.about_us','ti-eye',NULL,14,1,0,'frontendcms.about-us.index',12,NULL,NULL,NULL),(27,'frontendCms.login_page','ti-eye',NULL,14,1,0,'frontendcms.login_page',13,NULL,NULL,NULL),(28,'appearance.appearance','fas fa-wrench',NULL,13,1,0,'appearance',2,NULL,NULL,NULL),(29,'appearance.themes','ti-panel',NULL,28,1,0,'appearance.themes.index',1,NULL,NULL,NULL),(30,'appearance.Color scheme','fas fa-wrench',NULL,28,1,0,'appearance.themeColor.index',2,NULL,NULL,NULL),(31,'appearance.menu','fas fa-wrench',NULL,28,1,0,'menu.manage',3,NULL,NULL,NULL),(32,'appearance.header','fas fa-wrench',NULL,28,1,0,'appearance.header.index',4,NULL,NULL,NULL),(33,'setup.dashboard_setup','fas fa-wrench',NULL,28,1,0,'appearance.dashoboard.index',5,NULL,NULL,NULL),(34,'appearance.Dashboard color','fas fa-wrench',NULL,28,1,0,'appearance.color.index',6,NULL,NULL,NULL),(35,'general_settings.preloader_setting','fas fa-wrench',NULL,28,1,0,'appearance.pre-loader',7,NULL,NULL,NULL),(36,'page-builder.Page Builder','fas fa-cogs',NULL,13,1,0,'page_builder',3,NULL,NULL,NULL),(37,'page-builder.Pages','fas fa-cogs',NULL,36,1,0,'page_builder.pages.index',1,NULL,NULL,NULL),(38,'formBuilder.form_builder','fas fa-cogs',NULL,13,1,0,'form_builder',4,NULL,NULL,NULL),(39,'formBuilder.forms','fas fa-cogs',NULL,38,1,0,'form_builder.forms.index',1,NULL,NULL,NULL),(40,'order.order_manages',NULL,NULL,NULL,1,1,NULL,4,NULL,NULL,NULL),(41,'order.order_manage','fas fa-shopping-cart',NULL,40,1,0,'order_manage',1,NULL,NULL,NULL),(42,'order.inhouse_orders','fas fa-shopping-cart',NULL,41,1,0,'admin.inhouse-order.index',1,NULL,NULL,NULL),(43,'order.total_order','fas fa-shopping-cart',NULL,41,1,0,'order_manage.total_sales_index',2,NULL,NULL,NULL),(44,'order.delivery_process','fas fa-shopping-cart',NULL,41,1,0,'order_manage.process_index',3,NULL,NULL,NULL),(45,'order.cancel_reason','fas fa-shopping-cart',NULL,41,1,0,'order_manage.cancel_reason_index',4,NULL,NULL,NULL),(46,'order.Track order setting','fas fa-shopping-cart',NULL,41,1,0,'track_order_configuration',5,NULL,NULL,NULL),(47,'refund.refund_manage','fas fa-shopping-cart',NULL,40,1,1,'refund_manage',2,NULL,NULL,NULL),(48,'refund.pending_refund_requests','fas fa-shopping-cart',NULL,47,1,0,'refund.total_refund_list',1,NULL,NULL,NULL),(49,'refund.confirmed_refund_requests','fas fa-shopping-cart',NULL,47,1,0,'refund.confirmed_refund_requests',2,NULL,NULL,NULL),(50,'refund.reasons','fas fa-shopping-cart',NULL,47,1,0,'refund.reasons_list',3,NULL,NULL,NULL),(51,'refund.refund_process','fas fa-shopping-cart',NULL,47,1,0,'refund.process_index',4,NULL,NULL,NULL),(52,'refund.Refund setting','fas fa-wrench',NULL,47,1,0,'refund.config',5,NULL,NULL,NULL),(53,'product.product_manage',NULL,NULL,NULL,1,1,NULL,5,NULL,NULL,NULL),(54,'product.products','fa fa-product-hunt',NULL,53,1,0,'product_module',1,NULL,NULL,NULL),(55,'product.category','fa fa-product-hunt',NULL,54,1,0,'product.category.index',1,NULL,NULL,NULL),(56,'product.brand','fa fa-product-hunt',NULL,54,1,0,'product.brands.index',2,NULL,NULL,NULL),(57,'product.attribute','fa fa-product-hunt',NULL,54,1,0,'product.attribute.index',3,NULL,NULL,NULL),(58,'product.units','fa fa-product-hunt',NULL,54,1,0,'product.units.index',4,NULL,NULL,NULL),(59,'product.add_new_product','fa fa-product-hunt',NULL,54,1,0,'product.create',5,NULL,NULL,NULL),(60,'product.product_list','fa fa-product-hunt',NULL,54,1,0,'product.index',6,NULL,NULL,NULL),(61,'product.bulk_product_upload','fa fa-product-hunt',NULL,54,1,0,'product.bulk_product_upload_page',7,NULL,NULL,NULL),(62,'product.recent_view_config','fa fa-product-hunt',NULL,54,1,0,'product.recent_view_product_config',8,NULL,NULL,NULL),(63,'review.review','fas fa-user',NULL,53,1,1,'review_module',2,NULL,NULL,NULL),(64,'review.product_review','fa fa-product-hunt',NULL,63,1,0,'review.product.index',1,NULL,NULL,NULL),(65,'review.company_review','fas fa-user',NULL,63,1,0,'review.seller.index',2,NULL,NULL,NULL),(66,'review.Review setting','fas fa-wrench',NULL,63,1,0,'review.review_configuration',3,NULL,NULL,NULL),(67,'shipping.shipping','ti-truck',NULL,53,1,1,'shipping_methods',3,NULL,NULL,NULL),(68,'shipping.carriers','ti-truck',NULL,67,1,1,'shipping.carriers.index',1,NULL,NULL,NULL),(69,'shipping.shipping_rates','ti-truck',NULL,67,1,1,'shipping_methods.index',2,NULL,NULL,NULL),(70,'shipping.pickup_locations','ti-truck',NULL,67,1,1,'shipping.pickup_locations.index',3,NULL,NULL,NULL),(71,'shipping.shipping_orders','ti-truck',NULL,67,1,1,'shipping.pending_orders.index',4,NULL,NULL,NULL),(72,'shipping.Shipping Setting','fas fa-wrench',NULL,67,1,1,'shipping.configuration.index',5,NULL,NULL,NULL),(73,'common.media_manager','ti-image',NULL,53,1,1,'media-manager',4,NULL,NULL,NULL),(74,'common.all_upload_files','ti-image',NULL,73,1,1,'media-manager.upload_files',1,NULL,NULL,NULL),(75,'common.new_upload','ti-image',NULL,73,1,1,'media-manager.new-upload',2,NULL,NULL,NULL),(76,'common.promotional',NULL,NULL,NULL,1,0,NULL,6,NULL,NULL,NULL),(77,'marketing.marketing','fas fa-user',NULL,76,1,0,'marketing_module',1,NULL,NULL,NULL),(78,'marketing.flash_deals',NULL,NULL,77,1,0,'marketing.flash-deals',1,NULL,NULL,NULL),(79,'marketing.coupons',NULL,NULL,77,1,0,'marketing.coupon',2,NULL,NULL,NULL),(80,'marketing.new_user_zone',NULL,NULL,77,1,0,'marketing.new-user-zone',3,NULL,NULL,NULL),(81,'marketing.news_letters',NULL,NULL,77,1,0,'marketing.news-letter',4,NULL,NULL,NULL),(82,'marketing.bulk_sms',NULL,NULL,77,1,0,'marketing.bulk-sms',5,NULL,NULL,NULL),(83,'marketing.subscribers',NULL,NULL,77,1,0,'marketing.subscriber',6,NULL,NULL,NULL),(84,'marketing.referral_code_setup',NULL,NULL,77,1,0,'marketing.referral-code',7,NULL,NULL,NULL),(85,'marketing.marketing setting',NULL,NULL,77,1,0,'marketing.configuration',8,NULL,NULL,NULL),(86,'common.gift_card','fas fa-gift',NULL,76,1,0,'gift_card_manage',2,NULL,NULL,NULL),(87,'common.gift_card_list',NULL,NULL,86,1,0,'admin.giftcard.index',1,NULL,NULL,NULL),(88,'common.finance',NULL,NULL,NULL,1,1,NULL,7,NULL,NULL,NULL),(89,'account.Account','fas fa-comment-dollar',NULL,88,1,0,'account_module',1,NULL,NULL,NULL),(90,'account.Chart Of Accounts',NULL,NULL,89,1,0,'account.chart-of-accounts.index',1,NULL,NULL,NULL),(91,'account.Bank Accounts',NULL,NULL,89,1,0,'account.bank-accounts.index',2,NULL,NULL,NULL),(92,'list.Income',NULL,NULL,89,1,0,'account.incomes.index',3,NULL,NULL,NULL),(93,'account.Expenses',NULL,NULL,89,1,0,'account.expenses.index',4,NULL,NULL,NULL),(94,'account.Profit',NULL,NULL,89,1,0,'account.profit',5,NULL,NULL,NULL),(95,'account.Transaction',NULL,NULL,89,1,0,'account.transaction',6,NULL,NULL,NULL),(96,'account.Statement',NULL,NULL,89,1,0,'account.statement',7,NULL,NULL,NULL),(97,'wallet.wallet_manage','fas fa-wallet',NULL,88,1,0,'wallet_manage',2,NULL,NULL,NULL),(98,'wallet.online_recharge',NULL,NULL,97,1,0,'wallet_recharge.index',1,NULL,NULL,NULL),(99,'wallet.bank_recharge',NULL,NULL,97,1,0,'bank_recharge.index',2,NULL,NULL,NULL),(100,'wallet.offline_recharge',NULL,NULL,97,1,0,'wallet_recharge.offline_index',3,NULL,NULL,NULL),(101,'wallet.Wallet setting',NULL,NULL,97,1,0,'wallet.wallet_configuration',4,NULL,NULL,NULL),(102,'common.content',NULL,NULL,NULL,1,1,NULL,8,NULL,NULL,NULL),(103,'blog.blog','fas fa-users',NULL,102,1,0,'blog_module',1,NULL,NULL,NULL),(104,'blog.Blog posts',NULL,NULL,103,1,0,'blog.posts.index',1,NULL,NULL,NULL),(105,'blog.blog_category',NULL,NULL,103,1,0,'blog.categories.index',2,NULL,NULL,NULL),(106,'contactRequest.contact_request','fas fa-user',NULL,102,1,0,'contact_request',2,NULL,NULL,NULL),(107,'contactRequest.contact_mail',NULL,NULL,106,1,0,'contactrequest.contact.index',1,NULL,NULL,NULL),(108,'report.admin_reports','ti-agenda',NULL,102,1,0,'admin_report',3,NULL,NULL,NULL),(109,'report.Keywords search',NULL,NULL,108,1,0,'report.user_searches',1,NULL,NULL,NULL),(110,'report.visitor',NULL,NULL,108,1,0,'report.visitor_report',2,NULL,NULL,NULL),(111,'report.inhouse_product_sale',NULL,NULL,108,1,0,'report.inhouse_product_sale',3,NULL,NULL,NULL),(112,'report.product_stock',NULL,NULL,108,1,0,'report.product_stock',4,NULL,NULL,NULL),(113,'defaultTheme.wishlist',NULL,NULL,108,1,0,'report.wishlist',5,NULL,NULL,NULL),(114,'report.wallet_recharge_history',NULL,NULL,108,1,0,'report.wallet_recharge_history',6,NULL,NULL,NULL),(115,'dashboard.top_customers',NULL,NULL,108,1,0,'report.top_customer',7,NULL,NULL,NULL),(116,'report.top_selling_item',NULL,NULL,108,1,0,'report.top_selling_item',8,NULL,NULL,NULL),(117,'common.order',NULL,NULL,108,1,0,'report.order',9,NULL,NULL,NULL),(118,'common.payment',NULL,NULL,108,1,0,'report.payment',10,NULL,NULL,NULL),(119,'review.Product review',NULL,NULL,108,1,0,'report.product_review',11,NULL,NULL,NULL),(120,'review.company_review',NULL,NULL,108,1,0,'report.seller_review',12,NULL,NULL,NULL),(121,'ticket.support_ticket','fas fa-wrench',NULL,102,1,1,'support_tickets',4,NULL,NULL,NULL),(122,'ticket.support_ticket',NULL,NULL,121,1,0,'ticket.tickets.index',1,NULL,NULL,NULL),(123,'common.category',NULL,NULL,121,1,0,'ticket.category.index',2,NULL,NULL,NULL),(124,'ticket.priority',NULL,NULL,121,1,0,'ticket.priority.index',3,NULL,NULL,NULL),(125,'common.status',NULL,NULL,121,1,0,'ticket.status.index',4,NULL,NULL,NULL),(126,'ticket.my_tickets',NULL,NULL,121,1,0,'ticket.my_ticket',5,NULL,NULL,NULL),(127,'common.all_activity_logs','fas fa-clock-o',NULL,102,1,0,'activity_logs',5,NULL,NULL,NULL),(128,'common.activity_logs',NULL,NULL,127,1,0,'activity_log',1,NULL,NULL,NULL),(129,'common.login_activity',NULL,NULL,127,1,0,'activity_log.login',2,NULL,NULL,NULL),(130,'common.visitors_setup','fas fa-wrench',NULL,102,1,0,'visitors_setup',6,NULL,NULL,NULL),(131,'common.ignore_ip',NULL,NULL,130,1,0,'ignore_ip_list',1,NULL,NULL,NULL),(132,'common.system',NULL,NULL,NULL,1,1,NULL,9,NULL,NULL,NULL),(133,'general_settings.system_settings','fas fa-cog',NULL,132,1,0,'system_settings',1,NULL,NULL,NULL),(134,'general_settings.general_settings',NULL,NULL,133,1,0,'generalsetting.index',1,NULL,NULL,NULL),(135,'general_settings.Email Template',NULL,NULL,133,1,0,'email_templates.index',2,NULL,NULL,NULL),(136,'general_settings.sms_template',NULL,NULL,133,1,0,'sms_templates.index',3,NULL,NULL,NULL),(137,'general_settings.company_information',NULL,NULL,133,1,0,'generalsetting.company_index',4,NULL,NULL,NULL),(138,'general_settings.email_settings',NULL,NULL,133,1,0,'generalsetting.smtp_index',5,NULL,NULL,NULL),(139,'general_settings.sms_settings',NULL,NULL,133,1,0,'generalsetting.sms_index',6,NULL,NULL,NULL),(140,'setup.google_maps_api',NULL,NULL,133,1,0,'setup.maps.index',7,NULL,NULL,NULL),(141,'setup.google_recaptcha',NULL,NULL,133,1,0,'setup.recaptcha.index',8,NULL,NULL,NULL),(142,'setup.analytics',NULL,NULL,133,1,0,'setup.analytics.index',9,NULL,NULL,NULL),(143,'general_settings.activation',NULL,NULL,133,1,0,'generalsetting.activation_index',10,NULL,NULL,NULL),(144,'general_settings.Notification setting',NULL,NULL,133,1,0,'notificationsetting.index',11,NULL,NULL,NULL),(145,'general_settings.social_configuration',NULL,NULL,133,1,0,'generalsetting.social_login_configuration',12,NULL,NULL,NULL),(146,'general_settings.maintenance',NULL,NULL,133,1,0,'maintenance.index',13,NULL,NULL,NULL),(147,'general_settings.about_update',NULL,NULL,133,1,0,'generalsetting.updatesystem',14,NULL,NULL,NULL),(148,'general_settings.Module manager',NULL,NULL,133,1,0,'modulemanager.index',15,NULL,NULL,NULL),(149,'general_settings.homepage_seo_setup',NULL,NULL,133,1,0,'generalsetting.seo-setup',16,NULL,NULL,NULL),(150,'common.sidebar_manager','fas fa-bars',NULL,132,1,1,'sidebar-manager.index',2,NULL,NULL,NULL),(151,'general_settings.Payment Gateways','far fa-money-bill-alt',NULL,132,1,1,'payment_gateway.index',3,NULL,NULL,'2022-11-23 17:55:37'),(152,'setup.setup','fas fa-wrench',NULL,132,1,0,'setup_module',4,NULL,NULL,NULL),(153,'language.Language Settings',NULL,NULL,152,1,0,'languages.index',1,NULL,NULL,NULL),(154,'general_settings.currency_list',NULL,NULL,152,1,0,'currencies.index',2,NULL,NULL,NULL),(155,'common.tag',NULL,NULL,152,1,0,'tags.index',3,NULL,NULL,NULL),(156,'setup.location',NULL,NULL,152,1,0,'location_manage',4,NULL,NULL,NULL),(157,'common.country',NULL,NULL,156,1,0,'setup.country.index',1,NULL,NULL,NULL),(158,'common.state',NULL,NULL,156,1,0,'setup.state.index',2,NULL,NULL,NULL),(159,'common.city',NULL,NULL,156,1,0,'setup.city.index',3,NULL,NULL,NULL),(160,'gst.gst_setup','fas fa-wrench',NULL,132,1,0,'gst_setup',5,NULL,NULL,NULL),(161,'gst.gst_list',NULL,NULL,160,1,0,'gst_tax.index',1,NULL,NULL,NULL),(162,'gst.GST setting',NULL,NULL,160,1,0,'gst_tax.configuration_index',2,NULL,NULL,NULL),(163,'general_settings.backup','fas fa-file-download',NULL,132,1,0,'backup.index',6,NULL,NULL,NULL),(164,'utilities.utilities','ti-lock',NULL,132,1,0,'utilities.index',7,NULL,NULL,NULL),(165,'common.dashboard','fas fa-th',NULL,1,1,0,'admin.dashboard',1,NULL,NULL,NULL),(166,'general_settings.file_storage','ti-file',NULL,132,1,0,'file-storage.index',2,NULL,NULL,NULL),(167,'appearance.Custom asset','fa fa-product-hunt',NULL,28,1,0,'appearance.custom-asset',7,NULL,'2022-11-23 17:55:36','2022-11-23 17:55:36'),(168,'general_settings.Push Notification Setup','fas fa-cog',NULL,133,1,0,'admin.push.notification',99999,NULL,'2022-11-23 17:55:36','2022-11-23 17:55:36'),(169,'common.bulk_customer_upload','fas fa-users',NULL,3,1,0,'admin.customer.bulk_upload',2,NULL,'2022-11-23 17:55:36','2022-11-23 17:55:36'),(170,'Social Link','ti-eye',NULL,14,1,0,'frontendcms.socialLink',13,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(171,'common.dashboard','fas fa-th',NULL,1,0,1,'seller.dashboard',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(172,'frontendCms.merchant_content','fas fa-user',NULL,14,1,0,'frontendcms.merchant-content.index',4,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(173,'seller.manage_seller','fas fa-user',NULL,2,1,0,'manage_seller',4,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(174,'seller.seller_list',NULL,NULL,173,1,0,'admin.merchants_list',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(175,'seller.Request/Inactive seller list',NULL,NULL,173,1,0,'admin.inactiveMerchants',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(176,'seller.commision_setup',NULL,NULL,173,1,0,'admin.seller_commission_index',3,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(177,'frontendCms.pricing_plan',NULL,NULL,173,1,0,'admin.pricing.index',4,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(178,'seller.subscription_payment',NULL,NULL,173,1,0,'admin.subscription_payment_list',5,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(179,'seller.Seller setting',NULL,NULL,173,1,0,'admin.seller_configuration',6,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(180,'seller.Seller Order Manage','fas fa-shopping-cart',NULL,40,0,1,'seller_order_manage',30,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(181,'order.my_order','fas fa-shopping-cart',NULL,180,0,1,'order_manage.my_sales_index',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(182,'wallet.withdraw_requests','fas fa-wallet',NULL,97,1,0,'wallet.withdraw_requests',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(183,'wallet.my_wallet','fas fa-wallet',NULL,88,1,1,'my_wallet',10,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(184,'common.transactions','fas fa-wallet',NULL,183,1,1,'my-wallet.index',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(185,'wallet.withdraw','fas fa-wallet',NULL,183,1,1,'my-wallet.withdraw_index',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(186,'seller.my_staff','fas fa-user',NULL,2,0,1,'seller.sub_seller.index',10,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(187,'common.subscription_payment','fas fa-wallet',NULL,88,0,1,'seller.my_subscription_payment_list',11,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(188,'product.inhouse_product_list','fas fa-money-bill',NULL,54,1,0,'admin.my-product.index',5,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(189,'review.my_product_review','fa fa-product-hunt',NULL,63,1,1,'seller.product-reviews.index',5,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(190,'review.my_review','fas fa-user',NULL,63,1,1,'seller.my-reviews.index',6,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(191,'product.products','fa fa-product-hunt',NULL,53,0,1,'seller_product_module',10,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(192,'product.my_product_list','fa fa-product-hunt',NULL,191,0,1,'seller.product.index',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(193,'order.my_order','fas fa-shopping-cart',NULL,41,1,0,'order_manage.my_sales_index',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(194,'refund.my_refund_requests','fas fa-shopping-cart',NULL,47,1,1,'refund.my_refund_list',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(195,'ticket.my_tickets','ti-headphone-alt',NULL,121,0,1,'seller.support-ticket.index',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(196,'report.seller_wise_sales','ti-agenda',NULL,108,1,0,'report.seller_wise_sales',10,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(197,'dashboard.top_sellers','ti-agenda',NULL,108,1,0,'report.top_seller',11,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(198,'report.my_reports','ti-agenda',NULL,102,0,1,'seller_report',32,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(199,'common.product','ti-agenda',NULL,198,0,1,'seller_report.product',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(200,'dashboard.top_customers','ti-agenda',NULL,198,0,1,'seller_report.top_customer',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(201,'report.top_selling_item','ti-agenda',NULL,198,0,1,'seller_report.top_selling_item',3,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(202,'common.order','ti-agenda',NULL,198,0,1,'seller_report.order',4,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(203,'review.review','ti-agenda',NULL,198,0,1,'seller_report.review',5,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(204,'Customer Panel','fas fa-th',NULL,1,1,1,'customer_panel',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(205,'My Purchase Orders','fas fa-shopping-cart',NULL,204,1,1,'frontend.my_purchase_order_list',1,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(206,'My Giftcards','ti-gift',NULL,204,1,1,'frontend.purchased-gift-card',2,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(207,'My Digital Products','ti-file',NULL,204,1,1,'frontend.digital_product',3,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(208,'My Wishlists','ti-heart',NULL,204,1,1,'frontend.my-wishlist',4,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(209,'My Refund Desputes','fas fa-shopping-cart',NULL,204,1,1,'refund.frontend.index',5,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(210,'My Coupons','ti-gift',NULL,204,1,1,'customer_panel.coupon',6,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(211,'My Profiles','fas fa-user',NULL,204,1,1,'frontend.customer_profile',7,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(212,'My Referral','fas fa-user',NULL,204,1,1,'customer_panel.referral',8,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(213,'product.bulk_product_upload','fa fa-product-hunt',NULL,191,0,1,'seller.bulk_product_upload',7,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(214,'amazy.Followers','fas fa-users',NULL,1,1,1,'seller.seller_follow',13,'MultiVendor','2022-11-23 18:21:40','2022-11-23 18:21:40'),(215,'otp.otp','ti-lock',NULL,132,1,0,'otp.configuration',12,'Otp','2022-11-23 18:22:05','2022-11-23 18:22:05'),(216,'otp.OTP setting','ti-lock',NULL,215,1,0,'opt.configuration_update',1,'Otp','2022-11-23 18:22:05','2022-11-23 18:22:05');
/*!40000 ALTER TABLE `backendmenus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemable_id` bigint(20) unsigned DEFAULT NULL,
  `itemable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `benifits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benifits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `benifits` WRITE;
/*!40000 ALTER TABLE `benifits` DISABLE KEYS */;
INSERT INTO `benifits` VALUES (1,NULL,'Instant Selling Start','frontend\\default\\img\\icon\\icon_1.png','Use these effective strategies to learn how to sell your products.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Managing\r\n        Dashboard Panel','frontend\\default\\img\\icon\\icon_2.png','You can manage your dashboard panels easily.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'Secured\r\n        Payment Options','frontend\\default\\img\\icon\\icon_3.png','We have secured and easy to pay payment option.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,NULL,'Awesome\r\n        Privilege Options','frontend\\default\\img\\icon\\icon_4.png','You can get many privilege as a vendor or customer.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `benifits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` bigint(20) unsigned NOT NULL,
  `blog_post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_post_blog_category_id_foreign` (`blog_category_id`),
  KEY `blog_category_post_blog_post_id_foreign` (`blog_post_id`),
  CONSTRAINT `blog_category_post_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`),
  CONSTRAINT `blog_category_post_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_category_post` WRITE;
/*!40000 ALTER TABLE `blog_category_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_category_post` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_comment_replays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment_replays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_post_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `blog_comment_id` bigint(20) unsigned NOT NULL,
  `replay_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `replay` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_comment_replays` WRITE;
/*!40000 ALTER TABLE `blog_comment_replays` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment_replays` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_post_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `like` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_post_likes` WRITE;
/*!40000 ALTER TABLE `blog_post_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_likes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL,
  `blog_post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_tag_tag_id_foreign` (`tag_id`),
  KEY `blog_post_tag_blog_post_id_foreign` (`blog_post_id`),
  CONSTRAINT `blog_post_tag_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blog_post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_post_tag` WRITE;
/*!40000 ALTER TABLE `blog_post_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  `approved_by` bigint(20) unsigned DEFAULT NULL,
  `is_commentable` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `brand_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_category_category_id_foreign` (`category_id`),
  KEY `brand_category_brand_id_foreign` (`brand_id`),
  CONSTRAINT `brand_category_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `brand_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `brand_category` WRITE;
/*!40000 ALTER TABLE `brand_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `sort_id` bigint(20) unsigned DEFAULT NULL,
  `total_sale` bigint(20) unsigned NOT NULL DEFAULT '0',
  `avg_rating` double(8,2) NOT NULL DEFAULT '0.00',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_created_by_foreign` (`created_by`),
  KEY `brands_updated_by_foreign` (`updated_by`),
  KEY `brands_id_status_index` (`id`,`status`),
  CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Infinix','uploads/images/23-11-2022/637e21766cc59.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'infinix',NULL,NULL,'2022-11-23 15:34:46','2022-11-23 15:34:46'),(2,'Tecno','uploads/images/23-11-2022/637e21b1a6eb3.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'tecno',NULL,1,'2022-11-23 15:35:26','2022-11-23 15:35:45'),(3,'Itel','uploads/images/23-11-2022/637e21d0357ff.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'itel',NULL,NULL,'2022-11-23 15:36:16','2022-11-23 15:36:16'),(4,'Oraimo','uploads/images/23-11-2022/637e21e609675.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'oraimo',NULL,NULL,'2022-11-23 15:36:38','2022-11-23 15:36:38'),(5,'Vision Plus','uploads/images/23-11-2022/637e22160dd25.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'vision-plus',NULL,NULL,'2022-11-23 15:37:26','2022-11-23 15:37:26'),(6,'Xiaomi','uploads/images/23-11-2022/637e222db4dc2.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'xiaomi',NULL,NULL,'2022-11-23 15:37:49','2022-11-23 15:37:49'),(7,'HP','uploads/images/23-11-2022/637e22dca8797.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'hp',NULL,NULL,'2022-11-23 15:40:44','2022-11-23 15:40:44'),(8,'Dell','uploads/images/23-11-2022/637e23227f46f.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'dell',NULL,NULL,'2022-11-23 15:41:54','2022-11-23 15:41:54'),(9,'Lenovo','uploads/images/24-11-2022/637f1ef070a3a.png',NULL,NULL,1,1,NULL,NULL,NULL,0,0.00,'lenovo',NULL,NULL,'2022-11-24 09:36:16','2022-11-24 09:36:16');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bulk_s_m_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulk_s_m_s` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `send_type` int(10) unsigned NOT NULL,
  `send_user_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple_role_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_role_id` tinyint(3) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `is_send` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bulk_s_m_s` WRITE;
/*!40000 ALTER TABLE `bulk_s_m_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulk_s_m_s` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` mediumint(9) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` VALUES (1,'verification and notifications','email_verification',0,'2022-11-23 05:55:28',NULL),(2,'verification and notifications','sms_verification',0,'2022-11-23 05:55:28',NULL),(3,'verification and notifications','mail_notification',0,'2022-11-23 05:55:28',NULL),(4,'verification and notifications','system_notification',0,'2022-11-23 05:55:28',NULL),(5,'sms_gateways','Twillo',0,'2022-11-23 05:55:28',NULL),(6,'sms_gateways','TextLocal',0,'2022-11-23 05:55:28',NULL),(7,'vendor_configuration','Multi-Vendor System Activate',1,'2022-11-23 05:55:28','2022-11-23 18:21:39'),(8,'refund_config','refund_status',0,'2022-11-23 05:55:28',NULL),(9,'refund_config','refund_times',1,'2022-11-23 05:55:28',NULL),(10,'voucher','payroll_voucher_approval',0,'2022-11-23 05:55:28',NULL),(11,'analytics_tool','google_analytics',0,'2022-11-23 05:55:28',NULL),(12,'analytics_tool','facebook_pixel',0,'2022-11-23 05:55:28',NULL),(13,'sms_gateways','OtherSmsGateway',0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(14,'file_storage','Local',1,'2022-11-23 17:55:33','2022-11-23 17:55:33'),(15,'sms_gateways','MsegatSMS',0,'2022-11-23 17:55:36','2022-11-23 17:55:36');
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cancel_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancel_reasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cancel_reasons` WRITE;
/*!40000 ALTER TABLE `cancel_reasons` DISABLE KEYS */;
INSERT INTO `cancel_reasons` VALUES (1,'Personal issue','I have some personal issue.','2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'High price','Product price is very high.','2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'Delivery date change','I want to cancel my order for changing delivery date.','2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'Delivery place change','I want to cancel my order for changing delivery place.','2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `cancel_reasons` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,NULL,'Career','initail slug','Build up your career with us.',1,'content','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carriers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manual',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `carriers` WRITE;
/*!40000 ALTER TABLE `carriers` DISABLE KEYS */;
INSERT INTO `carriers` VALUES (1,'Manual',NULL,'Manual','Manual',NULL,1,1,NULL,NULL),(2,'Manual',NULL,'Manual','Manual',NULL,1,2,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `carriers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `product_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(10) unsigned NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_select` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_method_id` bigint(20) unsigned DEFAULT NULL,
  `is_updated` tinyint(1) NOT NULL DEFAULT '0',
  `is_buy_now` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_seller_id_foreign` (`seller_id`),
  CONSTRAINT `carts_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,2,NULL,1,'product',2,1,25000,25000,NULL,1,0,0,0,'2022-11-24 14:41:09','2022-11-24 14:41:09'),(2,3,NULL,1,'product',3,1,1080,1080,NULL,1,0,0,0,'2022-11-24 15:38:39','2022-11-24 15:38:39');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `depth_level` int(10) unsigned NOT NULL DEFAULT '1',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `total_sale` bigint(20) unsigned NOT NULL DEFAULT '0',
  `avg_rating` double(8,2) NOT NULL DEFAULT '0.00',
  `commission_rate` double(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_id_parent_id_status_index` (`id`,`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Phones & Tablets','phones--tablets',0,1,NULL,1,1,0,0.00,0.00,'2022-11-24 08:25:49','2022-11-24 08:25:49'),(2,'Consumer Electronics','consumer-electronics',1,2,NULL,1,1,0,0.00,0.00,'2022-11-24 08:27:16','2022-11-24 08:30:22'),(3,'Earphone','earphone',2,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:30:50','2022-11-24 08:30:50'),(4,'Headphones','headphones',2,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:31:17','2022-11-24 08:31:17'),(5,'Smart Watches','smart-watches',2,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:32:01','2022-11-24 08:32:01'),(6,'VR Glasses','vr-glasses',2,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:32:53','2022-11-24 08:32:53'),(7,'Mobile Phones','mobile-phones',1,2,NULL,1,1,0,0.00,0.00,'2022-11-24 08:35:05','2022-11-24 08:35:05'),(8,'Smartphones','smartphones',7,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:47:10','2022-11-24 08:47:10'),(9,'Computing','computing',0,1,NULL,1,1,0,0.00,0.00,'2022-11-24 08:48:40','2022-11-24 08:48:40'),(10,'Computers','computers',9,2,NULL,1,1,0,0.00,0.00,'2022-11-24 08:48:57','2022-11-24 08:48:57'),(11,'Laptops','laptops',10,3,NULL,1,1,0,0.00,0.00,'2022-11-24 08:49:29','2022-11-24 08:49:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `category_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_images_category_id_foreign` (`category_id`),
  CONSTRAINT `category_images_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `category_images` WRITE;
/*!40000 ALTER TABLE `category_images` DISABLE KEYS */;
INSERT INTO `category_images` VALUES (1,11,'uploads/images/24-11-2022/637f24e547d52.jpeg','2022-11-24 10:01:41','2022-11-24 10:01:41'),(2,3,'uploads/images/24-11-2022/637f286403988.jpeg','2022-11-24 10:16:36','2022-11-24 10:16:36');
/*!40000 ALTER TABLE `category_images` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_category_id_product_id_index` (`category_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,11,1,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(2,11,2,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(3,3,3,'2022-11-24 10:13:44','2022-11-24 10:13:44');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `chart_of_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` bigint(20) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `morphable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `morphable_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `chart_of_accounts` WRITE;
/*!40000 ALTER TABLE `chart_of_accounts` DISABLE KEYS */;
INSERT INTO `chart_of_accounts` VALUES (1,'income-1','Income','Income','Main Income',0,'this is for main income from system',0,NULL,NULL,1,NULL,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'income-2','Income','Seller Account','Main Seller Account',0,'This is for seller account',0,NULL,NULL,1,NULL,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'Income-3','Income','Product Wise Tax Account','Product TAX',0,'This is for product tax',0,NULL,NULL,1,NULL,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'liability-1','Liability','GST Tax Account','GST TAX',0,'This is for GST',0,NULL,NULL,1,NULL,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,'income-4','Income','Seller Commision','Seller Commision',0,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `chart_of_accounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (0,'A.S.K. Showground/Wanye',4151,1,'2022-11-23 00:22:47','2022-11-24 10:34:54'),(0,'Adams Arcade / Dagoretti Corner',4151,1,'2022-11-24 10:36:18','2022-11-24 10:36:18'),(0,'Bahati / Marish / Viwandani / Jeri',4151,1,'2022-11-24 10:37:33','2022-11-24 10:37:33'),(0,'Buruburu / Hamza / Harambee',4151,1,'2022-11-24 10:38:11','2022-11-24 10:38:11'),(0,'CBD - GPO/City Market/Nation Centre',4151,1,'2022-11-24 10:38:33','2022-11-24 10:38:33'),(0,'CBD - KICC/Parliament/Kencom',4151,1,'2022-11-24 10:39:18','2022-11-24 10:39:18'),(0,'CBD - Luthuli/Afya Centre/ R. Ngala',4151,1,'2022-11-24 10:39:41','2022-11-24 10:39:41'),(0,'CBD - UON/Globe/Koja/River Road',4151,1,'2022-11-24 10:40:23','2022-11-24 10:40:23'),(0,'Dagoretti South - Ngand\'o/Riruta',4151,1,'2022-11-24 10:40:47','2022-11-24 10:40:47'),(0,'Donholm/Greenfields/Kayole/Nasra',4151,1,'2022-11-24 10:41:47','2022-11-24 10:41:47'),(0,'Embakasi - Fedha',4151,1,'2022-11-24 10:42:48','2022-11-24 10:42:48'),(0,'Embakasi East - Utawala/mihango/GSU',4151,1,'2022-11-24 10:43:17','2022-11-24 10:43:17'),(0,'Embakasi East-Pipeline/Transami/Airport North Rd',4151,1,'2022-11-24 10:43:35','2022-11-24 10:43:35'),(0,'Embakasi North - Dandora / Kariobangi North',4151,1,'2022-11-24 10:43:53','2022-11-24 10:43:53'),(0,'Embakasi South - Bunyala Road / South B',4151,1,'2022-11-24 10:44:12','2022-11-24 10:44:12'),(0,'Embakasi South - Landimawe',4151,1,'2022-11-24 10:44:29','2022-11-24 10:44:29'),(0,'Garden Estate/Thome/Marurui',4151,1,'2022-11-24 10:44:48','2022-11-24 10:44:48'),(0,'Gigiri/Runda',4151,1,'2022-11-24 10:45:12','2022-11-24 10:45:12'),(0,'Githurai/Kahawa Sukari',4151,1,'2022-11-24 10:45:29','2022-11-24 10:45:29'),(0,'Huruma / Kiamaiko / Mbatini / Ngei',4151,1,'2022-11-24 10:45:52','2022-11-24 10:45:52'),(0,'Imara Daima/AA/Maziwa/Kwa Njenga',4151,1,'2022-11-24 10:46:10','2022-11-24 10:46:10'),(0,'Kahawa Wendani/ Kenyatta University',4151,1,'2022-11-24 10:46:32','2022-11-24 10:46:32'),(0,'Kahawa west/Githurai 44',4151,1,'2022-11-24 10:49:08','2022-11-24 10:49:08'),(0,'Kamukunji - California / Eastleigh',4151,1,'2022-11-24 10:50:05','2022-11-24 10:50:05'),(0,'Karen',4151,1,'2022-11-24 10:50:25','2022-11-24 10:50:25'),(0,'Kariobangi South/Dandora/Airbase',4151,1,'2022-11-24 10:50:47','2022-11-24 10:50:47'),(0,'Kasarani - Clay City / Kasarani / Mwiki',4151,1,'2022-11-24 10:51:09','2022-11-24 10:51:09'),(0,'Kibra - Jamhuri / Woodley',4151,1,'2022-11-24 10:51:50','2022-11-24 10:51:50'),(0,'Kibra - Makina / Sarangombe',4151,1,'2022-11-24 10:52:19','2022-11-24 10:52:19'),(0,'Kileleshwa / Kilimani',4151,1,'2022-11-24 10:52:58','2022-11-24 10:52:58'),(0,'komarock / Kangundo Road/Saika/Obama',4151,1,'2022-11-24 10:53:19','2022-11-24 10:53:19'),(0,'Kwa Reuben/ Kware/ Pipeline',4151,1,'2022-11-24 10:53:43','2022-11-24 10:53:43'),(0,'Laini Saba / Lindi/Makina / Sarangombe',4151,1,'2022-11-24 10:56:39','2022-11-24 10:56:39'),(0,'Langata - Dam Estate / Nyayo Highrise/Ngumo',4151,1,'2022-11-24 10:57:02','2022-11-24 10:57:02'),(0,'Langata - Nairobi West / South C',4151,1,'2022-11-24 10:57:24','2022-11-24 10:57:24'),(0,'Langata - Otiende / Southlands / St Mary\'s',4151,1,'2022-11-24 10:57:43','2022-11-24 10:57:43'),(0,'Lavington / Kawangware/ Gatina/Waithaka',4151,1,'2022-11-24 10:58:01','2022-11-24 10:58:01'),(0,'Lower Kabete / Kangemi/Mountain View',4151,1,'2022-11-24 10:58:20','2022-11-24 10:58:20'),(0,'Madiwa / Pumwami',4151,1,'2022-11-24 10:58:39','2022-11-24 10:58:39'),(0,'Mihango / Njiru / Chokaa / Ruai / Kamulu',4151,1,'2022-11-24 10:58:57','2022-11-24 10:58:57'),(0,'Railways/Muthurwa/ BS/ OTC',4151,1,'2022-11-24 10:59:14','2022-11-24 10:59:14'),(0,'Roysambu/Zimmerman',4151,1,'2022-11-24 10:59:31','2022-11-24 10:59:31'),(0,'Ruaraka - Babadogo/ Lucky Summer',4151,1,'2022-11-24 10:59:51','2022-11-24 10:59:51'),(0,'Ruaraka - Mathare N./Survey/Utalii',4151,1,'2022-11-24 11:00:09','2022-11-24 11:00:09'),(0,'Spring Valley/Kyuna',4151,1,'2022-11-24 11:00:27','2022-11-24 11:00:27'),(0,'Starehe - Kariokor / Ziwani',4151,1,'2022-11-24 11:00:52','2022-11-24 11:00:52'),(0,'Starehe - Ngara',4151,1,'2022-11-24 11:01:11','2022-11-24 11:01:11'),(0,'Starehe - Pangani',4151,1,'2022-11-24 11:01:32','2022-11-24 11:01:32'),(0,'Umoja/ Tena Estate/Nasra',4151,1,'2022-11-24 11:01:53','2022-11-24 11:01:53'),(0,'Upperhill - Community / KNH',4151,1,'2022-11-24 11:02:21','2022-11-24 11:02:21'),(0,'Upperhill - Kiambere Road / Mara Road/Elgon Road / Lower Hill',4151,1,'2022-11-24 11:02:38','2022-11-24 11:02:38'),(0,'Westlands - Central',4151,1,'2022-11-24 11:03:02','2022-11-24 11:03:02'),(0,'Westlands - Highridge / Parklands',4151,1,'2022-11-24 11:03:19','2022-11-24 11:03:19');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_value_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,1,'Black','2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,2,'Red','2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,3,'White','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `compares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `data_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `compares` WRITE;
/*!40000 ALTER TABLE `compares` DISABLE KEYS */;
/*!40000 ALTER TABLE `compares` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `contact_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `mainTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `contact_contents` WRITE;
/*!40000 ALTER TABLE `contact_contents` DISABLE KEYS */;
INSERT INTO `contact_contents` VALUES (1,NULL,'Contact Us','SEND US ANY QUERY THAT YOU ARE HAVING TROUBLE WITH','contact-Us','sales@pomalo.co.ke','<p>We are an industry-leading company that values honesty, integrity, and efficiency. Building quality products and caring for the users are what made us stand out since the beginning.</p>','2022-11-23 17:55:28','2022-11-23 15:59:17');
/*!40000 ALTER TABLE `contact_contents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `others` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (113,'KE','Kenya','254','/flags/flag-of-Kenya.jpg',1,NULL,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coupon_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_products_product_id_foreign` (`product_id`),
  KEY `coupon_products_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `seller_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coupon_products` WRITE;
/*!40000 ALTER TABLE `coupon_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coupon_uses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_uses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_uses_user_id_foreign` (`user_id`),
  KEY `coupon_uses_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `coupon_uses_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coupon_uses` WRITE;
/*!40000 ALTER TABLE `coupon_uses` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_uses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` tinyint(3) unsigned DEFAULT NULL,
  `minimum_shopping` double DEFAULT NULL,
  `maximum_discount` double DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `is_expire` tinyint(1) NOT NULL DEFAULT '0',
  `is_multiple_buy` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `convert_rate` double NOT NULL DEFAULT '0',
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','USD',0,0.0082,'$','2022-11-23 17:55:27','2022-11-23 18:30:19'),(2,'Kenya Shillings','KES',1,1,'KSh','2022-11-23 17:55:27','2022-11-23 18:29:36');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `custom_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_forms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_data` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `custom_forms` WRITE;
/*!40000 ALTER TABLE `custom_forms` DISABLE KEYS */;
INSERT INTO `custom_forms` VALUES (1,'Affiliate User Registration',NULL,1,NULL,NULL),(2,'Customer Registration',NULL,1,NULL,NULL),(3,'Seller Registration',NULL,1,NULL,NULL),(4,'Contact',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `custom_forms` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shipping_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_billing_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
INSERT INTO `customer_addresses` VALUES (1,3,'Ali Monday','alimonday2030@gmail.com','0712000166','George Padmore, Tetezi Towers','0','4151','113','00100',1,1,'2022-11-24 15:47:57','2022-11-24 15:47:57');
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `customer_coupon_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_coupon_stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_coupon_stores_customer_id_foreign` (`customer_id`),
  KEY `customer_coupon_stores_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `customer_coupon_stores_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customer_coupon_stores_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `customer_coupon_stores` WRITE;
/*!40000 ALTER TABLE `customer_coupon_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_coupon_stores` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `customer_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `seller_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `super_admin_read_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_notifications_customer_id_foreign` (`customer_id`),
  KEY `customer_notifications_seller_id_foreign` (`seller_id`),
  KEY `customer_notifications_order_id_foreign` (`order_id`),
  CONSTRAINT `customer_notifications_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `customer_notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `customer_notifications_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `customer_notifications` WRITE;
/*!40000 ALTER TABLE `customer_notifications` DISABLE KEYS */;
INSERT INTO `customer_notifications` VALUES (1,NULL,1,NULL,'A product has been disabled.','/products',NULL,0,0,'2022-11-24 09:07:10','2022-11-24 09:07:10'),(2,NULL,1,NULL,'A seller updated product.','#',NULL,0,0,'2022-11-24 09:19:31','2022-11-24 09:19:31'),(3,NULL,1,NULL,'A seller updated product.','#',NULL,0,0,'2022-11-24 10:23:38','2022-11-24 10:23:38'),(4,NULL,1,NULL,'A seller updated product.','#',NULL,0,0,'2022-11-24 10:27:58','2022-11-24 10:27:58'),(5,NULL,2,NULL,'Welcome to the system.','#',NULL,0,0,'2022-11-24 14:35:14','2022-11-24 14:35:14'),(6,NULL,1,NULL,'A customer has been registered.','/customer/active-customer-list',NULL,0,0,'2022-11-24 14:35:14','2022-11-24 14:35:14'),(7,NULL,3,NULL,'Welcome to the system.','#',NULL,0,0,'2022-11-24 15:36:42','2022-11-24 15:36:42'),(8,NULL,1,NULL,'A customer has been registered.','/customer/active-customer-list',NULL,0,0,'2022-11-24 15:36:42','2022-11-24 15:36:42');
/*!40000 ALTER TABLE `customer_notifications` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `dashboard_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_setup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `dashboard_setup` WRITE;
/*!40000 ALTER TABLE `dashboard_setup` DISABLE KEYS */;
INSERT INTO `dashboard_setup` VALUES (1,'total_products',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'total_sellers',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'total_customer',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'todays_visitor',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,'total_sale',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,'total_order',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(7,'pending_order',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(8,'completed_order',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(9,'total_review',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(10,'total_revenue',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(11,'active_customer',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(12,'total_subcriber',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(13,'total_product_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(14,'total_seller_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(15,'total_customer_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(16,'visitor_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(17,'total_order_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(18,'total_pending_order_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(19,'total_completed_order_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(20,'total_sale_amount_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(21,'total_review_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(22,'total_revenue_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(23,'total_active_customer_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(24,'total_subscriber_card',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(25,'product_graph',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(26,'order_summary_graph',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(27,'seller_graph',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(28,'guest_vs_registered_order_graph',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(29,'today_order_summary_graph',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(30,'top_ten_product',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(31,'top_ten_seller',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(32,'category_wise_product_qty',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(33,'category_wise_sale',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(34,'coupon_wise_sale',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(35,'new_customers',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(36,'recently_added_products',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(37,'top_refferer',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(38,'latest_order',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(39,'latest_search_keyword',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(40,'appealed_dispute',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(41,'reviews',1,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `dashboard_setup` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `date_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date_formats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned DEFAULT '1',
  `updated_by` int(10) unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `date_formats` WRITE;
/*!40000 ALTER TABLE `date_formats` DISABLE KEYS */;
INSERT INTO `date_formats` VALUES (1,'jS M, Y','17th May, 2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(2,'Y-m-d','2019-05-17',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(3,'Y-d-m','2019-17-05',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(4,'d-m-Y','17-05-2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(5,'m-d-Y','05-17-2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(6,'Y/m/d','2019/05/17',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(7,'Y/d/m','2019/17/05',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(8,'d/m/Y','17/05/2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(9,'m/d/Y','05/17/2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(10,'l jS \\of F Y','Monday 17th of May 2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(11,'jS \\of F Y','17th of May 2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(12,'g:ia \\o\\n l jS F Y','12:00am on Monday 17th May 2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(13,'F j, Y, g:i a','May 7, 2019, 6:20 pm',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(14,'F j, Y','May 17, 2019',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27'),(15,'\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y','it is the 17th day',1,1,1,'2022-11-23 05:55:27','2022-11-23 17:55:27');
/*!40000 ALTER TABLE `date_formats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `delivery_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_processes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `delivery_processes` WRITE;
/*!40000 ALTER TABLE `delivery_processes` DISABLE KEYS */;
INSERT INTO `delivery_processes` VALUES (1,'Pending','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College.','2021-02-11 03:33:37','2021-02-11 03:33:37'),(2,'Processing','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College.','2021-02-11 03:33:55','2021-02-11 03:33:55'),(3,'Shipped','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College.','2021-02-11 03:34:08','2021-02-11 03:34:08'),(4,'Recieved','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,','2021-02-11 03:34:30','2021-02-11 03:34:30'),(5,'Delivered','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,','2021-02-11 03:34:43','2021-02-11 03:35:02');
/*!40000 ALTER TABLE `delivery_processes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Sales','Sales Department',1,NULL,NULL),(2,'Marketing','Marketing Department',1,NULL,NULL),(3,'HR','HR Department',1,NULL,NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `digital_file_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_file_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `seller_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `package_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seller_product_sku_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `product_sku_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `download_limit` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `digital_file_downloads` WRITE;
/*!40000 ALTER TABLE `digital_file_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_file_downloads` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `digital_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `file_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `digital_files` WRITE;
/*!40000 ALTER TABLE `digital_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_files` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `dynamic_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `is_static` tinyint(1) NOT NULL DEFAULT '0',
  `is_page_builder` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `dynamic_pages` WRITE;
/*!40000 ALTER TABLE `dynamic_pages` DISABLE KEYS */;
INSERT INTO `dynamic_pages` VALUES (1,NULL,'About Us','about-us','initial description',1,0,1,NULL,'2022-11-23 12:55:28','2022-11-23 17:55:35'),(3,NULL,'Blog','blog','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(4,NULL,'Become A Merchant','merchant','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(5,NULL,'My Account','profile','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(6,NULL,'My Orders','my-purchase-orders','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(7,NULL,'My Cart','cart','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(8,NULL,'My Wish List','my-wishlist','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(9,NULL,'Refunds & Disputes','refund/my-refund-list','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(10,NULL,'My Coupons','profile/coupons','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(11,NULL,'My Wallet','wallet/customer/my-wallet-index','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(12,NULL,'Referral','profile/referral','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(13,NULL,'Help & Contact Us','contact-us','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(14,NULL,'Track Orders','track-order','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(15,NULL,'Support Tickets','support-ticket','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(16,NULL,'Compare','compare','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(17,NULL,'Dashboard','profile/dashboard','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(18,NULL,'Shopping Recent Viewed','shopping-recent-viewed','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(19,NULL,'My Giftcarts','purchased-gift-cards','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(20,NULL,'My Digital Products','digital-products','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28'),(21,NULL,'Return & Exchange','return-exchange','initial description',1,1,0,NULL,'2022-11-23 12:55:28','2022-11-23 12:55:28');
/*!40000 ALTER TABLE `dynamic_pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `email_template_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `email_template_types` WRITE;
/*!40000 ALTER TABLE `email_template_types` DISABLE KEYS */;
INSERT INTO `email_template_types` VALUES (1,'order_invoice_template',NULL,NULL,'2021-01-20 11:40:47'),(2,'order_pending_template',NULL,NULL,'2021-01-20 11:40:47'),(3,'order_confirmed_template',NULL,NULL,'2021-01-20 11:40:47'),(4,'order_declined_template',NULL,NULL,'2021-01-20 11:40:47'),(5,'paid_payment_template',NULL,NULL,'2021-01-20 11:40:47'),(6,'order_completed_template',NULL,NULL,'2021-01-20 11:40:47'),(7,'delivery_process_template',NULL,NULL,'2021-01-20 11:40:47'),(8,'refund_pending_template',NULL,NULL,'2021-01-20 11:40:47'),(9,'refund_confirmed_template',NULL,NULL,'2021-01-20 11:40:47'),(10,'refund_declined_template',NULL,NULL,'2021-01-20 11:40:47'),(11,'refund_money_paid_template',NULL,NULL,'2021-01-20 11:40:47'),(12,'refund_money_pending_template',NULL,NULL,'2021-01-20 11:40:47'),(13,'refund_completed_template',NULL,NULL,'2021-01-20 11:40:47'),(14,'refund_process_template',NULL,NULL,'2021-01-20 11:40:47'),(15,'gift_card_template',NULL,NULL,'2021-01-20 11:40:47'),(16,'review_email_template',NULL,NULL,'2021-01-20 11:40:47'),(17,'newsletter_email_template',NULL,NULL,'2021-01-20 11:40:47'),(18,'wallet_email_template',NULL,NULL,'2021-01-20 11:40:47'),(19,'order_email_template',NULL,NULL,'2021-01-20 11:40:47'),(20,'register_email_template',NULL,NULL,'2021-01-20 11:40:47'),(21,'notification_email_template',NULL,NULL,'2021-01-20 11:40:47'),(22,'support_ticket_email_template',NULL,NULL,'2021-01-20 11:40:47'),(23,'verification_email_template',NULL,NULL,'2021-01-20 11:40:47'),(24,'product_review_email_template',NULL,NULL,'2021-01-20 11:40:47'),(25,'subscription_payment_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(26,'seller_approve_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(27,'seller_suspended_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(28,'product_disable_email_template',NULL,NULL,'2021-01-20 11:40:47'),(29,'product_approve_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(30,'product_review_approve_email_template',NULL,NULL,'2021-01-20 11:40:47'),(31,'product_update_email_template',NULL,NULL,'2021-01-20 11:40:47'),(32,'withdraw_request_email_template',NULL,NULL,'2021-01-20 11:40:47'),(35,'registration_otp_email_template',NULL,NULL,'2021-01-20 11:40:47'),(36,'order_otp_email_template',NULL,NULL,'2021-01-20 11:40:47'),(37,'login_otp_email_template',NULL,NULL,'2021-01-20 11:40:47'),(38,'password_reset_otp_email_template',NULL,NULL,'2021-01-20 11:40:47'),(39,'seller_create_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(40,'sub_seller_create_email_template','MultiVendor',NULL,'2021-01-20 11:40:47'),(41,'Password Reset',NULL,NULL,'2021-01-20 11:40:47'),(42,'Subscription email verify',NULL,NULL,'2021-01-20 11:40:47'),(43,'Send digital file',NULL,NULL,'2021-01-20 11:40:47');
/*!40000 ALTER TABLE `email_template_types` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `relatable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatable_id` bigint(20) unsigned DEFAULT NULL,
  `reciepnt_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'1','Order Invoice','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:44:21'),(2,'2','Order Pending','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:44:12'),(3,'3','Order Confirmation','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 02:36:35'),(4,'4','Order Declined','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:39:56'),(5,'5','Paid Payment','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:48:59'),(6,'6','Order Complete','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(7,'8','Refund Pending','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:44:12'),(8,'9','Refund Confirmation','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 02:36:35'),(9,'10','Refund Declined','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:39:56'),(10,'11','Refund Payment Paid','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:48:59'),(11,'12','Refund Payment Pending','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(12,'13','Refund Completed','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(13,'17','News Letter','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(14,'18','Wallet','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(15,'19','Order','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(16,'20','Register','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(17,'21','Notification','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(18,'22','Support Ticket','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(19,'23','Verify Email','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(20,'24','Product Review','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(24,'28','Product disable','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(26,'30','Product Review Approve','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(27,'31','Product Update','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(28,'32','Withdraw Request','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,NULL,'2021-05-17 03:41:58'),(29,'15','Gift card template','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px;border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Here is the secret code of gift card.</p><p style=\"color: rgb(85, 85, 85);\">Please use the gift card to redeem the amount.</p><p style=\"\"><span style=\"color: rgb(85, 85, 85);\">product name: {GIFT_CARD_NAME}</span></p><p style=\"color: rgb(85, 85, 85);\">secret code : {SECRET_CODE}</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:31',NULL),(30,'41','Password Reset','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello,<br><br>You are receiving this email because we received a password reset request for your account.</p><p style=\"color: rgb(85, 85, 85);\">Your reset link is :</p><p style=\"color: rgb(85, 85, 85);\">{RESET_LINK}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"admin\",\"customer\",\"seller\"]',NULL,'2022-11-23 17:55:33',NULL),(31,'42','Subscription email verify','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello,<br><br>You are receiving this email because we received a Newsletter subscribe request.</p><p style=\"color: rgb(85, 85, 85);\">Your verify link is :</p><p style=\"color: rgb(85, 85, 85);\">{VERIFICATION_LINK}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"admin\",\"customer\",\"seller\"]',NULL,'2022-11-23 17:55:36',NULL),(32,'43','Send digital file','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello,<br><br>You are receiving this email because of get access digital link.</p><p style=\"color: rgb(85, 85, 85);\">File access link is :</p><p style=\"color: rgb(85, 85, 85);\">{DIGITAL_FILE_LINK}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:37',NULL),(33,'25','Subscription Payment','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Subscription Payment Done.</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(34,'26','Seller Approve','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Account has been approved.</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(35,'27','Seller Suspended','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Account has been suspoended.</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\\\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(36,'29','Product Approve','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Product Approved.</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(37,'39','Seller Create','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Seller Created .</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(38,'40','Sub Seller Create','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>Sub Seller Created .</p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','MultiVendor','2022-11-23 18:21:38',NULL),(39,'35','Registration OTP','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the otp :</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','Otp','2022-11-23 18:22:05',NULL),(40,'36','Order Confirmation OTP','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An order has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the otp for confimation.</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','Otp','2022-11-23 18:22:05',NULL),(41,'37','Login OTP','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>You Are Attempt To Login.</p><p style=\"color: rgb(85, 85, 85);\">Please use the otp :</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','Otp','2022-11-23 18:22:05',NULL),(42,'38','Password Reset OTP','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>You Are Attempt To Reset Password.</p><p style=\"color: rgb(85, 85, 85);\">Please use the otp :</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div><div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>',1,NULL,NULL,'[\"customer\"]','Otp','2022-11-23 18:22:05',NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_whom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `facebook_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facebook_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `code` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `facebook_messages` WRITE;
/*!40000 ALTER TABLE `facebook_messages` DISABLE KEYS */;
INSERT INTO `facebook_messages` VALUES (1,0,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `facebook_messages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,NULL,'How does the site work? ','You can browse the site or use our search engine to find your desired products. You can then add them to your shopping bag and click on place order. You let us know your address, select a delivery time – and voila, you are done.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'How do I know when my order is here? ','A representative will call you as soon as they are at your house to let you know about your delivery.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,' I can’t find the product I am looking for. What do I do? ','We are always open to new suggestions and will add an item to our inventory just for you. There is a \"Product Request\" feature that you can use to inform us of your requirement.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,NULL,'What if the item is out of stock? ','We hold our own inventory in our warehouses, so we rarely run out of stock. However, we will try our best to source what you need. If we cannot find it, we will SMS/call you and let you know what substitutes are available.',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(5,NULL,' Why should we buy from you when I have a store nearby?','Well, that is up to you but you can also be a couch potato like our founders and have your items delivered to your house for free. Our prices are sometimes lower than that of major superstores in the city. We also carry a larger variety than the average corner store. So, there is really no reason to not buy from us. ',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(6,NULL,'What about the prices? ','Our prices are our own but we try our best to offer them to you at or below market prices. Our prices are the same as the local market and we are working hard to get them even lower! If you feel that any product is priced unfairly, please let us know. ',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `features_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Great Value','Great Value','ti-cup',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Secured Shopping','Secured Shopping','ti-shield',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Worldwide Delivery','Worldwide Delivery','ti-truck',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,'24/7 Support','24/7 Support','ti-headphone-alt',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(5,'Easy Payment','Easy Payment','ti-server',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(6,'Portable Shopping','Portable Shopping','ti-shopping-cart-full',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `flash_deal_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flash_deal_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint(20) unsigned NOT NULL,
  `seller_product_id` bigint(20) unsigned NOT NULL,
  `discount` double NOT NULL,
  `discount_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flash_deal_products_flash_deal_id_foreign` (`flash_deal_id`),
  KEY `flash_deal_products_seller_product_id_foreign` (`seller_product_id`),
  CONSTRAINT `flash_deal_products_flash_deal_id_foreign` FOREIGN KEY (`flash_deal_id`) REFERENCES `flash_deals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flash_deal_products_seller_product_id_foreign` FOREIGN KEY (`seller_product_id`) REFERENCES `seller_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `flash_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flash_deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flash_deals_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `follow_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow_seller` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `follow_seller` WRITE;
/*!40000 ALTER TABLE `follow_seller` DISABLE KEYS */;
INSERT INTO `follow_seller` VALUES (1,2,1,'2022-11-24 14:40:31','2022-11-24 14:40:31');
/*!40000 ALTER TABLE `follow_seller` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `footer_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `about_title` text COLLATE utf8mb4_unicode_ci,
  `about_description` text COLLATE utf8mb4_unicode_ci,
  `copy_right` text COLLATE utf8mb4_unicode_ci,
  `section_one_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_two_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_three_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_store` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `app_store` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `payment_image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_play_store` tinyint(1) NOT NULL DEFAULT '0',
  `show_app_store` tinyint(1) NOT NULL DEFAULT '0',
  `show_payment_image` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `footer_contents` WRITE;
/*!40000 ALTER TABLE `footer_contents` DISABLE KEYS */;
INSERT INTO `footer_contents` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,'#','#','uploads/images/23-11-2022/637e2682c7625.png',1,1,1,'2022-11-23 17:55:36','2022-11-23 15:56:18');
/*!40000 ALTER TABLE `footer_contents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `footer_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_static` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `footer_widgets` WRITE;
/*!40000 ALTER TABLE `footer_widgets` DISABLE KEYS */;
INSERT INTO `footer_widgets` VALUES (1,NULL,'About Us','about-us','1','1','1',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Blog','blog','1','3','1',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'Dashboard','profile/dashboard','2','17','2',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,NULL,'My Profile','profile','2','5','2',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(5,NULL,'My Order','my-purchase-orders','2','6','2',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(6,NULL,'Help & Contact','contact-us','3','13','3',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(7,NULL,'Track Order','track-order','3','14','3',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(8,NULL,'Return & Exchange','return-exchange','3','21','3',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `footer_widgets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `g_s_t_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g_s_t_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `same_state_gst` text COLLATE utf8mb4_unicode_ci,
  `outsite_state_gst` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `g_s_t_groups` WRITE;
/*!40000 ALTER TABLE `g_s_t_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_s_t_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT '18',
  `state_id` bigint(20) unsigned DEFAULT '348',
  `city_id` bigint(20) unsigned DEFAULT '7291',
  `verify_on_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `seller_wise_payment` tinyint(1) NOT NULL DEFAULT '0',
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_info` longtext COLLATE utf8mb4_unicode_ci,
  `file_supported` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '$',
  `promotionSetting` int(11) DEFAULT '0',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/settings/logo.png',
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/settings/favicon.png',
  `shop_link_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/default/img/breadcrumb_bg.png',
  `system_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1.0',
  `active_status` int(11) DEFAULT '1',
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `system_purchase_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_activated_date` date DEFAULT NULL,
  `envato_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envato_item_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_btn` int(11) NOT NULL DEFAULT '1',
  `dashboard_btn` int(11) NOT NULL DEFAULT '1',
  `report_btn` int(11) NOT NULL DEFAULT '1',
  `style_btn` int(11) NOT NULL DEFAULT '1',
  `ltl_rtl_btn` int(11) NOT NULL DEFAULT '1',
  `lang_btn` int(11) NOT NULL DEFAULT '1',
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl_rtl` int(11) NOT NULL DEFAULT '2',
  `phone_number_privacy` int(11) NOT NULL DEFAULT '1' COMMENT '1 = enable, 0 = disable',
  `time_zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Asia/Dhaka',
  `language_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `date_format_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `software_version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_header` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_protocol` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'sendmail',
  `preloader` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'infix',
  `email_template` longtext COLLATE utf8mb4_unicode_ci,
  `up_sale_product_display_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'Up Sale Products',
  `cross_sale_product_display_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'Cross Sale Products',
  `footer_about_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'About',
  `footer_about_description` text COLLATE utf8mb4_unicode_ci,
  `footer_copy_right` text COLLATE utf8mb4_unicode_ci,
  `footer_section_one_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Company',
  `footer_section_two_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My Account',
  `footer_section_three_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Services',
  `maintenance_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_status` tinyint(1) NOT NULL DEFAULT '0',
  `auto_approve_wallet_status` tinyint(1) NOT NULL DEFAULT '0',
  `auto_approve_seller` tinyint(1) NOT NULL DEFAULT '1',
  `auto_approve_product_review` tinyint(1) NOT NULL DEFAULT '0',
  `auto_approve_seller_review` tinyint(1) NOT NULL DEFAULT '0',
  `track_order_by_secret_id` tinyint(1) NOT NULL DEFAULT '0',
  `track_order_by_phone` tinyint(1) NOT NULL DEFAULT '1',
  `facebook_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_status` tinyint(1) NOT NULL DEFAULT '1',
  `google_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_status` tinyint(1) NOT NULL DEFAULT '1',
  `twitter_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_status` tinyint(1) NOT NULL DEFAULT '0',
  `linkedin_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_status` tinyint(1) NOT NULL DEFAULT '0',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multi_category` tinyint(1) NOT NULL DEFAULT '1',
  `commission_by` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `currency_symbol_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left_with_space',
  `decimal_limit` int(10) unsigned NOT NULL DEFAULT '2',
  `default_country` bigint(20) unsigned DEFAULT '18',
  `default_state` bigint(20) unsigned DEFAULT '348',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '1',
  `category_show_in_frontend` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `meta_site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `preloader_type` tinyint(3) unsigned DEFAULT '1',
  `preloader_status` tinyint(1) NOT NULL DEFAULT '1',
  `preloader_style` int(10) unsigned NOT NULL DEFAULT '0',
  `preloader_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_subtitle_show` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `MultiVendor` int(11) DEFAULT '1',
  `Otp` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'Pomalo','Pomalo',113,4151,0,0,0,'BD',NULL,'pdf,txt','00100','-1.292066','36.821945',NULL,'Nairobi, Kenya','0735119549','sales@pomalo.co.ke','2','KSh',0,'uploads/settings/637f14d4b7287.png','uploads/settings/637f14d48e2ad.png','frontend/default/img/breadcrumb_bg.png','3.4',1,'KES','en',NULL,'2022-11-23',NULL,NULL,'https://www.pomalo.co.ke','Copyright © 2019. All rights reserved',1,1,1,1,1,1,NULL,2,1,'Africa/Nairobi','en','1','3.4','Mail signature','Mail Header','Mail footer','smtp','AmazCart','<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"><p style=\"color: rgb(85, 85, 85);\">Hello {USER_FIRST_NAME}<br><br>An account has been created for you.</p><p style=\"color: rgb(85, 85, 85);\">Please use the following info to login your dashboard:</p><p style=\"color: rgb(85, 85, 85);\">{ORDER_TRACKING_NUMBER}<br></p><hr style=\"box-sizing: content-box; margin-top: 20px; margin-bottom: 20px; border-top-color: rgb(238, 238, 238);\"><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85);\">{EMAIL_SIGNATURE}</p><p style=\"color: rgb(85, 85, 85);\"><br></p></div>\r\n<div style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); text-align: center; background-color: rgb(152, 62, 81); padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0px;\"><h1 style=\"margin: 20px 0px 10px; font-size: 36px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: inherit;\">Template</h1></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding: 20px;\"></div>','Up Sale Products','Cross Sale Products','About','We are an industry-leading company that values honesty, integrity, and efficiency. Building quality products and caring for the users are what made us stand out since the beginning. We are stunning, functional, ready to go, and well documented.','<font color=\"#ffffff\">© Pomalo 2022. All rights reserved.</font>','Company','My Account','Services',NULL,NULL,NULL,0,0,1,0,0,0,1,NULL,NULL,1,NULL,NULL,1,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,1,1,'left_with_space',0,113,4151,1,'all','Pomalo Kenya | Online Shopping for Groceries, Appliances, Cleaning Supplies & More','ecommerce,pomalo,pomalo kenya,shopping, online shop,shop online, pomalo nairobi','Pomalo Kenya the #1 Online Store in Kenya ✓ Buy Phones, Electronics, Appliances, Groceries, Cleaning Supplies, Home Essentials from Top Brands ✓ Best Prices in Kenya ✓ Online Shop You Can Trust ✓ Order Now and Enjoy Pay on Delivery!',1,1,0,NULL,0,NULL,'2022-11-24 14:27:31',1,1);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gift_card_galary_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_card_galary_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` bigint(20) unsigned NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `gift_card_galary_images` WRITE;
/*!40000 ALTER TABLE `gift_card_galary_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_galary_images` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gift_card_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_card_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gift_card_tag_gift_card_id_foreign` (`gift_card_id`),
  KEY `gift_card_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `gift_card_tag_gift_card_id_foreign` FOREIGN KEY (`gift_card_id`) REFERENCES `gift_cards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gift_card_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `gift_card_tag` WRITE;
/*!40000 ALTER TABLE `gift_card_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gift_card_uses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_card_uses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` bigint(20) unsigned NOT NULL,
  `qty` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `secret_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_sent_date` date DEFAULT NULL,
  `is_mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `gift_card_uses` WRITE;
/*!40000 ALTER TABLE `gift_card_uses` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_uses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gift_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` double NOT NULL,
  `thumbnail_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT '0',
  `discount_type` tinyint(3) unsigned DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `avg_rating` double NOT NULL DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `shipping_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `gift_cards` WRITE;
/*!40000 ALTER TABLE `gift_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_cards` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_parent_id_foreign` (`parent_id`),
  CONSTRAINT `groups_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `gst_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gst_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` double(8,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gst_taxes_created_by_foreign` (`created_by`),
  KEY `gst_taxes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `gst_taxes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gst_taxes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `gst_taxes` WRITE;
/*!40000 ALTER TABLE `gst_taxes` DISABLE KEYS */;
INSERT INTO `gst_taxes` VALUES (1,'CGST',0.00,1,NULL,NULL,'2021-05-05 03:34:36','2021-05-05 03:34:36'),(2,'SGST',0.00,1,NULL,NULL,'2021-05-05 03:42:18','2021-05-05 03:46:12'),(3,'IGST',0.00,1,NULL,NULL,'2021-05-05 03:42:40','2021-05-05 03:46:00');
/*!40000 ALTER TABLE `gst_taxes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `guest_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `guest_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city_id` bigint(20) unsigned DEFAULT NULL,
  `billing_state_id` bigint(20) unsigned DEFAULT NULL,
  `billing_country_id` bigint(20) unsigned DEFAULT NULL,
  `billing_post_code` bigint(20) unsigned DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_state_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_country_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_post_code` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `guest_order_details` WRITE;
/*!40000 ALTER TABLE `guest_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_order_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `header_category_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `header_category_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_newtab` tinyint(1) NOT NULL,
  `position` bigint(20) unsigned NOT NULL DEFAULT '986754',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `header_category_panels` WRITE;
/*!40000 ALTER TABLE `header_category_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `header_category_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `header_new_user_zone_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `header_new_user_zone_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `navigation_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_user_zone_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `header_new_user_zone_panels` WRITE;
/*!40000 ALTER TABLE `header_new_user_zone_panels` DISABLE KEYS */;
INSERT INTO `header_new_user_zone_panels` VALUES (1,'New User Zone','Get your coupon','usd 5',1,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `header_new_user_zone_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `header_product_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `header_product_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_newtab` tinyint(1) NOT NULL,
  `position` bigint(20) unsigned NOT NULL DEFAULT '986754',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `header_product_panels` WRITE;
/*!40000 ALTER TABLE `header_product_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `header_product_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `header_slider_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `header_slider_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `data_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_id` bigint(20) unsigned DEFAULT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '598776',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `header_slider_panels` WRITE;
/*!40000 ALTER TABLE `header_slider_panels` DISABLE KEYS */;
INSERT INTO `header_slider_panels` VALUES (1,'Slide1',NULL,NULL,NULL,'uploads/images/23-11-2022/637e257c9714d.jpeg',1,1,598776,'2022-11-23 15:51:56','2022-11-23 15:51:56'),(2,'Slide2',NULL,NULL,NULL,'uploads/images/23-11-2022/637e258d82194.jpeg',1,1,598776,'2022-11-23 15:52:13','2022-11-23 15:52:13'),(3,'Slide3',NULL,NULL,NULL,'uploads/images/23-11-2022/637e259fce21e.jpeg',1,1,598776,'2022-11-23 15:52:31','2022-11-23 15:52:31'),(4,'Slide4',NULL,NULL,NULL,'uploads/images/23-11-2022/637e25ba5eb22.jpeg',1,1,598776,'2022-11-23 15:52:58','2022-11-23 15:52:58');
/*!40000 ALTER TABLE `header_slider_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT '1',
  `is_full_row` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `headers` WRITE;
/*!40000 ALTER TABLE `headers` DISABLE KEYS */;
INSERT INTO `headers` VALUES (1,'Slider Section','slider','8 column',1,0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'Category Section','category','4 column',1,0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'Product Section','product','8 column',1,0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'New User Zone Section','new_user_zone','4 column',1,0,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `headers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 =>single 1 => multiple',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `home_page_custom_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_page_custom_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` bigint(20) unsigned NOT NULL,
  `field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_4` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_5` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_6` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `home_page_custom_sections` WRITE;
/*!40000 ALTER TABLE `home_page_custom_sections` DISABLE KEYS */;
INSERT INTO `home_page_custom_sections` VALUES (1,7,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:35','2022-11-23 17:55:35'),(2,10,'uploads/images/23-11-2022/637e270681171.jpeg','uploads/images/23-11-2022/637e27068c6ec.jpeg','uploads/images/23-11-2022/637e270695872.jpeg','#','#','#','2022-11-23 17:55:35','2022-11-23 15:58:30');
/*!40000 ALTER TABLE `home_page_custom_sections` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `home_page_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_page_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_for` int(10) unsigned NOT NULL,
  `column_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `home_page_sections` WRITE;
/*!40000 ALTER TABLE `home_page_sections` DISABLE KEYS */;
INSERT INTO `home_page_sections` VALUES (1,'best_deals','Best Deals',1,'col-lg-12',4,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'top_brands','Top Brands',3,'col-lg-6',2,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'top_picks','Top Picks',1,'col-lg-6',4,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,'feature_categories','Feature Categories',2,'col-lg-12',2,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(5,'more_products','MORE PRODUCTS THAT YOU MAY LOVE',1,'col-lg-12',3,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(6,'top_bar','Top Bar',1,'col-lg-12',3,1,'default','2022-11-23 17:55:28','2022-11-23 17:55:28'),(7,'filter_category','House Appliances',4,'col-lg-12',1,1,'amazy','2022-11-23 17:55:35','2022-11-23 17:55:35'),(8,'top_rating','Top Rating',1,'col-lg-12',5,1,'amazy','2022-11-23 17:55:35','2022-11-23 17:55:35'),(9,'people_choices','People Choices',1,'col-lg-12',3,1,'amazy','2022-11-23 17:55:35','2022-11-23 17:55:35'),(10,'discount_banner','Discount Banner',4,'col-lg-12',1,1,'amazy','2022-11-23 17:55:35','2022-11-23 17:55:35');
/*!40000 ALTER TABLE `home_page_sections` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `homepage_custom_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_custom_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_custom_brands_section_id_foreign` (`section_id`),
  KEY `homepage_custom_brands_brand_id_foreign` (`brand_id`),
  CONSTRAINT `homepage_custom_brands_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homepage_custom_brands_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `home_page_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `homepage_custom_brands` WRITE;
/*!40000 ALTER TABLE `homepage_custom_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_custom_brands` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `homepage_custom_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_custom_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_custom_categories_section_id_foreign` (`section_id`),
  KEY `homepage_custom_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `homepage_custom_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homepage_custom_categories_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `home_page_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `homepage_custom_categories` WRITE;
/*!40000 ALTER TABLE `homepage_custom_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_custom_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `homepage_custom_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_custom_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` bigint(20) unsigned NOT NULL,
  `seller_product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_custom_products_section_id_foreign` (`section_id`),
  KEY `homepage_custom_products_seller_product_id_foreign` (`seller_product_id`),
  CONSTRAINT `homepage_custom_products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `home_page_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homepage_custom_products_seller_product_id_foreign` FOREIGN KEY (`seller_product_id`) REFERENCES `seller_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `homepage_custom_products` WRITE;
/*!40000 ALTER TABLE `homepage_custom_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_custom_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ignore_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ignore_ip` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ignore_ip` WRITE;
/*!40000 ALTER TABLE `ignore_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ignore_ip` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `in_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `in_queries` WRITE;
/*!40000 ALTER TABLE `in_queries` DISABLE KEYS */;
INSERT INTO `in_queries` VALUES (1,NULL,'Order',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Payment',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'Product',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `in_queries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `infix_module_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infix_module_managers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `version` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_url` text COLLATE utf8mb4_unicode_ci,
  `purchase_code` text COLLATE utf8mb4_unicode_ci,
  `installed_domain` text COLLATE utf8mb4_unicode_ci,
  `checksum` text COLLATE utf8mb4_unicode_ci,
  `activated_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `infix_module_managers` WRITE;
/*!40000 ALTER TABLE `infix_module_managers` DISABLE KEYS */;
INSERT INTO `infix_module_managers` VALUES (1,'MultiVendor','albert.o.osiemo@gmail.com','This is Multi Vendor Module for Amazcart. After install this module, system will converted to multi vendor ecommerce. Amazcart version required 3.4','v1.8','https://spondonit.com/contact','b6580bea-1d9f-41f6-bdf0-d36a6e495e29','https://www.pomalo.co.ke','checksum','2022-11-23','2022-11-23 17:55:28','2022-11-23 18:21:27'),(2,'Otp','albert.o.osiemo@gmail.com','This is OTP Module for User Registration, Seller Registration(for multivendor), Oder Confirm(COD). Minimum Amazcart version is 3.2','v1.2','https://spondonit.com/contact','b6580bea-1d9f-41f6-bdf0-d36a6e495e29','https://www.pomalo.co.ke','checksum','2022-11-23','2022-11-23 18:21:55','2022-11-23 18:21:55');
/*!40000 ALTER TABLE `infix_module_managers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `inhouse_order_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inhouse_order_carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(10) unsigned NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_select` tinyint(1) NOT NULL DEFAULT '1',
  `shipping_method_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inhouse_order_carts_seller_id_foreign` (`seller_id`),
  KEY `inhouse_order_carts_product_id_foreign` (`product_id`),
  CONSTRAINT `inhouse_order_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `seller_product_s_k_us` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inhouse_order_carts_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `inhouse_order_carts` WRITE;
/*!40000 ALTER TABLE `inhouse_order_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inhouse_order_carts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `intro_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intro_prefix` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `intro_prefix` WRITE;
/*!40000 ALTER TABLE `intro_prefix` DISABLE KEYS */;
/*!40000 ALTER TABLE `intro_prefix` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `label_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `condition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `label_configs` WRITE;
/*!40000 ALTER TABLE `label_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `label_configs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `json_exist` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (19,'en','English','English',0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `lb_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lb_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `raw_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_content` text COLLATE utf8mb4_unicode_ci,
  `rendered_content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wp_block',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `lb_blocks` WRITE;
/*!40000 ALTER TABLE `lb_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `lb_blocks` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `lb_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lb_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `raw_content` text COLLATE utf8mb4_unicode_ci,
  `rendered_content` text COLLATE utf8mb4_unicode_ci,
  `contentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentable_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lb_contents_contentable_type_contentable_id_index` (`contentable_type`,`contentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `lb_contents` WRITE;
/*!40000 ALTER TABLE `lb_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `lb_contents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` tinyint(1) NOT NULL DEFAULT '0',
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `log_activity` WRITE;
/*!40000 ALTER TABLE `log_activity` DISABLE KEYS */;
INSERT INTO `log_activity` VALUES (1,'Super - logged in at : 2022-11-23 18:56:35',1,'https://www.pomalo.co.ke/admin/login','POST','197.248.206.9',1,'2022-11-23 18:56:35',NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 17:56:35','2022-11-23 17:56:35'),(2,'Permission given Successfully',1,'https://www.pomalo.co.ke/hr/role-permission/permissions','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 17:59:58','2022-11-23 17:59:58'),(3,'menu status changed.',1,'https://www.pomalo.co.ke/menu/manage/status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:01:07','2022-11-23 18:01:07'),(4,'menu status changed.',1,'https://www.pomalo.co.ke/menu/manage/status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:01:08','2022-11-23 18:01:08'),(5,'Element deleted',1,'https://www.pomalo.co.ke/menu/setup/element-delete','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:09:38','2022-11-23 18:09:38'),(6,'Element deleted',1,'https://www.pomalo.co.ke/menu/setup/element-delete','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:09:43','2022-11-23 18:09:43'),(7,'Super - logged in at : 2022-11-23 19:19:44',1,'https://www.pomalo.co.ke/admin/login','POST','197.248.206.9',1,'2022-11-23 19:19:44',NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:19:44','2022-11-23 18:19:44'),(8,'element added successful.',1,'https://www.pomalo.co.ke/menu/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:24:29','2022-11-23 18:24:29'),(9,'element updated',1,'https://www.pomalo.co.ke/menu/setup/element-update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:24:46','2022-11-23 18:24:46'),(10,'Element deleted',1,'https://www.pomalo.co.ke/menu/setup/element-delete','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:25:01','2022-11-23 18:25:01'),(11,'element added successful.',1,'https://www.pomalo.co.ke/menu/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:25:22','2022-11-23 18:25:22'),(12,'Updated Successfully',1,'https://www.pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:27:11','2022-11-23 18:27:11'),(13,'Updated Successfully',1,'https://www.pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:27:53','2022-11-23 18:27:53'),(14,'Currency updated Successfully',1,'https://www.pomalo.co.ke/setup/currencies/1','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:28:36','2022-11-23 18:28:36'),(15,'Currency status active Successfully',1,'https://www.pomalo.co.ke/setup/currency-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:28:43','2022-11-23 18:28:43'),(16,'Currency updated Successfully',1,'https://www.pomalo.co.ke/setup/currencies/2','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:29:01','2022-11-23 18:29:01'),(17,'Currency status active Successfully',1,'https://www.pomalo.co.ke/setup/currency-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:29:19','2022-11-23 18:29:19'),(18,'Currency status active Successfully',1,'https://www.pomalo.co.ke/setup/currency-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:29:21','2022-11-23 18:29:21'),(19,'Currency updated Successfully',1,'https://www.pomalo.co.ke/setup/currencies/2','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:29:36','2022-11-23 18:29:36'),(20,'Currency updated Successfully',1,'https://www.pomalo.co.ke/setup/currencies/1','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:30:11','2022-11-23 18:30:11'),(21,'Currency status active Successfully',1,'https://www.pomalo.co.ke/setup/currency-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:30:19','2022-11-23 18:30:19'),(22,'Updated Successfully',1,'https://www.pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 18:30:55','2022-11-23 18:30:55'),(23,'Updated Successfully',1,'https://www.pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:31:15','2022-11-23 15:31:15'),(24,'Language active status change Successfully',1,'https://www.pomalo.co.ke/setup/language/update-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:32:54','2022-11-23 15:32:54'),(25,'Language active status change Successfully',1,'https://www.pomalo.co.ke/setup/language/update-active-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:32:56','2022-11-23 15:32:56'),(26,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:34:46','2022-11-23 15:34:46'),(27,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:35:26','2022-11-23 15:35:26'),(28,'Brand updated.',1,'https://www.pomalo.co.ke/products/brands-update/2','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:35:45','2022-11-23 15:35:45'),(29,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:36:16','2022-11-23 15:36:16'),(30,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:36:38','2022-11-23 15:36:38'),(31,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:37:26','2022-11-23 15:37:26'),(32,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:37:49','2022-11-23 15:37:49'),(33,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:40:44','2022-11-23 15:40:44'),(34,'Brand Added.',1,'https://www.pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:41:54','2022-11-23 15:41:54'),(35,'element added successful.',1,'https://www.pomalo.co.ke/appearance/headers/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:51:56','2022-11-23 15:51:56'),(36,'element added successful.',1,'https://www.pomalo.co.ke/appearance/headers/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:52:13','2022-11-23 15:52:13'),(37,'element added successful.',1,'https://www.pomalo.co.ke/appearance/headers/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:52:31','2022-11-23 15:52:31'),(38,'element added successful.',1,'https://www.pomalo.co.ke/appearance/headers/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:52:58','2022-11-23 15:52:58'),(39,'Subscribe Content updated.',1,'https://www.pomalo.co.ke/frontendcms/promotion-bar/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:54:06','2022-11-23 15:54:06'),(40,'Subscribe Content updated.',1,'https://www.pomalo.co.ke/frontendcms/promotion-bar/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:54:33','2022-11-23 15:54:33'),(41,'footer Content updated.',1,'https://www.pomalo.co.ke/footer/footer-setting','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:56:04','2022-11-23 15:56:04'),(42,'footer Content updated.',1,'https://www.pomalo.co.ke/footer/footer-setting-app_link','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:56:18','2022-11-23 15:56:18'),(43,'footer Content updated.',1,'https://www.pomalo.co.ke/footer/footer-setting','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:56:42','2022-11-23 15:56:42'),(44,'footer Content updated.',1,'https://www.pomalo.co.ke/footer/footer-setting','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:57:05','2022-11-23 15:57:05'),(45,'widget update successful.',1,'https://www.pomalo.co.ke/frontendcms/homepage/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:58:30','2022-11-23 15:58:30'),(46,'contact content update successful.',1,'https://www.pomalo.co.ke/frontendcms/contact-content/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:59:17','2022-11-23 15:59:17'),(47,'Social link store successful.',1,'https://www.pomalo.co.ke/admin/setting/social-link/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 15:59:53','2022-11-23 15:59:53'),(48,'Social link store successful.',1,'https://www.pomalo.co.ke/admin/setting/social-link/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 16:00:09','2022-11-23 16:00:09'),(49,'Social link store successful.',1,'https://www.pomalo.co.ke/admin/setting/social-link/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 16:00:21','2022-11-23 16:00:21'),(50,'Social link store successful.',1,'https://www.pomalo.co.ke/admin/setting/social-link/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 16:00:36','2022-11-23 16:00:36'),(51,'Menu added.',1,'https://www.pomalo.co.ke/menu/setup/add-menu','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(52,'Super - logged in at : 2022-11-24 09:11:02',1,'https://pomalo.co.ke/admin/login','POST','197.248.206.9',1,'2022-11-24 09:11:02',NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:11:03','2022-11-24 08:11:03'),(53,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:12:17','2022-11-24 08:12:17'),(54,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:12:36','2022-11-24 08:12:36'),(55,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:12:51','2022-11-24 08:12:51'),(56,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:13:56','2022-11-24 08:13:56'),(57,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:15:24','2022-11-24 08:15:24'),(58,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:15:48','2022-11-24 08:15:48'),(59,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:16:37','2022-11-24 08:16:37'),(60,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:17:08','2022-11-24 08:17:08'),(61,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:17:42','2022-11-24 08:17:42'),(62,'Menu updated.',1,'https://pomalo.co.ke/menu/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:18:21','2022-11-24 08:18:21'),(63,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:25:49','2022-11-24 08:25:49'),(64,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:27:16','2022-11-24 08:27:16'),(65,'Category Updated.',1,'https://pomalo.co.ke/products/category/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:30:22','2022-11-24 08:30:22'),(66,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:30:50','2022-11-24 08:30:50'),(67,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:31:17','2022-11-24 08:31:17'),(68,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:32:01','2022-11-24 08:32:01'),(69,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:32:53','2022-11-24 08:32:53'),(70,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:35:05','2022-11-24 08:35:05'),(71,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:47:10','2022-11-24 08:47:10'),(72,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:48:40','2022-11-24 08:48:40'),(73,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:48:57','2022-11-24 08:48:57'),(74,'Category Added.',1,'https://pomalo.co.ke/products/category','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:49:29','2022-11-24 08:49:29'),(75,'Updated Successfully',1,'https://pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:53:11','2022-11-24 08:53:11'),(76,'Units added.',1,'https://pomalo.co.ke/products/unit-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:57:21','2022-11-24 08:57:21'),(77,'Attribute Added.',1,'https://pomalo.co.ke/products/attribute-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 08:59:19','2022-11-24 08:59:19'),(78,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(79,'Product updated.',1,'https://pomalo.co.ke/products/update/1','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:05:28','2022-11-24 09:05:28'),(80,'product status update successful.',1,'https://pomalo.co.ke/products/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:07:10','2022-11-24 09:07:10'),(81,'product status update successful.',1,'https://pomalo.co.ke/products/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:07:16','2022-11-24 09:07:16'),(82,'Update sku  successful.',1,'https://pomalo.co.ke/products/sku-edit','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:08:20','2022-11-24 09:08:20'),(83,'column created successful.',1,'https://pomalo.co.ke/menu/setup/add-column','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:10:44','2022-11-24 09:10:44'),(84,'element added successful.',1,'https://pomalo.co.ke/menu/setup/add-element','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:11:07','2022-11-24 09:11:07'),(85,'add to column successful.',1,'https://pomalo.co.ke/menu/setup/add-to-column','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:12:10','2022-11-24 09:12:10'),(86,'Element sorted successful.',1,'https://pomalo.co.ke/menu/setup/element/sort','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:12:11','2022-11-24 09:12:11'),(87,'Pickup location updated',1,'https://pomalo.co.ke/shipping/pickup_locations/1','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:16:23','2022-11-24 09:16:23'),(88,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:17:33','2022-11-24 09:17:33'),(89,'Update stock manage status successful.',1,'https://pomalo.co.ke/seller/product-stock-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:19:14','2022-11-24 09:19:14'),(90,'product updated.',1,'https://pomalo.co.ke/seller/product/update/1','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:19:31','2022-11-24 09:19:31'),(91,'Product updated.',1,'https://pomalo.co.ke/products/update/1','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:20:25','2022-11-24 09:20:25'),(92,'Updated Successfully',1,'https://pomalo.co.ke/generalsetting/general-settings/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:25:07','2022-11-24 09:25:07'),(93,'Shipping method Updated',1,'https://pomalo.co.ke/shipping/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:29:21','2022-11-24 09:29:21'),(94,'Shipping method Updated',1,'https://pomalo.co.ke/shipping/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:30:26','2022-11-24 09:30:26'),(95,'Brand Added.',1,'https://pomalo.co.ke/products/brands-store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:36:16','2022-11-24 09:36:16'),(96,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:44:52','2022-11-24 09:44:52'),(97,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 09:46:12','2022-11-24 09:46:12'),(98,'Category Updated.',1,'https://pomalo.co.ke/products/category/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:01:41','2022-11-24 10:01:41'),(99,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:45','2022-11-24 10:13:45'),(100,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:46','2022-11-24 10:13:46'),(101,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(102,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(103,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:50','2022-11-24 10:13:50'),(104,'product upload successful.',1,'https://pomalo.co.ke/products/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:13:50','2022-11-24 10:13:50'),(105,'Category Updated.',1,'https://pomalo.co.ke/products/category/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:16:36','2022-11-24 10:16:36'),(106,'Product deleted.',1,'https://pomalo.co.ke/products/destroy','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:17:37','2022-11-24 10:17:37'),(107,'Product deleted.',1,'https://pomalo.co.ke/products/destroy','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:17:51','2022-11-24 10:17:51'),(108,'Product deleted.',1,'https://pomalo.co.ke/products/destroy','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:18:06','2022-11-24 10:18:06'),(109,'Product deleted.',1,'https://pomalo.co.ke/products/destroy','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:18:20','2022-11-24 10:18:20'),(110,'Product deleted.',1,'https://pomalo.co.ke/products/destroy','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:18:36','2022-11-24 10:18:36'),(111,'Product updated.',1,'https://pomalo.co.ke/products/update/3','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:20:17','2022-11-24 10:20:17'),(112,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:26','2022-11-24 10:21:26'),(113,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:29','2022-11-24 10:21:29'),(114,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:33','2022-11-24 10:21:33'),(115,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:35','2022-11-24 10:21:35'),(116,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:36','2022-11-24 10:21:36'),(117,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:37','2022-11-24 10:21:37'),(118,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:39','2022-11-24 10:21:39'),(119,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:41','2022-11-24 10:21:41'),(120,'product status updated.',1,'https://pomalo.co.ke/seller/product/update-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:21:42','2022-11-24 10:21:42'),(121,'Update stock manage status successful.',1,'https://pomalo.co.ke/seller/product-stock-status','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:23:07','2022-11-24 10:23:07'),(122,'product updated.',1,'https://pomalo.co.ke/seller/product/update/3','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:23:38','2022-11-24 10:23:38'),(123,'Product updated.',1,'https://pomalo.co.ke/products/update/3','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:25:12','2022-11-24 10:25:12'),(124,'product updated.',1,'https://pomalo.co.ke/seller/product/update/3','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:27:58','2022-11-24 10:27:58'),(125,'city updated successfully',1,'https://pomalo.co.ke/setup/location/city/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:34:54','2022-11-24 10:34:54'),(126,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:36:18','2022-11-24 10:36:18'),(127,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:37:33','2022-11-24 10:37:33'),(128,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:38:11','2022-11-24 10:38:11'),(129,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:38:33','2022-11-24 10:38:33'),(130,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:39:18','2022-11-24 10:39:18'),(131,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:39:41','2022-11-24 10:39:41'),(132,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:40:23','2022-11-24 10:40:23'),(133,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:40:47','2022-11-24 10:40:47'),(134,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:41:47','2022-11-24 10:41:47'),(135,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:42:48','2022-11-24 10:42:48'),(136,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:43:17','2022-11-24 10:43:17'),(137,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:43:35','2022-11-24 10:43:35'),(138,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:43:53','2022-11-24 10:43:53'),(139,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:44:12','2022-11-24 10:44:12'),(140,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:44:29','2022-11-24 10:44:29'),(141,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:44:48','2022-11-24 10:44:48'),(142,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:45:12','2022-11-24 10:45:12'),(143,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:45:29','2022-11-24 10:45:29'),(144,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:45:52','2022-11-24 10:45:52'),(145,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:46:10','2022-11-24 10:46:10'),(146,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:46:32','2022-11-24 10:46:32'),(147,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:49:08','2022-11-24 10:49:08'),(148,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:50:05','2022-11-24 10:50:05'),(149,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:50:25','2022-11-24 10:50:25'),(150,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:50:47','2022-11-24 10:50:47'),(151,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:51:09','2022-11-24 10:51:09'),(152,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:51:50','2022-11-24 10:51:50'),(153,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:52:19','2022-11-24 10:52:19'),(154,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:52:58','2022-11-24 10:52:58'),(155,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:53:19','2022-11-24 10:53:19'),(156,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:53:43','2022-11-24 10:53:43'),(157,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:56:39','2022-11-24 10:56:39'),(158,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:57:02','2022-11-24 10:57:02'),(159,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:57:24','2022-11-24 10:57:24'),(160,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:57:43','2022-11-24 10:57:43'),(161,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:58:01','2022-11-24 10:58:01'),(162,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:58:20','2022-11-24 10:58:20'),(163,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:58:39','2022-11-24 10:58:39'),(164,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:58:57','2022-11-24 10:58:57'),(165,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:59:14','2022-11-24 10:59:14'),(166,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:59:32','2022-11-24 10:59:32'),(167,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 10:59:51','2022-11-24 10:59:51'),(168,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:00:09','2022-11-24 11:00:09'),(169,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:00:27','2022-11-24 11:00:27'),(170,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:00:52','2022-11-24 11:00:52'),(171,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:01:11','2022-11-24 11:01:11'),(172,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:01:32','2022-11-24 11:01:32'),(173,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:01:53','2022-11-24 11:01:53'),(174,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:02:21','2022-11-24 11:02:21'),(175,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:02:38','2022-11-24 11:02:38'),(176,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:03:02','2022-11-24 11:03:02'),(177,'city created successfully',1,'https://pomalo.co.ke/setup/location/city/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:03:19','2022-11-24 11:03:19'),(178,'Pickup location updated',1,'https://pomalo.co.ke/shipping/pickup_locations/1','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:04:16','2022-11-24 11:04:16'),(179,'Pickup location updated',1,'https://pomalo.co.ke/shipping/pickup_locations/1','PUT','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 11:06:25','2022-11-24 11:06:25'),(180,'SMTP gateway credential successful.',1,'https://pomalo.co.ke/generalsetting/smtp-gateway-credentials/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 14:26:12','2022-11-24 14:26:12'),(181,'SMTP gateway credential successful.',1,'https://pomalo.co.ke/generalsetting/smtp-gateway-credentials/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 14:27:31','2022-11-24 14:27:31'),(182,'mail sent successful.',1,'https://pomalo.co.ke/generalsetting/test-mail/send','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 14:28:01','2022-11-24 14:28:01'),(183,'Albert - logged out at : 2022-11-24 15:43:36',2,'https://pomalo.co.ke/otp','POST','197.248.206.9',1,'2022-11-24 15:35:15','2022-11-24 15:43:36','Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:35:15','2022-11-24 14:43:36'),(184,'cart store successful.',1,'https://pomalo.co.ke/cart/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:41:09','2022-11-24 14:41:09'),(185,'Shipping address change successful.',1,'https://pomalo.co.ke/checkout/address/shipping','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:41:52','2022-11-24 14:41:52'),(186,'Swac - logged out at : 2022-11-24 16:34:05',2,'https://pomalo.co.ke/seller/login','POST','197.248.206.9',1,'2022-11-24 15:46:12','2022-11-24 16:34:05','Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:46:12','2022-11-24 15:34:05'),(187,'Seller account update successful.',1,'https://pomalo.co.ke/seller/profile/seller-account/update/2','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:50:35','2022-11-24 14:50:35'),(188,'Commision has been Updated to 20 %',1,'https://pomalo.co.ke/admin/commission-update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 14:51:49','2022-11-24 14:51:49'),(189,'Commision has been Updated to 14.5 %',1,'https://pomalo.co.ke/admin/commission-update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 14:52:06','2022-11-24 14:52:06'),(190,'Seller account update successful.',1,'https://pomalo.co.ke/seller/profile/seller-account/update/2','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:53:05','2022-11-24 14:53:05'),(191,'Seller account update successful.',1,'https://pomalo.co.ke/seller/profile/seller-account/update/2','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',2,'2022-11-24 14:53:51','2022-11-24 14:53:51'),(192,'Shipping method Updated',1,'https://pomalo.co.ke/shipping/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:35:09','2022-11-24 15:35:09'),(193,'Ali - logged in at : 2022-11-24 16:36:42',3,'https://pomalo.co.ke/otp','POST','197.248.206.9',1,'2022-11-24 16:36:42',NULL,'Chrome-107-Blink-Windows 10-',3,'2022-11-24 15:36:42','2022-11-24 15:36:42'),(194,'cart store successful.',1,'https://pomalo.co.ke/cart/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',3,'2022-11-24 15:38:39','2022-11-24 15:38:39'),(195,'Shipping method Updated',1,'https://pomalo.co.ke/shipping/update','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:40:30','2022-11-24 15:40:30'),(196,'New Shipping method added',1,'https://pomalo.co.ke/shipping/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:41:34','2022-11-24 15:41:34'),(197,'New Shipping method added',1,'https://pomalo.co.ke/shipping/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:42:05','2022-11-24 15:42:05'),(198,'address added',1,'https://pomalo.co.ke/customer/address/store','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',3,'2022-11-24 15:47:57','2022-11-24 15:47:57'),(199,'payment activate successful.',1,'https://pomalo.co.ke/paymentgateway/setting/activation','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:52:34','2022-11-24 15:52:34'),(200,'payment activate successful.',1,'https://pomalo.co.ke/paymentgateway/setting/activation','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:56:10','2022-11-24 15:56:10'),(201,'payment activate successful.',1,'https://pomalo.co.ke/paymentgateway/payment-gateway-activation','POST','197.248.206.9',0,NULL,NULL,'Chrome-107-Blink-Windows 10-',1,'2022-11-24 15:56:38','2022-11-24 15:56:38');
/*!40000 ALTER TABLE `log_activity` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `login_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `login_pages` WRITE;
/*!40000 ALTER TABLE `login_pages` DISABLE KEYS */;
INSERT INTO `login_pages` VALUES (1,'Turn your ideas into reality.','Consistent quality and experience across all platforms and devices.','frontend/amazy/img/banner/admin_login_img.png','admin-login',NULL,NULL),(2,'Turn your ideas into reality.','Consistent quality and experience across all platforms and devices.','frontend/amazy/img/banner/login_img.png','login',NULL,NULL),(3,'Turn your ideas into reality.','Consistent quality and experience across all platforms and devices.','frontend/amazy/img/banner/seller_login_img.png','seller-login',NULL,NULL),(4,'Turn your ideas into reality.','Consistent quality and experience across all platforms and devices.','frontend/amazy/img/banner/password_reset_login_img.png','password-reset',NULL,NULL);
/*!40000 ALTER TABLE `login_pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `media_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_managers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orginal_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `media_managers` WRITE;
/*!40000 ALTER TABLE `media_managers` DISABLE KEYS */;
INSERT INTO `media_managers` VALUES (1,1,'uploads/all/637f16b3af1c9.jpeg','2022-10-21-6352ae623d033.png','jpeg','image',101,NULL,'local',NULL,NULL),(2,1,'uploads/all/637f16dc17d98.jpeg','2022-10-21-6352ae623db59.png','jpeg','image',102,NULL,'local',NULL,NULL),(3,1,'uploads/all/637f16dc82134.jpeg','2022-10-21-6352ae623dde7.png','jpeg','image',56,NULL,'local',NULL,NULL),(4,1,'uploads/all/637f16dc9ea78.jpeg','2022-10-21-6352ae623dca5.png','jpeg','image',67,NULL,'local',NULL,NULL),(5,1,'uploads/all/637f16dcc678e.jpeg','2022-10-21-6352ae623deff.png','jpeg','image',102,NULL,'local',NULL,NULL),(6,1,'uploads/all/637f204cd20b0.jpeg','2022-10-21-6352acbc294b0.png','jpeg','image',126,NULL,'local',NULL,NULL),(7,1,'uploads/all/637f204cd6fa8.jpeg','2022-10-21-6352acbc281aa.png','jpeg','image',108,NULL,'local',NULL,NULL),(8,1,'uploads/all/637f264c14897.jpeg','2022-10-18-634e9d0d57c0c.png','jpeg','image',24,NULL,'local',NULL,NULL),(9,1,'uploads/all/637f264c2c2aa.jpeg','2022-10-18-634e9d0d57966.png','jpeg','image',22,NULL,'local',NULL,NULL),(10,1,'uploads/all/637f264c2e915.jpeg','2022-10-18-634e9d0d57abb.png','jpeg','image',10,NULL,'local',NULL,NULL),(11,1,'uploads/all/637f264c61be6.jpeg','2022-10-18-634e9d0d577aa.png','jpeg','image',12,NULL,'local',NULL,NULL),(12,1,'uploads/all/637f264c751eb.jpeg','2022-10-18-634e9d0d54f9a.png','jpeg','image',29,NULL,'local',NULL,NULL),(13,1,'uploads/all/637f2652b3aad.jpeg','2022-10-18-634e9d0d52eae.png','jpeg','image',11,NULL,'local',NULL,NULL),(14,1,'uploads/all/637f2652b73c3.jpeg','2022-10-18-634e9d0d53ef2.png','jpeg','image',16,NULL,'local',NULL,NULL);
/*!40000 ALTER TABLE `media_managers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mega_menu_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mega_menu_ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mega_menu_ads` WRITE;
/*!40000 ALTER TABLE `mega_menu_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `mega_menu_ads` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mega_menu_bottom_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mega_menu_bottom_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '978437',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mega_menu_bottom_panels` WRITE;
/*!40000 ALTER TABLE `mega_menu_bottom_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mega_menu_bottom_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mega_menu_right_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mega_menu_right_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '978437',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mega_menu_right_panels` WRITE;
/*!40000 ALTER TABLE `mega_menu_right_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mega_menu_right_panels` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menu_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_columns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `column` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_columns_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_columns_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menu_columns` WRITE;
/*!40000 ALTER TABLE `menu_columns` DISABLE KEYS */;
INSERT INTO `menu_columns` VALUES (1,5,'Computers','1/3',NULL,987678,'2022-11-24 09:10:44','2022-11-24 09:10:44');
/*!40000 ALTER TABLE `menu_columns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menu_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_elements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `column_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menu_elements` WRITE;
/*!40000 ALTER TABLE `menu_elements` DISABLE KEYS */;
INSERT INTO `menu_elements` VALUES (2,1,NULL,'link',NULL,'Appstore','#',NULL,2,0,0,NULL,NULL),(3,2,NULL,'page',14,'Track Orders',NULL,NULL,2,0,0,NULL,'2022-11-23 18:25:28'),(4,2,NULL,'page',16,'Compare',NULL,NULL,3,0,0,NULL,'2022-11-23 18:25:28'),(5,2,NULL,'page',8,'My Wish List',NULL,NULL,4,0,0,NULL,'2022-11-23 18:25:28'),(8,2,NULL,'page',7,'My Cart',NULL,NULL,5,0,0,NULL,'2022-11-23 18:25:28'),(9,1,NULL,'link',NULL,'Playstore','#',NULL,1,0,0,NULL,NULL),(11,2,NULL,'page',4,'Become A Merchant',NULL,NULL,1,0,0,'2022-11-23 18:25:22','2022-11-23 18:25:28'),(12,5,1,'category',10,'Computers',NULL,NULL,1,0,0,'2022-11-24 09:11:07','2022-11-24 09:12:11');
/*!40000 ALTER TABLE `menu_elements` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_parent` int(10) unsigned DEFAULT NULL,
  `order_by` int(10) unsigned NOT NULL DEFAULT '865435',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Top Navbar left menu','top-navbar-left-menu',NULL,'normal_menu','top_navbar',1,NULL,1,1,1,'2021-09-25 16:33:00','2022-07-28 10:52:08'),(2,'Top Navbar right menu','top-navbar-right-menu',NULL,'normal_menu','top_navbar',1,NULL,2,1,1,'2021-09-25 16:33:00','2022-07-28 10:52:07'),(3,'All Categories','all-categories','fas fa-align-justify','multi_mega_menu','main_menu',1,NULL,865435,1,NULL,'2021-09-28 11:28:05','2021-09-28 11:28:05'),(4,'Pomalo Fashion','pomalo-fashion','ti-stamp','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 11:30:37','2022-11-24 08:12:17'),(5,'Computing','computing','fas fa-desktop','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:12:41','2022-11-24 08:12:36'),(6,'Electronics','electronics','fas fa-vote-yea','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:13:49','2022-11-24 08:12:51'),(7,'Watches & Jewelry','watches--jewelry','far fa-clock','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:14:48','2022-11-24 08:15:24'),(8,'Auto Mobiles & Bikes','auto-mobiles--bikes','fas fa-bicycle','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:19:11','2022-11-24 08:15:48'),(9,'Bags & Travel Gear','bags--travel-gear','fas fa-shopping-bag','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:20:26','2022-11-24 08:16:37'),(10,'Toys , Kids & Babies','toys-kids-babies','fab fa-kickstarter-k','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:22:09','2021-09-28 12:22:42'),(11,'Outdoor Fun & Sports','outdoor-fun-sports','fas fa-football-ball','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:24:07','2022-07-27 09:20:57'),(12,'Groceries & Pets','groceries-pets','far fa-object-group','mega_menu','main_menu',0,1,865435,1,1,'2021-09-28 12:25:32','2021-11-23 18:08:02'),(13,'Home Appliances','home-appliances','fas fa-tv','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:26:49','2022-11-24 08:17:08'),(14,'Home & Lifestyle','home--lifestyle','fas fa-home','mega_menu','main_menu',1,1,865435,1,1,'2021-09-28 12:27:14','2022-11-24 08:17:42'),(16,'Health & Beauty','health--beauty',NULL,'mega_menu','main_menu',1,1,865435,1,1,'2021-11-23 10:13:12','2022-11-24 08:18:21'),(17,'Middle Menu','middle-menu',NULL,'normal_menu','main_menu',1,NULL,865435,1,NULL,'2022-07-26 08:21:39','2022-07-26 08:21:39'),(21,'Top Left','top-left',NULL,'normal_menu','top_navbar',0,NULL,865435,1,1,'2022-07-28 10:34:46','2022-07-28 10:52:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `merchant_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `pricing_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maindescription` text COLLATE utf8mb4_unicode_ci,
  `pricing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benifitTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benifitDescription` text COLLATE utf8mb4_unicode_ci,
  `howitworkTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `howitworkDescription` text COLLATE utf8mb4_unicode_ci,
  `pricingTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricingDescription` text COLLATE utf8mb4_unicode_ci,
  `sellerRegistrationTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellerRegistrationDescription` text COLLATE utf8mb4_unicode_ci,
  `queryTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queryDescription` text COLLATE utf8mb4_unicode_ci,
  `faqTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqDescription` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `merchant_contents` WRITE;
/*!40000 ALTER TABLE `merchant_contents` DISABLE KEYS */;
INSERT INTO `merchant_contents` VALUES (1,NULL,NULL,'ALL YOU JUST NEED IS START SELLING','Become A Merchant','ALL YOU JUST NEED IS START SELLING','<p>Formal educational training is not required to become this type of merchant. However, having a degree in a related field, such as business or communications.</p>','Starting @ $7.00/month','Benefits','<p>One of the most important benefits a merchant account can bring is the ability to accept credit and debit cards. Credit cards and debit cards continue grow in preference among customers, gaining ground as the new norm.</p>','How it works','<p>Feed your mind with fascinating facts about the world around us.','Merchant Pricing','<p>Pricing is the process whereby a business sets the price at which it will sell its products and services, and may be part of the business marketing plan</p>','Register','<p>A seller registration form is a registration form used by businesses or organizations who sell items or services at a location.</p>','Send us your query','<p>A query is a question or a request for information expressed in a formal manner.</p>','Frequently Asked Questions','<p>A list of questions and answers relating to a particular subject, especially one giving basic information for users of a website.</p>','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `merchant_contents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_12_000546_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_02_08_105647_create_blocks_contents_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2020_04_23_090029_create_modules_table',1),(7,'2020_07_11_063308_create_intro_prefix_table',1),(8,'2020_07_11_161843_crate_table_currencie_table',1),(9,'2020_07_11_162112_create_language_table',1),(10,'2020_07_12_044721_create_date_formats_table',1),(11,'2020_07_13_061051_create_timezone_table',1),(12,'2020_07_20_095501_create_permissions_tables',1),(13,'2020_07_20_095817_create_role_permission_tables',1),(14,'2020_07_25_101854_create_support_ticket_category_table',1),(15,'2020_07_25_102024_create_support_ticket_piority_table',1),(16,'2020_07_25_135453_create_support_tickets_table',1),(17,'2020_07_26_093838_create_ticket_message_files_table',1),(18,'2020_08_07_124026_create_support_ticket_files_table',1),(19,'2020_08_09_044229_create_ticket_messages_table',1),(20,'2020_08_09_092856_create_ticket_statuses_table',1),(21,'2020_09_02_043711_create_unit_types_table',1),(22,'2020_09_02_052045_create_brands_table',1),(23,'2020_09_02_054852_create_business_settings_table',1),(24,'2020_09_02_084215_create_general_settings_table',1),(25,'2020_09_07_093017_create_products_table',1),(26,'2020_09_07_093446_create_product_variations_table',1),(27,'2020_09_09_120113_create_log_activity_table',1),(28,'2020_09_10_075009_create_roles_table',1),(29,'2020_09_23_092712_create_attendances_table',1),(30,'2020_09_24_130332_create_infix_module_managers_table',1),(31,'2020_10_02_034421_create_product_sku_table',1),(32,'2020_10_28_130927_create_payment_methods_table',1),(33,'2020_11_26_042410_create_features_table',1),(34,'2020_11_26_174602_create_holidays_table',1),(35,'2020_11_27_061245_create_policies_table',1),(36,'2020_11_29_050753_create_about_us_table',1),(37,'2020_11_29_101117_create_terms_conditions_table',1),(38,'2020_11_30_060928_create_contact_contents_table',1),(39,'2020_11_30_084330_create_careers_table',1),(40,'2020_11_30_112735_create_merchant_contents_table',1),(41,'2020_12_01_040841_create_benifits_table',1),(42,'2020_12_01_103212_create_categories_table',1),(43,'2020_12_02_070049_create_subscribe_contents_table',1),(44,'2020_12_03_063135_create_faqs_table',1),(45,'2020_12_03_095639_create_working_processes_table',1),(46,'2020_12_04_043310_create_pricings_table',1),(47,'2020_12_07_102001_create_return_exchanges_table',1),(48,'2020_12_07_103420_create_events_table',1),(49,'2020_12_07_131939_create_dynamic_pages_table',1),(50,'2020_12_07_135925_create_to_dos_table',1),(51,'2020_12_09_121552_create_groups_table',1),(52,'2020_12_10_102035_create_themes_table',1),(53,'2020_12_13_113438_create_category_images_table',1),(54,'2020_12_14_122951_create_social_providers_table',1),(55,'2020_12_14_123034_create_profiles_table',1),(56,'2020_12_15_122112_create_brand_category_table',1),(57,'2020_12_17_051339_create_countries_table',1),(58,'2020_12_17_104946_create_attributes_table',1),(59,'2020_12_17_105259_create_attribute_values_table',1),(60,'2020_12_18_082213_create_tags_table',1),(61,'2020_12_21_120908_create_subscriptions_table',1),(62,'2020_12_22_064826_add_sort_id_groups_table',1),(63,'2020_12_22_132712_create_contacts_table',1),(64,'2020_12_22_141042_create_in_queries_table',1),(65,'2020_12_23_084911_create_staff_table',1),(66,'2020_12_23_092946_create_staff_documents_table',1),(67,'2020_12_23_113630_create_departments_table',1),(68,'2020_12_23_115353_create_product_galary_images_table',1),(69,'2020_12_23_115414_create_product_tags_table',1),(70,'2020_12_25_051437_create_footer_widgets_table',1),(71,'2020_12_25_113053_add_user_type_to_users_table_after_column_email',1),(72,'2020_12_28_043226_create_colors_table',1),(73,'2020_12_31_055257_create_blog_categories_table',1),(74,'2020_12_31_081926_create_blog_posts_table',1),(75,'2021_01_03_061303_create_seller_social_links_table',1),(76,'2021_01_03_071324_create_blog_category_post_table',1),(77,'2021_01_03_071403_create_blog_post_tag_table',1),(78,'2021_01_03_120216_create_seller_products_table',1),(79,'2021_01_05_105821_create_blog_comments_table',1),(80,'2021_01_05_110423_create_blog_comment_replays_table',1),(81,'2021_01_06_060708_create_suppliers_table',1),(82,'2021_01_09_164635_create_seller_product_s_k_us_table',1),(83,'2021_01_09_180037_create_notifications_table',1),(84,'2021_01_10_140156_create_carts_table',1),(85,'2021_01_10_163151_create_blog_post_likes_table',1),(86,'2021_01_21_140241_create_customer_addresses_table',1),(87,'2021_01_24_131808_create_orders_table',1),(88,'2021_01_24_173216_create_order_package_details_table',1),(89,'2021_01_24_173329_create_order_product_details_table',1),(90,'2021_01_27_114823_create_digital_files_table',1),(91,'2021_01_27_174448_create_wishlists_table',1),(92,'2021_01_28_185049_create_wallet_balances_table',1),(93,'2021_01_31_113723_create_home_page_sections_table',1),(94,'2021_02_01_122047_create_homepage_custom_products_table',1),(95,'2021_02_01_122152_create_homepage_custom_categories_table',1),(96,'2021_02_01_122214_create_homepage_custom_brands_table',1),(97,'2021_02_01_142114_create_bank_details_table',1),(98,'2021_02_02_155129_create_order_payments_table',1),(99,'2021_02_03_142230_create_flash_deals_table',1),(100,'2021_02_03_143135_create_flash_deal_products_table',1),(101,'2021_02_04_141339_create_order_delivery_states_table',1),(102,'2021_02_07_105737_create_news_letters_table',1),(103,'2021_02_07_173109_create_bulk_s_m_s_table',1),(104,'2021_02_08_111855_create_email_templates_table',1),(105,'2021_02_08_142747_create_refund_reasons_table',1),(106,'2021_02_08_193641_create_coupons_table',1),(107,'2021_02_09_104911_create_shipping_methods_table',1),(108,'2021_02_09_130341_create_coupon_products_table',1),(109,'2021_02_09_150432_create_refund_requests_table',1),(110,'2021_02_09_152335_create_refund_request_details_table',1),(111,'2021_02_09_153503_create_refund_states_table',1),(112,'2021_02_09_155555_create_refund_products_table',1),(113,'2021_02_10_163156_create_refund_processes_table',1),(114,'2021_02_10_182354_create_referral_codes_table',1),(115,'2021_02_10_184539_create_delivery_processes_table',1),(116,'2021_02_11_123312_create_referral_code_setups_table',1),(117,'2021_02_13_125057_create_referral_uses_table',1),(118,'2021_02_14_170640_create_coupon_uses_table',1),(119,'2021_02_15_115409_create_customer_coupon_stores_table',1),(120,'2021_02_17_123320_create_product_reviews_table',1),(121,'2021_02_17_123429_create_seller_reviews_table',1),(122,'2021_02_17_123443_create_review_images_table',1),(123,'2021_02_17_123503_create_review_replies_table',1),(124,'2021_02_18_134139_create_product_up_sales_table',1),(125,'2021_02_18_134359_create_product_cross_sales_table',1),(126,'2021_02_18_134426_create_product_related_sales_table',1),(127,'2021_02_23_185648_create_menus_table',1),(128,'2021_02_23_194810_create_version_histories_table',1),(129,'2021_02_24_135826_create_menu_columns_table',1),(130,'2021_02_24_180335_create_menu_elements_table',1),(131,'2021_02_28_183320_create_multi_mega_menus_table',1),(132,'2021_03_02_130852_create_mega_menu_right_panels_table',1),(133,'2021_03_02_130927_create_mega_menu_bottom_panels_table',1),(134,'2021_03_03_175737_create_product_shippings_table',1),(135,'2021_03_08_110444_create_headers_table',1),(136,'2021_03_08_110507_create_header_category_panels_table',1),(137,'2021_03_08_110528_create_header_slider_panels_table',1),(138,'2021_03_08_110545_create_header_product_panels_table',1),(139,'2021_03_08_183219_create_new_user_zones_table',1),(140,'2021_03_08_183234_create_new_user_zone_products_table',1),(141,'2021_03_09_132336_create_header_new_user_zone_panels_table',1),(142,'2021_03_14_144759_create_new_user_zone_categories_table',1),(143,'2021_03_14_144834_create_new_user_zone_coupons_table',1),(144,'2021_03_17_192827_create_new_user_zone_coupon_categories_table',1),(145,'2021_03_18_173018_create_analytics_tools_table',1),(146,'2021_03_25_105021_create_states_table',1),(147,'2021_03_25_105054_create_cities_table',1),(148,'2021_04_18_111843_create_chart_of_accounts_table',1),(149,'2021_04_18_150157_create_payu_transactions_table',1),(150,'2021_04_20_134831_create_backendmenus_table',1),(151,'2021_04_20_134911_create_backendmenu_users_table',1),(152,'2021_04_24_095314_create_bank_accounts_table',1),(153,'2021_04_25_165206_create_transactions_table',1),(154,'2021_05_04_155633_create_gst_taxes_table',1),(155,'2021_05_06_124337_create_order_package_gst_table',1),(156,'2021_05_17_122458_create_gift_cards_table',1),(157,'2021_05_17_125912_create_email_template_types_table',1),(158,'2021_05_17_171227_create_gift_card_uses_table',1),(159,'2021_05_17_194735_create_gift_card_galary_images_table',1),(160,'2021_05_19_160431_create_guest_order_details_table',1),(161,'2021_05_26_184426_create_inhouse_order_carts_table',1),(162,'2021_06_01_173615_create_recent_view_products_table',1),(163,'2021_06_12_173154_create_cancel_reasons_table',1),(164,'2021_06_15_112727_create_compares_table',1),(165,'2021_06_15_133043_create_visitor_histories_table',1),(166,'2021_06_15_133555_create_ignore_ip_table',1),(167,'2021_06_16_132331_create_dashboard_setup_table',1),(168,'2021_06_20_125028_create_search_terms_table',1),(169,'2021_06_24_122317_create_digital_file_downloads_table',1),(170,'2021_06_26_181400_create_subscription_payment_info_table',1),(171,'2021_08_21_171154_create_customer_notifications_table',1),(172,'2021_08_24_111855_create_notification_settings_table',1),(173,'2021_08_25_111855_create_user_notification_settings_table',1),(174,'2021_10_17_164810_create_category_product_table',1),(175,'2021_10_21_114022_create_sms_templates_table',1),(176,'2021_10_21_115410_create_sms_template_types_table',1),(177,'2021_10_25_155921_GiftCardTag',1),(178,'2021_11_28_124959_add_currency_format_column_to_general_settings',1),(179,'2021_11_30_163218_product_id_foreign_remove_to_carts_table',1),(180,'2021_12_05_171133_create_facebook_messages_table',1),(181,'2021_12_08_102035_create_admin_colors_table',1),(182,'2021_12_08_102035_create_theme_colors_table',1),(183,'2021_12_11_170536_add_row_customer_crud_permission_to_permissions_table',1),(184,'2021_12_13_110634_create_page_builder_permission_table',1),(185,'2021_12_13_140220_remove_reset_db_form_permission_table',1),(186,'2021_12_13_180444_add_session_id_to_carts_table',1),(187,'2021_12_15_112951_create_sms_gateway_settings_table',1),(188,'2021_12_19_104116_add_affiliate_module',1),(189,'2021_12_19_115013_add_otp_row_to_modules_table',1),(190,'2021_12_23_081812_add_page_builder_module',1),(191,'2021_12_26_125438_add_sms_gateway_bussiness_seeting_row_table',1),(192,'2021_12_27_130537_create_form_builder_permission_table',1),(193,'2021_12_27_131929_create_custom_forms_table',1),(194,'2021_12_28_151539_add_others_column_to_users_table',1),(195,'2021_12_29_131650_add_bkash_module_table',1),(196,'2022_01_02_112510_add_note_column_to_orders_table',1),(197,'2022_01_02_114714_add_others_field_to_contacts_table',1),(198,'2022_01_04_131457_change_description_column_to_dynamic_pages_table',1),(199,'2022_01_10_104731_add_ssl_commerz_module',1),(200,'2022_01_12_125313_modify_superadmin_role_to_roles_table',1),(201,'2022_01_12_172422_create_carriers_table',1),(202,'2022_01_12_202221_remove_multivendor_permission_issue_from_role_permission',1),(203,'2022_01_13_095627_modify_shipping_method_table',1),(204,'2022_01_13_122553_create_shipping_configurations_table',1),(205,'2022_01_13_122658_add_default_role_permission_for_admin_role',1),(206,'2022_01_14_092734_add_lead_module_table',1),(207,'2022_01_17_175615_add_carrier_order_id_field_to_order_package_details_table',1),(208,'2022_01_18_130411_change_currency_rate_field',1),(209,'2022_01_18_152854_add_weight_field_to_product_sku_table',1),(210,'2022_01_20_125652_add_mercado_pago_module',1),(211,'2022_01_21_101328_add_permission_sidebar_for_configuration_marketing_module',1),(212,'2022_01_24_171847_add_admin_msg_field_to_notification_settings',1),(213,'2022_01_24_183901_add_shiprocket_module',1),(214,'2022_01_25_143449_create_pickup_locations_table',1),(215,'2022_02_01_160034_add_permission_sidebar_for_shipping_module',1),(216,'2022_02_02_094454_add_default_position_field_to_sidebars_table',1),(217,'2022_02_04_095633_add_height_weight_info_to_order_package_details_table',1),(218,'2022_02_05_105348_shipping_method_user_assign_table',1),(219,'2022_02_05_171836_add_column_to_refund_request_details_table',1),(220,'2022_02_07_103238_set_pickup_point_value_in_order_package_details_column',1),(221,'2022_02_07_142059_create_label_configs_table',1),(222,'2022_02_07_163154_add_new_permission_to_shipping_module',1),(223,'2022_02_08_175019_add_multivendor_to_modules',1),(224,'2022_02_11_082245_add_created_by_field_to_carriers_table',1),(225,'2022_02_11_090246_create_seller_wise_carrier_configs_table',1),(226,'2022_02_14_110834_modify_shipping_configurations_table',1),(227,'2022_02_14_124826_seller_default_shipping_config',1),(228,'2022_02_14_175028_seller_default_carrier_table',1),(229,'2022_02_14_175730_seller_default_shipping_rates_table',1),(230,'2022_02_15_161758_packing_permision_add_to_shipping_orders',1),(231,'2022_02_16_131625_add_customer_address_permission_table',1),(232,'2022_02_17_153347_add_is_paid_column_to_order_package_details',1),(233,'2022_02_21_174115_add_giftcard_default_template',1),(234,'2022_02_22_094455_create_g_s_t_groups_table',1),(235,'2022_02_22_180442_add_gst_group_to_products',1),(236,'2022_02_24_174922_previous_order_amount_fix',1),(237,'2022_02_25_171629_create_default_pickup_for_exsisting_seller',1),(238,'2022_02_28_094234_alter_customer_addresses_table',1),(239,'2022_03_03_104504_create_xml_sitemaps_table',1),(240,'2022_03_03_180118_add_homepage_seo_meta_to_general_settings_table',1),(241,'2022_03_04_154236_add_preloader_info_to_general_settings',1),(242,'2022_03_07_195511_minimum_shopping_amount_add_to_shipping_methods_table',1),(243,'2022_03_10_112409_create_order_address_details_table',1),(244,'2022_03_11_151758_create_media_managers_table',1),(245,'2022_03_14_201529_file_storage_permission_sidebar_to_root',1),(246,'2022_03_15_152222_add_previus_img_to_media_managers',1),(247,'2022_03_16_185315_create_used_media_table',1),(248,'2022_03_21_192609_add_password_reset_email_template',1),(249,'2022_03_25_182815_index_column_id_for_tables',1),(250,'2022_03_28_105150_change_color_scheme_permision_route_name',1),(251,'2022_04_06_095709_change_default_dashboard_border_color',1),(252,'2022_04_06_151218_additional_field_to_products_table',1),(253,'2022_04_18_144137_add_pickup_delivery_info_to_orders_table',1),(254,'2022_04_19_114438_add_goldPrice_module_to_module_manager',1),(255,'2022_04_22_123127_add_is_updated_to_carts_add_category_show_to_general_settings',1),(256,'2022_05_12_141838_add_two_fields_to_general_settings_table',1),(257,'2022_05_12_153301_add_social_links_to_general_settings_table',1),(258,'2022_05_17_151800_inhouse_order_permission_change',1),(259,'2022_05_18_115653_inhouse_orders_payment_create',1),(260,'2022_06_09_171902_tax_add_on_order_product_details',1),(261,'2022_06_20_125007_blog_permision_issue_fixed',1),(262,'2022_07_04_122335_add_is_buy_now_to_cart_table',1),(263,'2022_07_06_123724_homepage_data_section_add',1),(264,'2022_07_06_181409_create_home_page_custom_sections_table',1),(265,'2022_07_07_121157_create_mega_menu_ads_table',1),(266,'2022_07_08_124743_promotion_ads_bar_to_table',1),(267,'2022_07_14_191002_create_login_pages_table',1),(268,'2022_07_15_173807_AddColumnInThemeTable',1),(269,'2022_07_18_193728_add_wholesale_module_to_modules',1),(270,'2022_07_20_160741_add_show_title_to_new_user_zone',1),(271,'2022_07_22_111046_create_footer_contents_table',1),(272,'2022_08_01_190504_add_googlemerchantcenter_to_modules',1),(273,'2022_08_16_133115_min_max_sale_pice_update_to_seller_products_table',1),(274,'2022_08_24_164715_create_device_tokens_table',1),(275,'2022_08_25_120510_create_push_notifications_table',1),(276,'2022_08_29_125311_create_cache_table',1),(277,'2022_08_29_125651_create_sessions_table',1),(278,'2022_09_19_102954_add_custom_asset_to_menu_and_permission_table',1),(279,'2022_09_19_192543_create_jobs_table',1),(280,'2022_09_21_171230_add_msegat_sms_gateway',1),(281,'2022_09_30_114309_add_backendmenus_customers_bulkupload_table',1),(282,'2022_10_03_191831_add_storage_cdn_module_into_modules',1),(283,'2022_10_04_190224_remove_visitor_permission_table',1),(284,'2022_10_07_185811_add_shipping_amount_multiply_with_qty_to_shipping_configurations_table',1),(285,'2022_10_11_151616_create_seller_wise_payment_gateways_table',1),(286,'2022_10_12_182627_add_send_digital_file_template_to_email_template_table',1),(287,'2022_10_18_102123_add_permission_for_social_link',1),(288,'2020_12_31_052152_create_seller_accounts_table',2),(289,'2020_12_31_053135_create_seller_business_information_table',3),(290,'2020_12_31_053153_create_seller_bank_accounts_table',4),(291,'2020_12_31_053245_create_seller_warehouse_addresses_table',5),(292,'2020_12_31_053300_create_seller_return_addresses_table',6),(293,'2021_03_31_144111_create_seller_commissions_table',7),(294,'2021_04_11_171145_create_sub_sellers_table',8),(295,'2021_04_12_173028_create_sub_seller_accesses_table',9),(296,'2021_06_26_145008_create_seller_subcriptions_table',10),(297,'2021_10_30_154040_email_template_for_multivendor',11),(298,'2022_02_05_193256_add_notification_setting_for_multivendor',12),(299,'2021_10_30_183422_permission_for_multivendor',13),(300,'2021_10_30_191728_role_for_multivendor',14),(301,'2021_11_01_103053_sms_template_type_for_multivendor',15),(302,'2021_11_01_103347_sms_template_for_multivendor',16),(303,'2021_11_02_112411_email_template_type_for_multivendor',17),(304,'2022_01_12_203914_add_role_permission_to_multivendor_module',18),(305,'2022_02_16_174330_create_package_wise_seller_commisions_table',19),(306,'2022_02_16_183448_add_seller_commision_chart_of_account',20),(307,'2022_02_24_184058_rename_subseller_name_from_subsellar',21),(308,'2022_05_28_124453_add_subscription_type_field_to_seller_payment_info',22),(309,'2022_08_31_132235_backend_menu_multivendor',23),(310,'2022_09_15_173450_add_permission_menu_for_bulk_product_upload',24),(311,'2022_10_18_180910_follow_seller_table',25),(312,'2022_10_24_171609__add_permission_for_followers',26),(313,'2021_11_26_140754_create_otp_configurations_table',27),(314,'2021_12_18_190912_add_permission_sidebar_for_otp',28),(315,'2022_01_19_114051_add_verified_field_to_otp_configuration_table',29),(316,'2022_01_19_191226_add_template_for_user_login_otp',30),(317,'2022_09_02_101545_backend_menu_otp',31);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'AmazonS3',1,0,'2022-11-23 17:55:27','2022-11-23 17:55:27'),(3,'MultiVendor',1,2,'2022-11-23 17:55:27','2022-11-23 17:55:27'),(4,'Affiliate',0,3,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,'Otp',1,3,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,'Bkash',0,5,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(7,'SslCommerz',0,5,'2022-11-23 17:55:30','2022-11-23 17:55:30'),(8,'Lead',0,6,'2022-11-23 17:55:30','2022-11-23 17:55:30'),(9,'MercadoPago',0,7,'2022-11-23 17:55:30','2022-11-23 17:55:30'),(10,'ShipRocket',0,8,'2022-11-23 17:55:30','2022-11-23 17:55:30'),(11,'GoldPrice',1,9,'2022-11-23 17:55:34','2022-11-23 17:55:34'),(12,'WholeSale',1,10,'2022-11-23 17:55:35','2022-11-23 17:55:35'),(13,'GoogleMerchantCenter',1,11,'2022-11-23 17:55:36','2022-11-23 17:55:36'),(14,'StorageCDN',1,12,'2022-11-23 17:55:36','2022-11-23 17:55:36');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `multi_mega_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multi_mega_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multi_mega_menu_id` bigint(20) unsigned NOT NULL,
  `menu_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '768989',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `multi_mega_menus` WRITE;
/*!40000 ALTER TABLE `multi_mega_menus` DISABLE KEYS */;
INSERT INTO `multi_mega_menus` VALUES (1,'Lifestyle & Home',3,14,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(2,'TV & Home Appliances',3,13,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(3,'Groceries & Pets',3,12,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(4,'Outdoor Fun & Sports',3,11,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(5,'Toys , Kids & Babies',3,10,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(6,'Bag & Shoes',3,9,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(7,'Auto Mobiles & bikes',3,8,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(8,'Watches & Accessories',3,7,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(9,'Electronics Devices',3,6,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(10,'Computer & Accessories',3,5,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13'),(11,'Fashions',3,4,768989,0,'2022-11-23 16:02:13','2022-11-23 16:02:13');
/*!40000 ALTER TABLE `multi_mega_menus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `new_user_zone_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_zone_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_user_zone_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `new_user_zone_categories` WRITE;
/*!40000 ALTER TABLE `new_user_zone_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user_zone_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `new_user_zone_coupon_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_zone_coupon_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_user_zone_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `new_user_zone_coupon_categories` WRITE;
/*!40000 ALTER TABLE `new_user_zone_coupon_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user_zone_coupon_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `new_user_zone_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_zone_coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_user_zone_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `new_user_zone_coupons` WRITE;
/*!40000 ALTER TABLE `new_user_zone_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user_zone_coupons` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `new_user_zone_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_zone_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_user_zone_id` bigint(20) unsigned NOT NULL,
  `seller_product_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `new_user_zone_products_new_user_zone_id_foreign` (`new_user_zone_id`),
  KEY `new_user_zone_products_seller_product_id_foreign` (`seller_product_id`),
  CONSTRAINT `new_user_zone_products_new_user_zone_id_foreign` FOREIGN KEY (`new_user_zone_id`) REFERENCES `new_user_zones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `new_user_zone_products_seller_product_id_foreign` FOREIGN KEY (`seller_product_id`) REFERENCES `seller_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `new_user_zone_products` WRITE;
/*!40000 ALTER TABLE `new_user_zone_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user_zone_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `new_user_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_zones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_navigation_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_navigation_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_navigation_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `title_show` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_user_zones_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `new_user_zones` WRITE;
/*!40000 ALTER TABLE `new_user_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user_zones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `news_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_letters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `send_type` int(10) unsigned NOT NULL,
  `send_user_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple_role_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_role_id` tinyint(3) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `is_send` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `news_letters` WRITE;
/*!40000 ALTER TABLE `news_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_letters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_process_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_msg` longtext COLLATE utf8mb4_unicode_ci,
  `user_access_status` tinyint(1) NOT NULL DEFAULT '1',
  `seller_access_status` tinyint(1) NOT NULL DEFAULT '0',
  `admin_access_status` tinyint(1) NOT NULL DEFAULT '0',
  `staff_access_status` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_settings_delivery_process_id_foreign` (`delivery_process_id`),
  CONSTRAINT `notification_settings_delivery_process_id_foreign` FOREIGN KEY (`delivery_process_id`) REFERENCES `delivery_processes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (1,'Register',NULL,'system','Welcome to the system.','A customer has been registered.',0,0,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(2,'Offline recharge',NULL,'system','Offline recharge successful','Offline recharge done to user.',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(3,'Withdraw request declined',NULL,'system','Your withdraw request declined','A withdraw request has been declined.',0,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(4,'Withdraw request approve',NULL,'system','Withdraw request approve','A withdraw request has been approved.',0,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(5,'Order confirmation',NULL,'system','Order Confirmed','An order has been approved.',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(6,'Order Pending',1,'system','Order Pending','An order process change to Pending',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(7,'Order Processing',2,'system','Order Processing','An order process change to Processing',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(8,'Order Shipped',3,'system','Order Shipped','An order process change to Shipped',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(9,'Order Recieved',4,'system','Order Recieved','An order process change to Recieved',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(10,'Order Delivered',5,'system','Order Delivered','An order process change to Delivered',1,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(11,'Product review',NULL,'system','Product review.','A product reviewed by customer.',0,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(12,'Product disable',NULL,'system','Product disable.','A product has been disabled.',0,1,1,1,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:30'),(13,'New Order',NULL,'system','Order Is placed.','New Order placed',1,1,1,1,NULL,'2022-11-23 17:55:33','2022-11-23 17:55:33'),(14,'Seller product approval',NULL,'system','Product approved.','A seller product approved.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(15,'Seller product create',NULL,'system','Product created.','A seller created product.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(16,'Seller product update',NULL,'system','Product updated.','A seller updated product.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(17,'Seller payout',NULL,'system','Payout successfull.','A seller request to payout.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(18,'Seller suspended',NULL,'system','You are Suspended.','A seller has been suspended.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(19,'Seller approved',NULL,'system','You are approved.','A seller has been approved.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(20,'Seller Created',NULL,'system','Welcome as a seller.','A seller has been created.',0,1,1,1,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38'),(21,'Sub Seller Created',NULL,'system','Welcome as a sub seller.','A sub seller has been created.',0,1,0,0,'MultiVendor','2022-11-23 18:21:38','2022-11-23 18:21:38');
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_to_same_address` tinyint(1) NOT NULL DEFAULT '1',
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_address_details_order_id_foreign` (`order_id`),
  CONSTRAINT `order_address_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_address_details` WRITE;
/*!40000 ALTER TABLE `order_address_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_address_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_delivery_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_delivery_states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_package_id` bigint(20) unsigned NOT NULL,
  `delivery_status` bigint(20) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_delivery_states_created_by_foreign` (`created_by`),
  KEY `order_delivery_states_updated_by_foreign` (`updated_by`),
  CONSTRAINT `order_delivery_states_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `order_delivery_states_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_delivery_states` WRITE;
/*!40000 ALTER TABLE `order_delivery_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery_states` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_package_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_package_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `carrier_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `package_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_product` int(10) unsigned NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `shipping_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` bigint(20) unsigned DEFAULT NULL,
  `carrier_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cancelled` int(10) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `cancel_reason_id` int(10) unsigned DEFAULT NULL,
  `is_reviewed` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_status` bigint(20) unsigned NOT NULL DEFAULT '1',
  `last_updated_by` bigint(20) unsigned DEFAULT NULL,
  `gst_claimed` tinyint(1) NOT NULL DEFAULT '0',
  `tax_amount` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carrier_response` text COLLATE utf8mb4_unicode_ci,
  `pickup_point_id` bigint(20) unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL COMMENT 'gm',
  `length` double(8,2) DEFAULT NULL COMMENT 'cm',
  `breadth` double(8,2) DEFAULT NULL COMMENT 'cm',
  `height` double(8,2) DEFAULT NULL COMMENT 'cm',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_package_details` WRITE;
/*!40000 ALTER TABLE `order_package_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_package_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_package_gst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_package_gst` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint(20) unsigned NOT NULL,
  `gst_id` bigint(20) unsigned NOT NULL,
  `amount` double(28,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_package_gst` WRITE;
/*!40000 ALTER TABLE `order_package_gst` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_package_gst` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `amount` double(28,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `amount_goes_to_seller` tinyint(1) NOT NULL DEFAULT '0',
  `commision_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint(20) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `qty` int(10) unsigned NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_product_details` WRITE;
/*!40000 ALTER TABLE `order_product_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `order_payment_id` bigint(20) unsigned DEFAULT NULL,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` bigint(20) unsigned NOT NULL,
  `is_paid` int(10) unsigned NOT NULL DEFAULT '0',
  `is_confirmed` int(10) unsigned NOT NULL DEFAULT '0',
  `is_completed` int(10) unsigned NOT NULL DEFAULT '0',
  `is_cancelled` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_reason_id` int(10) unsigned DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_shipping_address` bigint(20) unsigned DEFAULT NULL,
  `customer_billing_address` bigint(20) unsigned DEFAULT NULL,
  `number_of_package` int(10) unsigned DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `discount_total` double DEFAULT NULL,
  `shipping_total` double DEFAULT NULL,
  `number_of_item` int(10) unsigned DEFAULT NULL,
  `order_status` int(10) unsigned DEFAULT NULL,
  `tax_amount` double DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'home_delivery',
  `pickup_location_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_number_unique` (`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `otp_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `otp_configurations` WRITE;
/*!40000 ALTER TABLE `otp_configurations` DISABLE KEYS */;
INSERT INTO `otp_configurations` VALUES (1,'code_validation_time','10','2022-11-23 18:22:05','2022-11-24 14:30:41'),(2,'otp_type_registration','email,','2022-11-23 18:22:05','2022-11-24 14:30:41'),(3,'otp_type_order','email,','2022-11-23 18:22:05','2022-11-24 14:30:41'),(4,'otp_activation_for_seller','1','2022-11-23 18:22:05','2022-11-23 18:22:05'),(5,'otp_activation_for_customer','1','2022-11-23 18:22:05','2022-11-23 18:22:05'),(6,'otp_activation_for_order','1','2022-11-23 18:22:05','2022-11-23 18:22:05'),(7,'order_otp_on_verified_customer','0','2022-11-23 18:22:05','2022-11-23 18:22:05'),(8,'otp_on_login','0','2022-11-23 18:22:05','2022-11-23 18:22:05'),(9,'otp_on_password_reset','1','2022-11-23 18:22:05','2022-11-24 14:30:41'),(10,'order_cancel_limit_on_verified_customer','6','2022-11-23 18:22:05','2022-11-24 14:30:41');
/*!40000 ALTER TABLE `otp_configurations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `package_wise_seller_commisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_wise_seller_commisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) unsigned NOT NULL,
  `package_id` bigint(20) unsigned NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_wise_seller_commisions_package_id_foreign` (`package_id`),
  KEY `package_wise_seller_commisions_seller_id_foreign` (`seller_id`),
  CONSTRAINT `package_wise_seller_commisions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `order_package_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `package_wise_seller_commisions_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `package_wise_seller_commisions` WRITE;
/*!40000 ALTER TABLE `package_wise_seller_commisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_wise_seller_commisions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `module_status` tinyint(4) NOT NULL DEFAULT '0',
  `logo` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT '1',
  `updated_by` int(10) unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Cash On Delivery','System',1,1,'payment_gateway/cod.jpg',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Wallet','System',1,1,'payment_gateway/cod.jpg',1,1,'2022-11-23 17:55:28','2022-11-24 15:52:34'),(3,'PayPal','System',1,1,'payment_gateway/paypal.png',1,1,'2022-11-23 17:55:28','2022-11-24 15:56:10'),(4,'Stripe','System',0,1,'payment_gateway/stripe.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(5,'PayStack','System',0,1,'payment_gateway/paystack.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(6,'RazorPay','System',0,1,'payment_gateway/razorpay.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(7,'Bank Payment','System',0,1,'payment_gateway/bank_payment.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(8,'Instamojo','System',0,1,'payment_gateway/intamojo.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(9,'PayTM','System',0,1,'payment_gateway/paytm.jpg',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(10,'Midtrans','System',0,1,'payment_gateway/midtrans.jpg',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(11,'PayUMoney','System',0,1,'payment_gateway/payumoney-logo.jpg',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(12,'JazzCash','System',0,1,'payment_gateway/JazzCash.jpg',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(13,'Google Pay','System',0,1,'payment_gateway/GooglePay.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(14,'FlutterWave','System',0,1,'payment_gateway/flutterWavePayment.png',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `payu_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payu_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paid_for_id` bigint(20) unsigned DEFAULT NULL,
  `paid_for_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','failed','successful','invalid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`),
  KEY `payu_transactions_status_index` (`status`),
  KEY `payu_transactions_verified_at_index` (`verified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `payu_transactions` WRITE;
/*!40000 ALTER TABLE `payu_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payu_transactions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `updated_by` int(10) unsigned NOT NULL DEFAULT '1',
  `type` int(11) DEFAULT NULL COMMENT '1 for main menu, 2 for sub menu , 3 action',
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,NULL,'Dashboard','admin.dashboard',1,1,1,1,NULL,NULL,NULL),(2,1,1,'Widget','widget_card',1,1,1,2,NULL,NULL,NULL),(577,1,2,'Total Product','widget_total_product',1,1,1,3,NULL,NULL,NULL),(579,1,2,'Total Customer','widget_total_customer',1,1,1,3,NULL,NULL,NULL),(580,1,2,'Visitor','widget_visitor',1,1,1,3,NULL,NULL,NULL),(581,1,2,'Total Order','widget_total_order',1,1,1,3,NULL,NULL,NULL),(582,1,2,'Total Pending Order','widget_total_pending_order',1,1,1,3,NULL,NULL,NULL),(583,1,2,'Total Completed Order','widget_total_completed_order',1,1,1,3,NULL,NULL,NULL),(584,1,2,'Total Sale','widget_total_sale',1,1,1,3,NULL,NULL,NULL),(585,1,2,'Total Review','widget_total_review',1,1,1,3,NULL,NULL,NULL),(586,1,2,'Total Revenue','widget_total_revenue',1,1,1,3,NULL,NULL,NULL),(587,1,2,'Active Customer','widget_active_customer',1,1,1,3,NULL,NULL,NULL),(588,1,2,'Total Subcriber','widget_total_subcriber',1,1,1,3,NULL,NULL,NULL),(589,1,1,'Graph','dashboard_graph',1,1,1,2,NULL,NULL,NULL),(590,1,589,'Products','dashboard_graph_products',1,1,1,3,NULL,NULL,NULL),(591,1,589,'Orders Summary','dashboard_graph_orders_summary',1,1,1,3,NULL,NULL,NULL),(593,1,589,'Guest/Authorized Order Today','dashboard_graph_gueast_authorize_order_today',1,1,1,3,NULL,NULL,NULL),(594,1,589,'Today Order summary','dashboard_graph_today_order_summary',1,1,1,3,NULL,NULL,NULL),(595,1,589,'Site Analytics','dashboard_graph_site_analytics',1,1,1,3,NULL,NULL,NULL),(596,1,1,'Top Ten Product','dashboard_top_ten_product',1,1,1,2,NULL,NULL,NULL),(598,1,1,'Category Wise Product Qty','dashboard_category_wise_product_qty',1,1,1,2,NULL,NULL,NULL),(599,1,1,'Category Wise Product Sale','dashboard_category_wise_product_sale',1,1,1,2,NULL,NULL,NULL),(600,1,1,'Coupon Wise Sale','dashboard_coupon_wise_sale',1,1,1,2,NULL,NULL,NULL),(601,1,1,'New Customers','dashboard_new_customers',1,1,1,2,NULL,NULL,NULL),(602,1,1,'Recently Added Products','dashboard_recently_added_products',1,1,1,2,NULL,NULL,NULL),(603,1,1,'Top Refferers','dashboard_top_refferers',1,1,1,2,NULL,NULL,NULL),(604,1,1,'Latest Order','dashboard_latest_order',1,1,1,2,NULL,NULL,NULL),(605,1,1,'Latest Search Keyword','dashboard_latest_search_keyword',1,1,1,2,NULL,NULL,NULL),(606,1,1,'Appealed Disputed','dashboard_appealed_disputed',1,1,1,2,NULL,NULL,NULL),(607,1,1,'Recent Reviews','dashboard_recent_reviews',1,1,1,2,NULL,NULL,NULL),(4,1,68,'Dashboard Setup','appearance.dashoboard.index',1,1,1,2,NULL,NULL,NULL),(5,1,4,'Update','appearance.dashoboard.status_update',1,1,1,3,NULL,NULL,NULL),(26,3,NULL,'Frontend CMS','frontend_cms',1,1,1,1,NULL,NULL,NULL),(27,3,26,'Homepage','frontendcms.widget.index',1,1,1,2,NULL,NULL,NULL),(28,3,27,'Update','frontendcms.homepage.update',1,1,1,3,NULL,NULL,NULL),(29,3,26,'Feature List','frontendcms.features.index',1,1,1,2,NULL,NULL,NULL),(30,3,29,'Create','frontendcms.features.store',1,1,1,3,NULL,NULL,NULL),(31,3,29,'Update','frontendcms.features.update',1,1,1,3,NULL,NULL,NULL),(32,3,29,'Destroy','frontendcms.features.delete',1,1,1,3,NULL,NULL,NULL),(40,3,26,'Return Exchange','frontendcms.return-exchange.index',1,1,1,2,NULL,NULL,NULL),(41,3,40,'Return Exchange Update','frontendcms.return-exchange.update',1,1,1,3,NULL,NULL,NULL),(42,3,26,'Contact-Content','frontendcms.contact-content.index',1,1,1,2,NULL,NULL,NULL),(43,3,42,'Contact-Content Update','frontendcms.contact-content.update',1,1,1,3,NULL,NULL,NULL),(44,3,42,'Query Create','frontendcms.query.store',1,1,1,3,NULL,NULL,NULL),(45,3,42,'Query Update','frontendcms.query.update',1,1,1,3,NULL,NULL,NULL),(46,3,42,'Query Destroy','frontendcms.query.delete',1,1,1,3,NULL,NULL,NULL),(47,3,42,'Query Status Change','frontendcms.query.status',1,1,1,3,NULL,NULL,NULL),(48,3,26,'Dynamic Page','frontendcms.dynamic-page.index',1,1,1,2,NULL,NULL,NULL),(49,3,48,'Create','frontendcms.dynamic-page.store',1,1,1,3,NULL,NULL,NULL),(50,3,48,'Update','frontendcms.dynamic-page.update',1,1,1,3,NULL,NULL,NULL),(51,3,48,'Destroy','frontendcms.dynamic-page.delete',1,1,1,3,NULL,NULL,NULL),(52,3,48,'Status Change','frontendcms.dynamic-page.status',1,1,1,3,NULL,NULL,NULL),(53,3,26,'Footer Settings','footerSetting.footer.index',1,1,1,2,NULL,NULL,NULL),(54,3,53,'Copyright Content Update','copyright_content_update',1,1,1,3,NULL,NULL,NULL),(55,3,53,'About Content Update','about_content_update',1,1,1,3,NULL,NULL,NULL),(56,3,53,'Company Content Update','company_content_update',1,1,1,3,NULL,NULL,NULL),(57,3,53,'Account Content Update','account_content_update',1,1,1,3,NULL,NULL,NULL),(58,3,53,'Service Content Update','service_content_update',1,1,1,3,NULL,NULL,NULL),(59,3,53,'Create Page','footerSetting.footer.widget-store',1,1,1,3,NULL,NULL,NULL),(60,3,53,'Update Page','footerSetting.footer.widget-update',1,1,1,3,NULL,NULL,NULL),(61,3,53,'Destroy Page','footer.widget-delete',1,1,1,3,NULL,NULL,NULL),(62,3,26,'Subscription','frontendcms.subscribe-content.index',1,1,1,2,NULL,NULL,NULL),(63,3,62,'Subscription Content Update','frontendcms.subscribe-content.update',1,1,1,3,NULL,NULL,NULL),(630,3,26,'POP-UP','frontendcms.popup-content.index',1,1,1,2,NULL,NULL,NULL),(64,3,26,'About-us Content','frontendcms.about-us.index',1,1,1,2,NULL,NULL,NULL),(65,3,64,'About-us Content Update','frontendcms.about-us.update',1,1,1,3,NULL,NULL,NULL),(66,3,26,'Title','frontendcms.title_index',1,1,1,2,NULL,NULL,NULL),(67,3,66,'Title Update','frontendcms.title_settings.update',1,1,1,3,NULL,NULL,NULL),(68,4,NULL,'Appearance','appearance',1,1,1,1,NULL,NULL,NULL),(69,4,68,'Theme','appearance.themes.index',1,1,1,2,NULL,NULL,NULL),(70,4,69,'Add New','appearance.themes.store',1,1,1,3,NULL,NULL,NULL),(71,4,69,'Make Active','appearance.themes.active',1,1,1,3,NULL,NULL,NULL),(72,4,69,'Show','appearance.themes.show',1,1,1,3,NULL,NULL,NULL),(73,4,68,'Menus','menu.manage',1,1,1,2,NULL,NULL,NULL),(74,4,73,'Create','menu.store',1,1,1,3,NULL,NULL,NULL),(75,4,73,'Update','menu.edit',1,1,1,3,NULL,NULL,NULL),(76,4,73,'Delete','menu.delete',1,1,1,3,NULL,NULL,NULL),(77,4,73,'Status Change','menu.status',1,1,1,3,NULL,NULL,NULL),(78,4,73,'Setup','menu.setup',1,1,1,3,NULL,NULL,NULL),(79,4,68,'Header','appearance.header.index',1,1,1,2,NULL,NULL,NULL),(80,4,79,'Status Change','appearance.header.update_status',1,1,1,3,NULL,NULL,NULL),(81,4,79,'Setup','appearance.header.setup',1,1,1,3,NULL,NULL,NULL),(553,4,68,'Dashboard Color','appearance.color.index',1,1,1,2,NULL,NULL,NULL),(554,4,553,'Create','appearance.color.create',1,1,1,3,NULL,NULL,NULL),(555,4,553,'Store','appearance.color.store',1,1,1,3,NULL,NULL,NULL),(556,4,553,'Delete','appearance.color.delete',1,1,1,3,NULL,NULL,NULL),(557,4,553,'Activate','appearance.color.activate',1,1,1,3,NULL,NULL,NULL),(558,4,553,'Clone','appearance.color.clone',1,1,1,3,NULL,NULL,NULL),(559,4,553,'Edit','appearance.color.edit',1,1,1,3,NULL,NULL,NULL),(560,4,553,'Update','appearance.color.update',1,1,1,3,NULL,NULL,NULL),(561,4,68,'Color Scheme','appearance.themeColor.index',1,1,1,2,NULL,NULL,NULL),(562,4,561,'Update','appearance.themeColor.update',1,1,1,3,NULL,NULL,NULL),(563,4,561,'Activate','appearance.themeColor.activate',1,1,1,3,NULL,NULL,NULL),(82,5,NULL,'Customer','cusotmer.list_active',1,1,1,1,NULL,NULL,NULL),(83,5,82,'Active Status Change','customer.update_active_status',1,1,1,2,NULL,NULL,NULL),(84,5,82,'Details','customer.show_details',1,1,1,2,NULL,NULL,NULL),(85,5,82,'In-active List','customer.list_inactive',1,1,1,2,NULL,NULL,NULL),(86,6,NULL,'Blog Module','blog_module',1,1,1,1,NULL,NULL,NULL),(87,6,86,'Blog Posts','blog.posts.index',1,1,1,2,NULL,NULL,NULL),(88,6,87,'Create','blog.posts.create',1,1,1,3,NULL,NULL,NULL),(89,6,87,'Update','blog.posts.edit',1,1,1,3,NULL,NULL,NULL),(90,6,87,'Destroy','blog.posts.destroy',1,1,1,3,NULL,NULL,NULL),(716,6,87,'Show','blog.posts.show',1,1,1,3,NULL,NULL,NULL),(91,6,87,'Status Change','blog.post.status.update',1,1,1,3,NULL,NULL,NULL),(92,6,87,'Approval Change','blog.post.approval',1,1,1,3,NULL,NULL,NULL),(93,6,86,'Blog Category','blog.categories.index',1,1,1,2,NULL,NULL,NULL),(94,6,93,'Create','blog.categories.store',1,1,1,3,NULL,NULL,NULL),(95,6,93,'Update','blog.categories.edit',1,1,1,3,NULL,NULL,NULL),(96,6,93,'Delete','blog.categories.destroy',1,1,1,3,NULL,NULL,NULL),(112,8,NULL,'Wallet Manage','wallet_manage',1,1,1,1,NULL,NULL,NULL),(113,8,112,'Recharge Approval','wallet_recharge.get-data',1,1,1,2,NULL,NULL,NULL),(114,8,113,'Appeoval Status','wallet_charge.update_status',1,1,1,3,NULL,NULL,NULL),(564,8,112,'Bank Recharge','bank_recharge.index',1,1,1,2,NULL,NULL,NULL),(115,8,112,'Offline Recharge','wallet_recharge.offline_index_get_data',1,1,1,2,NULL,NULL,NULL),(116,8,115,'Recharge','wallet_recharge.offline',1,1,1,3,NULL,NULL,NULL),(565,8,112,'Configuration','wallet.wallet_configuration',1,1,1,2,NULL,NULL,NULL),(566,8,565,'Update','wallet.wallet_configuration_update',1,1,1,3,NULL,NULL,NULL),(120,9,NULL,'Contact Request','contact_request',1,1,1,1,NULL,NULL,NULL),(513,9,120,'Contact Request List','contactrequest.contact.index',1,1,1,2,NULL,NULL,NULL),(121,9,120,'Delete','contactrequest.contact.delete',1,1,1,2,NULL,NULL,NULL),(122,10,NULL,'Marketing','marketing_module',1,1,1,1,NULL,NULL,NULL),(123,10,122,'Flash Deal','marketing.flash-deals',1,1,1,2,NULL,NULL,NULL),(124,10,123,'Create','marketing.flash-deals.create',1,1,1,3,NULL,NULL,NULL),(125,10,123,'Update','marketing.flash-deals.edit',1,1,1,3,NULL,NULL,NULL),(126,10,123,'Delete','marketing.flash-deals.delete',1,1,1,3,NULL,NULL,NULL),(127,10,123,'Status Change','marketing.flash-deals.status',1,1,1,3,NULL,NULL,NULL),(128,10,123,'Featured Enable','marketing.flash-deals.featured',1,1,1,3,NULL,NULL,NULL),(129,10,122,'Coupon','marketing.coupon.get-data',1,1,1,2,NULL,NULL,NULL),(130,10,129,'Create','marketing.coupon.store',1,1,1,3,NULL,NULL,NULL),(131,10,129,'Update','marketing.coupon.update',1,1,1,3,NULL,NULL,NULL),(132,10,129,'Delete','marketing.coupon.delete',1,1,1,3,NULL,NULL,NULL),(133,10,122,'New User Zone','marketing.new-user-zone',1,1,1,2,NULL,NULL,NULL),(134,10,133,'Create','marketing.new-user-zone.create',1,1,1,3,NULL,NULL,NULL),(135,10,133,'Update','marketing.new-user-zone.edit',1,1,1,3,NULL,NULL,NULL),(136,10,133,'Delete','marketing.new-user-zone.delete',1,1,1,3,NULL,NULL,NULL),(137,10,133,'Status Change','marketing.new-user-zone.status',1,1,1,3,NULL,NULL,NULL),(138,10,133,'Featured Enable','marketing.new-user-zone.featured',1,1,1,3,NULL,NULL,NULL),(139,10,122,'News-Letter','marketing.news-letter.get-data',1,1,1,2,NULL,NULL,NULL),(140,10,139,'Create','marketing.news-letter.create',1,1,1,3,NULL,NULL,NULL),(141,10,139,'Update','marketing.news-letter.edit',1,1,1,3,NULL,NULL,NULL),(142,10,139,'Delete','marketing.news-letter.delete',1,1,1,3,NULL,NULL,NULL),(143,10,122,'Bulk SMS','marketing.bulk-sms.get-data',1,1,1,2,NULL,NULL,NULL),(144,10,143,'Create','marketing.bulk-sms.store',1,1,1,3,NULL,NULL,NULL),(145,10,143,'Update','marketing.bulk-sms.edit',1,1,1,3,NULL,NULL,NULL),(146,10,143,'Delete','marketing.bulk-sms.delete',1,1,1,3,NULL,NULL,NULL),(147,10,122,'Subscriber','marketing.subscriber.get-data',1,1,1,2,NULL,NULL,NULL),(148,10,147,'Delete','marketing.subscriber.delete',1,1,1,3,NULL,NULL,NULL),(149,10,147,'Status Change','marketing.subscriber.status',1,1,1,3,NULL,NULL,NULL),(150,10,122,'Referal Code','marketing.referral-code.get-data',1,1,1,2,NULL,NULL,NULL),(151,10,150,'Update','marketing.referral-code.update-setup',1,1,1,3,NULL,NULL,NULL),(152,10,150,'Status Change','marketing.referral-code.status',1,1,1,3,NULL,NULL,NULL),(168,13,NULL,'Gift Card','gift_card_manage',1,1,1,1,NULL,NULL,NULL),(169,13,168,'Gift Card','admin.giftcard.index',1,1,1,2,NULL,NULL,NULL),(170,13,169,'List','admin.giftcard.get-data',1,1,1,3,NULL,NULL,NULL),(171,13,169,'Create','admin.giftcard.create',1,1,1,3,NULL,NULL,NULL),(172,13,169,'Update','admin.giftcard.edit',1,1,1,3,NULL,NULL,NULL),(173,13,169,'Delete','admin.giftcard.delete',1,1,1,3,NULL,NULL,NULL),(174,13,169,'Status Change','admin.giftcard.status',1,1,1,3,NULL,NULL,NULL),(175,14,NULL,'Product Module','product_module',1,1,1,1,NULL,NULL,NULL),(176,14,175,'Category','product.category.index',1,1,1,2,NULL,NULL,NULL),(177,14,176,'List','product.category.index',1,1,1,3,NULL,NULL,NULL),(178,14,176,'Create','product.category.store',1,1,1,3,NULL,NULL,NULL),(179,14,176,'Update','product.category.edit',1,1,1,3,NULL,NULL,NULL),(180,14,176,'Delete','product.category.delete',1,1,1,3,NULL,NULL,NULL),(181,14,175,'Brand','product.brands.index',1,1,1,2,NULL,NULL,NULL),(182,14,181,'List','product.load_more_brands',1,1,1,3,NULL,NULL,NULL),(183,14,181,'Create','product.brand.create',1,1,1,3,NULL,NULL,NULL),(184,14,181,'Update','product.brand.edit',1,1,1,3,NULL,NULL,NULL),(185,14,181,'Delete','product.brand.destroy',1,1,1,3,NULL,NULL,NULL),(186,14,181,'Status','product.brand.update_active_status',1,1,1,3,NULL,NULL,NULL),(187,14,181,'Featured','product.brand.update_active_feature',1,1,1,3,NULL,NULL,NULL),(188,14,175,'Attribute','product.attribute.index',1,1,1,2,NULL,NULL,NULL),(189,14,188,'List','product.attribute.get_list',1,1,1,3,NULL,NULL,NULL),(190,14,188,'Create','product.attribute.store',1,1,1,3,NULL,NULL,NULL),(191,14,188,'Update','product.attribute.edit',1,1,1,3,NULL,NULL,NULL),(192,14,188,'Delete','product.attribute.destroy',1,1,1,3,NULL,NULL,NULL),(193,14,175,'Units','product.units.index',1,1,1,2,NULL,NULL,NULL),(194,14,193,'List','product.units.get_list',1,1,1,3,NULL,NULL,NULL),(195,14,193,'Create','product.units.store',1,1,1,3,NULL,NULL,NULL),(196,14,193,'Update','product.units.update',1,1,1,3,NULL,NULL,NULL),(197,14,193,'Delete','product.units.destroy',1,1,1,3,NULL,NULL,NULL),(198,14,175,'Products','product.index',1,1,1,2,NULL,NULL,NULL),(199,14,198,'List','product.get-data',1,1,1,3,NULL,NULL,NULL),(200,14,198,'Create','product.create',1,1,1,3,NULL,NULL,NULL),(201,14,198,'Update','product.edit',1,1,1,3,NULL,NULL,NULL),(202,14,198,'Clone','product.clone',1,1,1,3,NULL,NULL,NULL),(203,14,198,'Delete','product.destroy',1,1,1,3,NULL,NULL,NULL),(205,14,198,'Product By SKU','product.get-data-sku',1,1,1,3,NULL,NULL,NULL),(206,14,198,'Product Status','product.update_active_status',1,1,1,3,NULL,NULL,NULL),(207,14,198,'Product Status By SKU','product.sku.status',1,1,1,3,NULL,NULL,NULL),(209,14,198,'ProductSKu Update','product.sku.update',1,1,1,3,NULL,NULL,NULL),(210,14,198,'ProductSKu Delete','product.sku.delete',1,1,1,3,NULL,NULL,NULL),(211,14,175,'Recent Viewed','product.recent_view_product_config',1,1,1,2,NULL,NULL,NULL),(212,14,211,'Update','product.recent_view_product_config_update',1,1,1,3,NULL,NULL,NULL),(281,15,NULL,'Review','review_module',1,1,1,1,NULL,NULL,NULL),(282,15,281,'Product Review','review.product.index',1,1,1,2,NULL,NULL,NULL),(283,15,282,'Approve All','review.product.approve-all',1,1,1,3,NULL,NULL,NULL),(284,15,282,'Review Delete','review.product.delete',1,1,1,3,NULL,NULL,NULL),(285,15,282,'Approve Single','review.product.approve',1,1,1,3,NULL,NULL,NULL),(286,15,282,'All List','review.product.get-all-data',1,1,1,3,NULL,NULL,NULL),(287,15,282,'Pending List','review.product.get-pending-data',1,1,1,3,NULL,NULL,NULL),(288,15,282,'Declined List','review.product.get-declined-data',1,1,1,3,NULL,NULL,NULL),(482,15,281,'Company Reviews','review.seller.index',1,1,1,2,NULL,NULL,NULL),(483,15,482,'Approve All','review.seller.approve-all',1,1,1,3,NULL,NULL,NULL),(484,15,482,'Review Delete','review.seller.delete',1,1,1,3,NULL,NULL,NULL),(485,15,482,'Approve Single','review.seller.approve',1,1,1,3,NULL,NULL,NULL),(486,15,482,'All List','review.seller.get-all-data',1,1,1,3,NULL,NULL,NULL),(487,15,482,'Pending List','review.seller.get-pending-data',1,1,1,3,NULL,NULL,NULL),(488,15,482,'declined List','review.seller.get-declined-data',1,1,1,3,NULL,NULL,NULL),(489,15,281,'My Product Review','seller.product-reviews.index',1,1,1,2,NULL,NULL,NULL),(490,15,489,'Reply','seller.product-reviews.reply',1,1,1,3,NULL,NULL,NULL),(491,15,489,'List','seller.product-reviews.get-data',1,1,1,3,NULL,NULL,NULL),(567,15,281,'Configuration','review.review_configuration',1,1,1,2,NULL,NULL,NULL),(568,15,567,'Update','review.review_configuration.update',1,1,1,3,NULL,NULL,NULL),(290,16,NULL,'Admin Order Manage','order_manage',1,1,1,1,NULL,NULL,NULL),(291,16,290,'Order Manage','order_manage.total_sales_index',1,1,1,2,NULL,NULL,NULL),(292,16,291,'Pending','pending_orders',1,1,1,3,NULL,NULL,NULL),(293,16,291,'Confirmed','confirmed_orders',1,1,1,3,NULL,NULL,NULL),(294,16,291,'Completed','completed_orders',1,1,1,3,NULL,NULL,NULL),(295,16,291,'Pending Payment','pending_payment_orders',1,1,1,3,NULL,NULL,NULL),(296,16,291,'Cancelled','cancelled_orders',1,1,1,3,NULL,NULL,NULL),(298,16,291,'Order Status','order_manage.order_update_info',1,1,1,3,NULL,NULL,NULL),(299,16,291,'Order Details','order_manage.show_details',1,1,1,3,NULL,NULL,NULL),(300,16,290,'Delivery Process','order_manage.process_index',1,1,1,2,NULL,NULL,NULL),(301,16,300,'List','order_manage.process_list',1,1,1,3,NULL,NULL,NULL),(302,16,300,'Create','order_manage.process_store',1,1,1,3,NULL,NULL,NULL),(303,16,300,'Edit','order_manage.process_update',1,1,1,3,NULL,NULL,NULL),(304,16,300,'Delete','order_manage.process_destroy',1,1,1,3,NULL,NULL,NULL),(464,16,290,'Cancel Reason','order_manage.cancel_reason_index',1,1,1,2,NULL,NULL,NULL),(465,16,464,'List','order_manage.cancel_reason_list',1,1,1,3,NULL,NULL,NULL),(466,16,465,'Create','order_manage.cancel_reason_store',1,1,1,3,NULL,NULL,NULL),(467,16,465,'Edit','order_manage.cancel_reason_update',1,1,1,3,NULL,NULL,NULL),(468,16,465,'Delete','order_manage.cancel_reason_destroy',1,1,1,3,NULL,NULL,NULL),(297,16,291,'Inhouse','inhouse_orders',1,1,1,3,NULL,NULL,NULL),(305,16,290,'InHouse Order','admin.inhouse-order.index',1,1,1,2,NULL,NULL,'2022-11-23 17:55:37'),(306,16,305,'Confirmed','inhouse_order_confirmed',1,1,1,3,NULL,NULL,NULL),(307,16,305,'Completed','inhouse_order_completed',1,1,1,3,NULL,NULL,NULL),(308,16,305,'Pending','inhouse_order_pending',1,1,1,3,NULL,NULL,NULL),(309,16,305,'Cancelled','inhouse_order_cancelled',1,1,1,3,NULL,NULL,NULL),(310,16,305,'Create','admin.inhouse-order.create',1,1,1,3,NULL,NULL,NULL),(311,16,305,'Delete','admin.inhouse-order.delete',1,1,1,3,NULL,NULL,NULL),(312,17,NULL,'Refund Manage','refund_manage',1,1,1,1,NULL,NULL,NULL),(313,17,312,'Pending List','refund.total_refund_list',1,1,1,2,NULL,NULL,NULL),(314,17,312,'Details','refund.refund_show_details',1,1,1,2,NULL,NULL,NULL),(315,17,312,'Update Status','refund.update_refund_request_by_admin',1,1,1,2,NULL,NULL,NULL),(316,17,312,'Confirmed List','refund.confirmed_refund_requests',1,1,1,2,NULL,NULL,NULL),(318,17,312,'Update Refund Process','refund.update_refund_detail_state_by_seller',1,1,1,2,NULL,NULL,NULL),(319,17,312,'Refund Reasons','refund.reasons_list',1,1,1,2,NULL,NULL,NULL),(320,17,319,'Create','refund.reasons_store',1,1,1,3,NULL,NULL,NULL),(321,17,319,'Update','refund.reasons_update',1,1,1,3,NULL,NULL,NULL),(322,17,319,'Delete','refund.destroy',1,1,1,3,NULL,NULL,NULL),(323,17,312,'Refund Process','refund.process_index',1,1,1,2,NULL,NULL,NULL),(324,17,323,'Create','refund.process_store',1,1,1,3,NULL,NULL,NULL),(325,17,323,'Update','refund.process_update',1,1,1,3,NULL,NULL,NULL),(326,17,323,'Delete','refund.process_destroy',1,1,1,3,NULL,NULL,NULL),(327,17,312,'Configuration','refund.config',1,1,1,2,NULL,NULL,NULL),(328,17,327,'Update','refund.refund_config_store',1,1,1,3,NULL,NULL,NULL),(329,18,NULL,'System Settings','system_settings',1,1,1,1,NULL,NULL,NULL),(330,18,329,'General Settings','generalsetting.index',1,1,1,2,NULL,NULL,NULL),(331,18,330,'Activations','generalsetting.activation_index',1,1,1,3,NULL,NULL,NULL),(332,18,330,'General','general_info',1,1,1,3,NULL,NULL,NULL),(333,18,330,'Company Info','company_info',1,1,1,3,NULL,NULL,NULL),(334,18,330,'SMTP','smtp_info',1,1,1,3,NULL,NULL,NULL),(335,18,330,'SMS','sms_info',1,1,1,3,NULL,NULL,NULL),(336,18,330,'Activation Update','update_activation_status',1,1,1,3,NULL,NULL,NULL),(337,18,330,'Company Info Save','company_information_update',1,1,1,3,NULL,NULL,NULL),(338,18,330,'SMTP Update','smtp_gateway_credentials_update',1,1,1,3,NULL,NULL,NULL),(339,18,330,'SMS Update','sms_gateway_credentials_update',1,1,1,3,NULL,NULL,NULL),(340,18,330,'General Update','company_information_update',1,1,1,3,NULL,NULL,NULL),(341,18,329,'Email Template Settings','email_templates.index',1,1,1,2,NULL,NULL,NULL),(342,18,341,'Create','email_templates.create',1,1,1,3,NULL,NULL,NULL),(343,18,341,'Manage','email_templates.manage',1,1,1,3,NULL,NULL,NULL),(344,18,341,'Status Update','email_templates.update_status',1,1,1,3,NULL,NULL,NULL),(626,18,329,'SMS Template Settings','sms_templates.index',1,1,1,2,NULL,NULL,NULL),(627,18,626,'Create','sms_templates.create',1,1,1,3,NULL,NULL,NULL),(628,18,626,'Manage','sms_templates.manage',1,1,1,3,NULL,NULL,NULL),(629,18,626,'Status Update','sms_templates.update_status',1,1,1,3,NULL,NULL,NULL),(537,18,329,'Maintenance mode','maintenance.index',1,1,1,2,NULL,NULL,NULL),(538,18,537,'Maintenance mode update','maintenance.update',1,1,1,3,NULL,NULL,NULL),(539,18,329,'Update System','generalsetting.updatesystem',1,1,1,2,NULL,NULL,NULL),(540,18,539,'Update System Submit','generalsetting.updatesystem.submit',1,1,1,3,NULL,NULL,NULL),(541,18,329,'Module Manager','modulemanager.index',1,1,1,2,NULL,NULL,NULL),(542,18,541,'Module Upload','modulemanager.uploadModule',1,1,1,3,NULL,NULL,NULL),(543,18,541,'Module Delete','deleteModule',1,1,1,3,NULL,NULL,NULL),(544,18,541,'Module Enable','moduleAddOnsEnable',1,1,1,3,NULL,NULL,NULL),(545,18,541,'Module Disable','moduleAddOnsDisable',1,1,1,3,NULL,NULL,NULL),(550,18,329,'Notification Setting','notificationsetting.index',1,1,1,2,NULL,NULL,NULL),(551,18,550,'Notification Edit','notificationsetting.edit',1,1,1,3,NULL,NULL,NULL),(552,18,550,'Notification Update','notificationsetting.update',1,1,1,3,NULL,NULL,NULL),(345,19,NULL,'Payment Gateways','payment_gateway.index',1,1,1,1,NULL,NULL,NULL),(346,19,345,'Enabling','update_payment_activation_status',1,1,1,2,NULL,NULL,NULL),(347,20,NULL,'Setup Module','setup_module',1,1,1,1,NULL,NULL,NULL),(348,20,347,'Language','languages.index',1,1,1,2,NULL,NULL,NULL),(349,20,348,'Create','languages.store',1,1,1,3,NULL,NULL,NULL),(350,20,348,'Update','languages.update',1,1,1,3,NULL,NULL,NULL),(351,20,348,'Delete','languages.destroy',1,1,1,3,NULL,NULL,NULL),(352,20,348,'Translation','language.translate_view',1,1,1,3,NULL,NULL,NULL),(353,20,348,'RTL','languages.update_rtl_status',1,1,1,3,NULL,NULL,NULL),(354,20,348,'Activate','languages.update_active_status',1,1,1,3,NULL,NULL,NULL),(355,20,347,'currency','currencies.index',1,1,1,2,NULL,NULL,NULL),(356,20,355,'Create','currencies.store',1,1,1,3,NULL,NULL,NULL),(357,20,355,'Update','currencies.update',1,1,1,3,NULL,NULL,NULL),(358,20,355,'Delete','currencies.destroy',1,1,1,3,NULL,NULL,NULL),(359,20,355,'Activate','currencies.update_active_status',1,1,1,3,NULL,NULL,NULL),(360,20,347,'Analytics','setup.analytics.index',1,1,1,2,NULL,NULL,NULL),(361,20,360,'Google Analytics Update','setup.google-analytics-update',1,1,1,3,NULL,NULL,NULL),(362,20,360,'Facebook pixel Update','setup.facebook-pixel-update',1,1,1,3,NULL,NULL,NULL),(97,20,347,'Tag','tags.index',1,1,1,2,NULL,NULL,NULL),(98,20,97,'Create','tags.create',1,1,1,3,NULL,NULL,NULL),(99,20,97,'Update','tags.edit',1,1,1,3,NULL,NULL,NULL),(100,20,97,'Delete','tags.destroy',1,1,1,3,NULL,NULL,NULL),(369,21,NULL,'Location','location_manage',1,1,1,1,NULL,NULL,NULL),(370,21,369,'Country','setup.country.index',1,1,1,2,NULL,NULL,NULL),(371,21,370,'Create','setup.country.store',1,1,1,3,NULL,NULL,NULL),(372,21,370,'Update','setup.country.update',1,1,1,3,NULL,NULL,NULL),(373,21,370,'Enable','setup.country.status',1,1,1,3,NULL,NULL,NULL),(374,21,369,'State','setup.state.index',1,1,1,2,NULL,NULL,NULL),(375,21,374,'Create','setup.state.store',1,1,1,3,NULL,NULL,NULL),(376,21,374,'Update','setup.state.update',1,1,1,3,NULL,NULL,NULL),(377,21,374,'Enable','setup.state.status',1,1,1,3,NULL,NULL,NULL),(378,21,369,'City','setup.city.index',1,1,1,2,NULL,NULL,NULL),(379,21,378,'Create','setup.city.store',1,1,1,3,NULL,NULL,NULL),(380,21,378,'Update','setup.city.update',1,1,1,3,NULL,NULL,NULL),(381,21,378,'Enable','setup.city.status',1,1,1,3,NULL,NULL,NULL),(382,22,NULL,'GST Setup','gst_setup',1,1,1,1,NULL,NULL,NULL),(383,22,382,'List','gst_tax.index',1,1,1,2,NULL,NULL,NULL),(384,22,383,'Create','gst_tax.store',1,1,1,3,NULL,NULL,NULL),(385,22,383,'Update','gst_tax.update',1,1,1,3,NULL,NULL,NULL),(386,22,383,'Delete','gst_tax.destroy',1,1,1,3,NULL,NULL,NULL),(387,22,382,'Configuration','gst_tax.configuration_index',1,1,1,2,NULL,NULL,NULL),(388,22,387,'Update','gst_tax.configuration_update',1,1,1,3,NULL,NULL,NULL),(389,23,NULL,'Accounting','account_module',1,1,1,1,NULL,NULL,NULL),(390,23,389,'Chart of Account','account.chart-of-accounts.index',1,1,1,2,NULL,NULL,NULL),(391,23,390,'Create','account.chart-of-accounts.store',1,1,1,3,NULL,NULL,NULL),(392,23,390,'Update','account.chart-of-accounts.edit',1,1,1,3,NULL,NULL,NULL),(393,23,390,'Delete','account.chart-of-accounts.destroy',1,1,1,3,NULL,NULL,NULL),(394,23,389,'Bank Account','account.bank-accounts.index',1,1,1,2,NULL,NULL,NULL),(395,23,394,'Create','account.bank-accounts.store',1,1,1,3,NULL,NULL,NULL),(396,23,394,'Update','account.bank-accounts.edit',1,1,1,3,NULL,NULL,NULL),(397,23,394,'Delete','account.bank-accounts.destroy',1,1,1,3,NULL,NULL,NULL),(398,23,394,'Show','account.bank.statement',1,1,1,3,NULL,NULL,NULL),(457,23,389,'Income','account.incomes.index',1,1,1,2,NULL,NULL,NULL),(458,23,457,'Create','account.incomes.store',1,1,1,3,NULL,NULL,NULL),(459,23,457,'Update','account.incomes.edit',1,1,1,3,NULL,NULL,NULL),(460,23,457,'Delete','account.incomes.destroy',1,1,1,3,NULL,NULL,NULL),(461,23,389,'Expense','account.expenses.index',1,1,1,2,NULL,NULL,NULL),(462,23,461,'Create','account.expenses.store',1,1,1,3,NULL,NULL,NULL),(400,23,461,'Update','account.expenses.edit',1,1,1,3,NULL,NULL,NULL),(401,23,461,'Delete','account.expenses.destroy',1,1,1,3,NULL,NULL,NULL),(402,23,389,'Profit','account.profit',1,1,1,2,NULL,NULL,NULL),(403,23,389,'Transaction','account.transaction',1,1,1,2,NULL,NULL,NULL),(404,23,403,'List','account.transaction_dtbl',1,1,1,3,NULL,NULL,NULL),(405,23,389,'Statement','account.statement',1,1,1,2,NULL,NULL,NULL),(406,23,405,'List','account.statement_dtbl',1,1,1,3,NULL,NULL,NULL),(407,31,NULL,'Support Ticket','support_tickets',1,1,1,1,NULL,NULL,NULL),(408,31,407,'Ticket','ticket.tickets.index',1,1,1,2,NULL,NULL,NULL),(409,31,408,'List','ticket.tickets.get-data',1,1,1,3,NULL,NULL,NULL),(410,31,408,'Create','ticket.tickets.create',1,1,1,3,NULL,NULL,NULL),(411,31,408,'Update','ticket.tickets.edit',1,1,1,3,NULL,NULL,NULL),(412,31,408,'Assign Ticket','ticket.my_ticket',1,1,1,3,NULL,NULL,NULL),(413,31,408,'Show','ticket.tickets.show',1,1,1,3,NULL,NULL,NULL),(414,31,408,'Delete','ticket.tickets.destroy',1,1,1,3,NULL,NULL,NULL),(415,31,407,'Category','ticket.category.index',1,1,1,2,NULL,NULL,NULL),(416,31,415,'List','ticket.category.index',1,1,1,3,NULL,NULL,NULL),(417,31,415,'Create','ticket.category.store',1,1,1,3,NULL,NULL,NULL),(418,31,415,'Update','ticket.category.update',1,1,1,3,NULL,NULL,NULL),(419,31,415,'Delete','ticket.category.delete',1,1,1,3,NULL,NULL,NULL),(420,31,415,'Status','ticket.category.status',1,1,1,3,NULL,NULL,NULL),(421,31,407,'Priority','ticket.priority.index',1,1,1,2,NULL,NULL,NULL),(422,31,421,'List','ticket.priority.index',1,1,1,3,NULL,NULL,NULL),(423,31,421,'Create','ticket.priority.store',1,1,1,3,NULL,NULL,NULL),(424,31,421,'Update','ticket.priority.update',1,1,1,3,NULL,NULL,NULL),(425,31,421,'Delete','ticket.priority.delete',1,1,1,3,NULL,NULL,NULL),(426,31,421,'Status','ticket.priority.status',1,1,1,3,NULL,NULL,NULL),(427,31,407,'Status','ticket.status.index',1,1,1,2,NULL,NULL,NULL),(428,31,427,'List','ticket.status.index',1,1,1,3,NULL,NULL,NULL),(429,31,427,'Create','ticket.status.store',1,1,1,3,NULL,NULL,NULL),(430,31,427,'Update','ticket.status.update',1,1,1,3,NULL,NULL,NULL),(431,31,427,'Delete','ticket.status.delete',1,1,1,3,NULL,NULL,NULL),(432,31,427,'Status','ticket.status.status',1,1,1,3,NULL,NULL,NULL),(433,30,NULL,'HR Module','human_resource',1,1,1,1,NULL,NULL,NULL),(434,30,433,'Staff','staffs.index',1,1,1,2,NULL,NULL,NULL),(435,30,434,'List','staffs.index',1,1,1,3,NULL,NULL,NULL),(436,30,434,'Create','staffs.store',1,1,1,3,NULL,NULL,NULL),(437,30,434,'Update','staffs.edit',1,1,1,3,NULL,NULL,NULL),(438,30,434,'Details','staffs.view',1,1,1,3,NULL,NULL,NULL),(439,30,434,'Enable','staffs.update_active_status',1,1,1,3,NULL,NULL,NULL),(440,30,434,'Delete','staffs.destroy',1,1,1,3,NULL,NULL,NULL),(441,30,433,'Role','permission.roles.index',1,1,1,2,NULL,NULL,NULL),(442,30,441,'List','permission.roles.index',1,1,1,3,NULL,NULL,NULL),(443,30,441,'Create','permission.roles.store',1,1,1,3,NULL,NULL,NULL),(444,30,441,'Update','permission.roles.edit',1,1,1,3,NULL,NULL,NULL),(445,30,441,'Delete','permission.roles.destroy',1,1,1,3,NULL,NULL,NULL),(446,30,441,'Assign permission','permission.permissions.index',1,1,1,3,NULL,NULL,NULL),(447,30,441,'Permission Store','permission.permissions.store',1,1,1,3,NULL,NULL,NULL),(448,30,433,'Department','departments.index',1,1,1,2,NULL,NULL,NULL),(449,30,448,'List','departments.index',1,1,1,3,NULL,NULL,NULL),(450,30,448,'Create','departments.store',1,1,1,3,NULL,NULL,NULL),(451,30,448,'Update','departments.edit',1,1,1,3,NULL,NULL,NULL),(452,30,448,'Delete','departments.delete',1,1,1,3,NULL,NULL,NULL),(448,30,433,'Attendance Report','attendance_report.index',1,1,1,2,NULL,NULL,NULL),(449,30,433,'Attendance','attendances.index',1,1,1,2,NULL,NULL,NULL),(450,30,449,'Store','attendances.store',1,1,1,3,NULL,NULL,NULL),(453,30,433,'Event','events.index',1,1,1,2,NULL,NULL,NULL),(454,30,453,'List','events.index',1,1,1,3,NULL,NULL,NULL),(455,30,453,'Create','events.store',1,1,1,3,NULL,NULL,NULL),(456,30,453,'Update','events.update',1,1,1,3,NULL,NULL,NULL),(457,30,453,'Delete','events.delete',1,1,1,3,NULL,NULL,NULL),(453,30,433,'Holiday Setup','holidays.index',1,1,1,2,NULL,NULL,NULL),(454,30,453,'List','holidays.index',1,1,1,3,NULL,NULL,NULL),(455,30,453,'Store','holidays.store',1,1,1,3,NULL,NULL,NULL),(456,30,453,'Copy','last.year.data',1,1,1,3,NULL,NULL,NULL),(469,32,NULL,'Bulk Upload','bulk_upload',1,1,1,1,NULL,NULL,NULL),(470,32,469,'Gift Card','admin.giftcard.bulk_gift_card_upload_page',1,1,1,2,NULL,NULL,NULL),(471,32,470,'Upload','admin.giftcard.bulk_gift_card_store',1,1,1,3,NULL,NULL,NULL),(472,32,469,'Product','product.bulk_product_upload_page',1,1,1,2,NULL,NULL,NULL),(473,32,472,'Upload','product.bulk_product_store',1,1,1,3,NULL,NULL,NULL),(474,32,469,'Brand','product.bulk_brand_upload_page',1,1,1,2,NULL,NULL,NULL),(475,32,474,'Upload','product.bulk_brand_store',1,1,1,3,NULL,NULL,NULL),(476,32,469,'Category','product.bulk_category_upload_page',1,1,1,2,NULL,NULL,NULL),(477,32,476,'Upload','product.bulk_category_upload',1,1,1,3,NULL,NULL,NULL),(478,33,NULL,'Export CSV','export_csv',1,1,1,1,NULL,NULL,NULL),(479,33,478,'Brand','product.csv_brand_download',1,1,1,2,NULL,NULL,NULL),(480,33,478,'Category','product.csv_category_download',1,1,1,2,NULL,NULL,NULL),(481,33,478,'Unit type','product.csv_unit_download',1,1,1,2,NULL,NULL,NULL),(496,24,NULL,'Sidebar Manager','sidebar-manager.index',1,1,1,1,NULL,NULL,NULL),(499,26,NULL,'Log Activity','activity_logs',1,1,1,1,NULL,NULL,NULL),(500,26,499,'All activity Log','activity_log',1,1,1,2,NULL,NULL,NULL),(575,26,500,'Clear activity Log','activity_log.destroy_all',1,1,1,3,NULL,NULL,NULL),(501,26,499,'Login Activity','activity_log.login',1,1,1,2,NULL,NULL,NULL),(576,26,501,'Clear Login Activity','activity_log.login.destroy_all',1,1,1,3,NULL,NULL,NULL),(502,27,NULL,'Visitors Setup','visitors_setup',1,1,1,1,NULL,NULL,NULL),(503,27,502,'Ignore IP List','ignore_ip_list',1,1,1,2,NULL,NULL,NULL),(504,28,NULL,'Customer Panel','customer_panel',1,1,1,1,NULL,NULL,NULL),(505,28,504,'My Purchased Orders','frontend.my_purchase_order_list',1,1,1,2,NULL,NULL,NULL),(506,28,504,'My Purchased Giftcards','frontend.purchased-gift-card',1,1,1,2,NULL,NULL,NULL),(507,28,504,'My Purchased Digital Products','frontend.digital_product',1,1,1,2,NULL,NULL,NULL),(508,28,504,'My Wishlists','frontend.my-wishlist',1,1,1,2,NULL,NULL,NULL),(509,28,504,'My Refund & Desputes','refund.frontend.index',1,1,1,2,NULL,NULL,NULL),(510,28,504,'My Coupon Lists','customer_panel.coupon',1,1,1,2,NULL,NULL,NULL),(511,28,504,'My Accounts','frontend.customer_profile',1,1,1,2,NULL,NULL,NULL),(574,28,504,'My Referral','customer_panel.referral',1,1,1,2,NULL,NULL,NULL),(516,34,NULL,'Admin Report','admin_report',1,1,1,1,NULL,NULL,NULL),(518,34,516,'User Searches','report.user_searches',1,1,1,2,NULL,NULL,NULL),(519,34,516,'Visitor Report','report.visitor_report',1,1,1,2,NULL,NULL,NULL),(520,34,516,'Inhouse Product Sale','report.inhouse_product_sale',1,1,1,2,NULL,NULL,NULL),(521,34,516,'Product Stock','report.product_stock',1,1,1,2,NULL,NULL,NULL),(522,34,516,'Wishlist Report','report.wishlist',1,1,1,2,NULL,NULL,NULL),(523,34,516,'Wallet Recharge History','report.wallet_recharge_history',1,1,1,2,NULL,NULL,NULL),(525,34,516,'Top Customers','report.top_customer',1,1,1,2,NULL,NULL,NULL),(526,34,516,'Top Selling Items','report.top_selling_item',1,1,1,2,NULL,NULL,NULL),(527,34,516,'Orders','report.order',1,1,1,2,NULL,NULL,NULL),(528,34,516,'Payments','report.payment',1,1,1,2,NULL,NULL,NULL),(529,34,516,'Product Reviews','report.product_review',1,1,1,2,NULL,NULL,NULL),(530,34,516,'Company Reviews','report.seller_review',1,1,1,2,NULL,NULL,NULL),(546,36,NULL,'Backup','backup.index',1,1,1,1,NULL,NULL,NULL),(547,36,546,'Create','backup.create',1,1,1,2,NULL,NULL,NULL),(548,36,546,'Delete','backup.delete',1,1,1,2,NULL,NULL,NULL),(549,36,546,'Import','backup.import',1,1,1,2,NULL,NULL,NULL),(631,38,NULL,'Utilities','utilities.index',1,1,1,1,NULL,NULL,NULL),(632,38,631,'Clear Cache','utilities_clear_cache',1,1,1,2,NULL,NULL,NULL),(633,38,631,'Clear Log','utilities_clear_log',1,1,1,2,NULL,NULL,NULL),(634,38,631,'Change Debug mode','utilities_change_debug_mode',1,1,1,2,NULL,NULL,NULL),(635,38,631,'Change Force HTTPS','utilities_change_force_https',1,1,1,2,NULL,NULL,NULL),(637,38,631,'XML Sitemap','utilities_xml_sitemap',1,1,1,2,NULL,NULL,NULL),(642,18,329,'Social Configuration','generalsetting.social_login_configuration',1,1,1,2,NULL,NULL,NULL),(643,18,642,'Social Login Update','generalsetting.social_login_configuration.update',1,1,1,3,NULL,NULL,NULL),(644,18,642,'Messanger Chat Update','generalsetting.messangerChat.update',1,1,1,3,NULL,NULL,NULL),(645,5,82,'Create','admin.customer.create',1,1,1,2,NULL,NULL,NULL),(646,5,82,'Update','admin.customer.edit',1,1,1,2,NULL,NULL,NULL),(647,5,82,'Delete','admin.customer.destroy',1,1,1,2,NULL,NULL,NULL),(734,5,82,'Upload','admin.customer.bulk_upload',1,1,1,2,NULL,NULL,NULL),(660,41,NULL,'Page Builder','page_builder',1,1,1,1,'PageBuilder',NULL,NULL),(661,41,660,'Custom Page','page_builder.pages.index',1,1,1,2,'PageBuilder',NULL,NULL),(662,41,661,'List','page_builder.pages.index',1,1,1,3,'PageBuilder',NULL,NULL),(663,41,661,'View','page_builder.pages.show',1,1,1,3,'PageBuilder',NULL,NULL),(664,41,661,'Update','page_builder.pages.update',1,1,1,3,'PageBuilder',NULL,NULL),(665,41,661,'Delete','page_builder.pages.destroy',1,1,1,3,'PageBuilder',NULL,NULL),(666,41,661,'Design','page_builder.pages.design.update',1,1,1,3,'PageBuilder',NULL,NULL),(667,42,NULL,'Form Builder','form_builder',1,1,1,1,'FormBuilder',NULL,NULL),(668,42,667,'Forms','form_builder.forms.index',1,1,1,2,'FormBuilder',NULL,NULL),(669,42,668,'List','form_builder.forms.index',1,1,1,3,'FormBuilder',NULL,NULL),(670,42,668,'Form Builder','form_builder.builder',1,1,1,3,'FormBuilder',NULL,NULL),(671,42,668,'View','form_builder.forms.show',1,1,1,3,'FormBuilder',NULL,NULL),(636,10,122,'Configuration','marketing.configuration',1,1,1,2,NULL,NULL,NULL),(363,44,NULL,'Shipping','shipping_methods',1,1,1,1,NULL,NULL,NULL),(364,44,363,'Shipping Rate','shipping_methods.index',1,1,1,2,NULL,NULL,NULL),(365,44,364,'Create','shipping_methods.store',1,1,1,3,NULL,NULL,NULL),(366,44,364,'Update','shipping_methods.update',1,1,1,3,NULL,NULL,NULL),(367,44,364,'Delete','shipping_methods.destroy',1,1,1,3,NULL,NULL,NULL),(368,44,364,'Status','shipping_methods.update_status',1,1,1,3,NULL,NULL,NULL),(678,44,364,'Approve','shipping_methods.update_approve_status',1,1,1,3,NULL,NULL,NULL),(679,44,363,'Carriers','shipping.carriers.index',1,1,1,2,NULL,NULL,NULL),(680,44,679,'Status','shipping.carriers.status',1,1,1,3,NULL,NULL,NULL),(692,44,679,'Update','shipping.carrier.update',1,1,1,3,NULL,NULL,NULL),(693,44,679,'Delete','shipping.carrier.destroy',1,1,1,3,NULL,NULL,NULL),(681,44,363,'Pickup Locations','shipping.pickup_locations.index',1,1,1,2,NULL,NULL,NULL),(682,44,681,'Create','shipping.pickup_locations.store',1,1,1,3,NULL,NULL,NULL),(683,44,681,'Update','shipping.pickup_locations.update',1,1,1,3,NULL,NULL,NULL),(684,44,681,'Delete','shipping.pickup_locations.destroy',1,1,1,3,NULL,NULL,NULL),(685,44,681,'Status','shipping.pickup_locations.status',1,1,1,3,NULL,NULL,NULL),(686,44,681,'Set Default Pickup Location','shipping.pickup_locations.set',1,1,1,3,NULL,NULL,NULL),(687,44,363,'Shipping Orders','shipping.pending_orders.index',1,1,1,2,NULL,NULL,NULL),(688,44,687,'Download Label','shipping.label_generate',1,1,1,3,NULL,NULL,NULL),(689,44,687,'Update Shipping Methods','shipping.method_update',1,1,1,3,NULL,NULL,NULL),(694,44,687,'Carriers Order Update','shipping.carrier_order_update',1,1,1,3,NULL,NULL,NULL),(690,44,363,'Configuration','shipping.configuration.index',1,1,1,2,NULL,NULL,NULL),(691,44,690,'Update','shipping.configuration.update',1,1,1,3,NULL,NULL,NULL),(696,44,687,'Invoice','shipping.invoice_generate',1,1,1,3,NULL,NULL,NULL),(695,44,687,'packaging','shipping.packaging.update',1,1,1,3,NULL,NULL,NULL),(697,44,363,'Address Update','shipping.customer_address_update',1,1,1,3,NULL,NULL,NULL),(698,44,363,'Carrier Status','shipping.carrier_status',1,1,1,3,NULL,NULL,NULL),(699,18,329,'Homepage SEO Setup','generalsetting.seo-setup',1,1,1,2,NULL,NULL,NULL),(700,18,699,'Update','generalsetting.seo-setup-update',1,1,1,3,NULL,NULL,NULL),(703,4,68,'Preloader Setting','appearance.pre-loader',1,1,1,2,NULL,NULL,NULL),(704,4,703,'Update','appearance.pre-loader.update',1,1,1,3,NULL,NULL,NULL),(701,46,NULL,'File Storage','file-storage.index',1,1,1,1,NULL,NULL,NULL),(702,46,701,'Update','DefaultStorageSettingSubmit',1,1,1,2,NULL,NULL,NULL),(705,45,NULL,'Media Manager','media-manager',1,1,1,1,NULL,NULL,NULL),(706,45,705,'All Upload Files','media-manager.upload_files',1,1,1,2,NULL,NULL,NULL),(707,45,705,'New Upload','media-manager.new-upload',1,1,1,2,NULL,NULL,NULL),(708,45,705,'Delete','media-manager.delete_media_file',1,1,1,2,NULL,NULL,NULL),(717,3,26,'Promotion bar','frontendcms.promotionbar.index',1,1,1,2,NULL,NULL,NULL),(718,3,717,'Update','frontendcms.promotionbar.update',1,1,1,3,NULL,NULL,NULL),(719,3,26,'Ads bar','frontendcms.ads_bar.index',1,1,1,2,NULL,NULL,NULL),(720,3,719,'Update','frontendcms.ads_bar.update',1,1,1,3,NULL,NULL,NULL),(721,3,26,'Login Page','frontendcms.login_page',1,1,1,2,NULL,NULL,NULL),(722,3,721,'Update','frontendcms.login_page.update',1,1,1,3,NULL,NULL,NULL),(726,4,68,'Custom asset','appearance.custom-asset',1,1,1,2,NULL,NULL,NULL),(727,4,726,'Custom asset','appearance.custom-asset-store',1,1,1,3,NULL,NULL,NULL),(732,18,329,'Push Notification Setup','admin.push.notification',1,1,1,2,NULL,NULL,NULL),(733,18,732,'Update','push.notification.store',1,1,1,3,NULL,NULL,NULL),(734,38,631,'Remove Visitor','utilities.remove_visitor',1,1,1,2,NULL,NULL,NULL),(735,3,26,'Social Link','frontendcms.socialLink',1,1,1,2,NULL,NULL,NULL),(578,1,2,'Total Seller','widget_total_seller',1,1,1,3,'MultiVendor',NULL,NULL),(592,1,589,'Sellers','dashboard_graph_sellers',1,1,1,3,'MultiVendor',NULL,NULL),(597,1,1,'Top Ten Seller','dashboard_top_ten_seller',1,1,1,2,'MultiVendor',NULL,NULL),(608,37,NULL,'Seller Dashboard','seller.dashboard',1,1,1,1,'MultiVendor',NULL,NULL),(609,37,608,'Widgets','seller_widgets',1,1,1,2,'MultiVendor',NULL,NULL),(610,37,609,'Total Product','seller_widgets_total_product',1,1,1,3,'MultiVendor',NULL,NULL),(611,37,609,'Total Order','seller_widgets_total_order',1,1,1,3,'MultiVendor',NULL,NULL),(612,37,609,'Total delivery Order','seller_widgets_total_delivery_order',1,1,1,3,'MultiVendor',NULL,NULL),(622,37,609,'Total Non-delivery Order','seller_widgets_non_total_delivery_order',1,1,1,3,'MultiVendor',NULL,NULL),(623,37,609,'Total Sale','seller_widgets_total_sale',1,1,1,3,'MultiVendor',NULL,NULL),(613,37,609,'Shop Review','seller_widgets_shop_review',1,1,1,3,'MultiVendor',NULL,NULL),(614,37,609,'Total Product Refund','seller_widgets_total_product_refund',1,1,1,3,'MultiVendor',NULL,NULL),(615,37,608,'Graphs','seller_graphs',1,1,1,2,'MultiVendor',NULL,NULL),(616,37,615,'Total Order Summary','seller_graphs_total_order_summary',1,1,1,3,'MultiVendor',NULL,NULL),(617,37,615,'Total Sale Summary','seller_graphs_total_sale_summary',1,1,1,3,'MultiVendor',NULL,NULL),(618,37,615,'Sales Vs Refund','seller_graphs_sales_vs_refund',1,1,1,3,'MultiVendor',NULL,NULL),(625,37,608,'Top Sale Products','seller_top_sale_products',1,1,1,2,'MultiVendor',NULL,NULL),(619,37,608,'Latest Uploaded Products','seller_latest_uploaded_products',1,1,1,2,'MultiVendor',NULL,NULL),(620,37,608,'Latest Orders','seller_latest_orders',1,1,1,2,'MultiVendor',NULL,NULL),(621,37,608,'Latest Refund Request','seller_latest_refund_request',1,1,1,2,'MultiVendor',NULL,NULL),(624,37,608,'Subscription Payment','seller_subscription_payments',1,1,1,2,'MultiVendor',NULL,NULL),(101,7,NULL,'Manage Seller','manage_seller',1,1,1,1,'MultiVendor',NULL,NULL),(102,7,101,'Seller List','admin.merchants_list',1,1,1,2,'MultiVendor',NULL,NULL),(103,7,102,'Create','admin.merchants_create',1,1,1,3,'MultiVendor',NULL,NULL),(104,7,102,'Details','admin.merchant_show_details',1,1,1,3,'MultiVendor',NULL,NULL),(105,7,102,'Secret Login','admin.secret_login',1,1,1,3,'MultiVendor',NULL,NULL),(106,7,102,'Trusted Status','admin.change_merchant_trusted_status',1,1,1,3,'MultiVendor',NULL,NULL),(107,7,102,'Update','admin.merchant_edit_profile',1,1,1,3,'MultiVendor',NULL,NULL),(109,7,102,'GST Claim','gst_claim_status',1,1,1,3,'MultiVendor',NULL,NULL),(35,7,101,'Pricing','admin.pricing.index',1,1,1,2,'MultiVendor',NULL,NULL),(36,7,35,'Create','admin.pricing.store',1,1,1,3,'MultiVendor',NULL,NULL),(37,7,35,'Update','admin.pricing.update',1,1,1,3,'MultiVendor',NULL,NULL),(38,7,35,'Destroy','admin.pricing.delete',1,1,1,3,'MultiVendor',NULL,NULL),(39,7,35,'Status Change','admin.pricing.status',1,1,1,3,'MultiVendor',NULL,NULL),(110,7,101,'Commission Setup','admin.seller_commission_index',1,1,1,2,'MultiVendor',NULL,NULL),(111,7,110,'Commission Rate Edit','admin.seller_commission_edit',1,1,1,3,'MultiVendor',NULL,NULL),(108,7,110,'Commission Update','admin.seller_commission_update',1,1,1,3,'MultiVendor',NULL,NULL),(638,7,101,'Manage Seller Configuration','admin.seller_configuration',1,1,1,2,'MultiVendor',NULL,NULL),(639,7,638,'Update','admin.seller_configuration_update',1,1,1,3,'MultiVendor',NULL,NULL),(640,7,101,'Subscription Payments','admin.subscription_payment_list',1,1,1,2,'MultiVendor',NULL,NULL),(641,7,640,'Approve','admin.subscription_payment_approve',1,1,1,3,'MultiVendor',NULL,NULL),(153,11,NULL,'Seller Order Manage','seller_order_manage',1,1,1,1,'MultiVendor',NULL,NULL),(154,11,153,'My Order','order_manage.my_sales_index',1,1,1,2,'MultiVendor',NULL,NULL),(155,11,153,'Complete Order','complete_orders',1,1,1,2,'MultiVendor',NULL,NULL),(156,11,153,'Confirmed Order','confirmed_orders',1,1,1,2,'MultiVendor',NULL,NULL),(157,11,153,'Pending Order','pending_orders',1,1,1,2,'MultiVendor',NULL,NULL),(158,11,153,'Cancelled Order','cancelled_orders',1,1,1,2,'MultiVendor',NULL,NULL),(159,11,153,'Order Detail view','order_manage.show_details_mine',1,1,1,2,'MultiVendor',NULL,NULL),(160,11,153,'Delivery Status Update','order_manage.update_delivery_status',1,1,1,2,'MultiVendor',NULL,NULL),(161,11,153,'Order Invoice Print','order_manage.print_order_details',1,1,1,2,'MultiVendor',NULL,NULL),(162,12,NULL,'Seller Staff Manage','seller_staff_manage',1,1,1,1,'MultiVendor',NULL,NULL),(163,12,162,'Staff List','seller.sub_seller.index',1,1,1,2,'MultiVendor',NULL,NULL),(164,12,162,'Create staff','seller.sub_seller.create',1,1,1,2,'MultiVendor',NULL,NULL),(165,12,162,'Edit Staff','seller.sub_seller.edit',1,1,1,2,'MultiVendor',NULL,NULL),(166,12,162,'Delete Staff','seller.sub_seller.delete',1,1,1,2,'MultiVendor',NULL,NULL),(167,12,162,'Permission Access Provide','seller.sub_seller.access_permission',1,1,1,2,'MultiVendor',NULL,NULL),(515,29,NULL,'Subscription Payment','seller.my_subscription_payment_list',1,1,1,1,'MultiVendor',NULL,NULL),(517,34,516,'Seller Wise report','report.seller_wise_sales',1,1,1,2,'MultiVendor',NULL,NULL),(524,34,516,'Top Sellers','report.top_seller',1,1,1,2,'MultiVendor',NULL,NULL),(531,35,NULL,'Seller Report','seller_report',1,1,1,1,'MultiVendor',NULL,NULL),(532,35,531,'Products','seller_report.product',1,1,1,2,'MultiVendor',NULL,NULL),(533,35,531,'Top Customers','seller_report.top_customer',1,1,1,2,'MultiVendor',NULL,NULL),(534,35,531,'Top Selling Items','seller_report.top_selling_item',1,1,1,2,'MultiVendor',NULL,NULL),(535,35,531,'Orders','seller_report.order',1,1,1,2,'MultiVendor',NULL,NULL),(536,35,531,'Seller Reviews','seller_report.review',1,1,1,2,'MultiVendor',NULL,NULL),(33,3,26,'Merchant Content','frontendcms.merchant-content.index',1,1,1,2,'MultiVendor',NULL,NULL),(34,3,33,'Content Update','frontendcms.merchant-content.update',1,1,1,3,'MultiVendor',NULL,NULL),(204,14,198,'Seller Request Product','product.request-get-data',1,1,1,3,'MultiVendor',NULL,NULL),(208,14,198,'Seller Product Approval','product.request.approved',1,1,1,3,'MultiVendor',NULL,NULL),(213,14,175,'Inhouse Product','admin.my-product.index',1,1,1,2,'MultiVendor',NULL,NULL),(214,14,213,'Create','admin.my-product.create',1,1,1,3,'MultiVendor',NULL,NULL),(215,14,213,'Update Product','admin.my-product.edit',1,1,1,3,'MultiVendor',NULL,NULL),(216,14,213,'Alert List','seller_alert_product',1,1,1,3,'MultiVendor',NULL,NULL),(217,14,213,'Out of Stock List','seller_out_of_stock_product',1,1,1,3,'MultiVendor',NULL,NULL),(218,14,213,'Disable Product List','seller_disabled_product',1,1,1,3,'MultiVendor',NULL,NULL),(279,14,213,'Product List','seller.product.index',1,1,1,3,'MultiVendor',NULL,NULL),(16,2,NULL,'Seller Product Manage','seller_product_module',1,1,1,1,'MultiVendor',NULL,NULL),(17,2,16,'Product List','seller.product.index',1,1,1,2,'MultiVendor',NULL,NULL),(18,2,16,'Own Product List','seller_own_product',1,1,1,2,'MultiVendor',NULL,NULL),(19,2,16,'Alert List','seller_alert_product',1,1,1,2,'MultiVendor',NULL,NULL),(20,2,16,'Out of Stock List','seller_out_of_stock_product',1,1,1,2,'MultiVendor',NULL,NULL),(21,2,16,'Disable Product List','seller_disabled_product',1,1,1,2,'MultiVendor',NULL,NULL),(22,2,16,'Product Create','seller.product.create',1,1,1,2,'MultiVendor',NULL,NULL),(23,2,16,'Product Edit','seller.product.edit',1,1,1,2,'MultiVendor',NULL,NULL),(24,2,16,'Product info Show','product_info_show',1,1,1,2,'MultiVendor',NULL,NULL),(25,2,16,'Product Delete','product_destroy',1,1,1,2,'MultiVendor',NULL,NULL),(493,2,16,'Self Product Edit','product.edit',1,1,1,2,'MultiVendor',NULL,NULL),(494,2,16,'Self Product Clone','product.clone',1,1,1,2,'MultiVendor',NULL,NULL),(495,2,16,'Self Product Delete','product.destroy',1,1,1,2,'MultiVendor',NULL,NULL),(317,17,312,'My Refund List','refund.my_refund_list',1,1,1,2,'MultiVendor',NULL,NULL),(514,31,407,'My Tickets','seller.support-ticket.index',1,1,1,2,'MultiVendor',NULL,NULL),(117,8,112,'Withdraw Request','wallet.withdraw_requests',1,1,1,2,'MultiVendor',NULL,'2022-11-23 18:21:40'),(118,8,117,'Show Details','wallet.withdraw_requests.show',1,1,1,3,'MultiVendor',NULL,NULL),(119,8,117,'Approval','wallet.withdraw_request_status_update',1,1,1,3,'MultiVendor',NULL,NULL),(497,25,NULL,'My Wallet','my_wallet',1,1,1,1,'MultiVendor',NULL,NULL),(569,25,497,'Transections','my-wallet.index',1,1,1,2,'MultiVendor',NULL,NULL),(570,25,569,'Recharge','my-wallet.store',1,1,1,3,'MultiVendor',NULL,NULL),(571,25,497,'Withdraw','my-wallet.withdraw_index',1,1,1,2,'MultiVendor',NULL,NULL),(572,25,571,'Send Request','my-wallet.withdraw_request_sent',1,1,1,3,'MultiVendor',NULL,NULL),(573,25,571,'Update Send Request','my-wallet.withdraw_request_update',1,1,1,3,'MultiVendor',NULL,NULL),(482,15,281,'Seller Reviews','review.seller.index',1,1,1,2,'MultiVendor',NULL,NULL),(537,34,516,'Seller Reviews','report.seller_review',1,1,1,2,'MultiVendor',NULL,NULL),(711,29,515,'Pay subscription fee','seller.subscription_payment_select',1,1,1,2,'MultiVendor',NULL,NULL),(712,29,515,'Change subscription type','seller.change_subscription_type',1,1,1,2,'MultiVendor',NULL,NULL),(713,29,515,'Payment List','seller.my_subscription_payment_list',1,1,1,2,'MultiVendor',NULL,NULL),(725,32,469,'Product','seller.bulk_product_upload',1,1,1,2,'MultiVendor',NULL,NULL),(498,15,281,'My Reviews','seller.my-reviews.index',1,1,1,2,'MultiVendor',NULL,NULL),(736,50,NULL,'Followers','seller.seller_follow',1,1,1,1,'MultiVendor',NULL,NULL),(648,39,NULL,'OTP','otp.configuration',1,1,1,1,'Otp',NULL,NULL),(649,39,648,'Update','opt.configuration_update',1,1,1,2,'Otp',NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pickup_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickup_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pickup_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `long` double(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_set` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pickup_locations` WRITE;
/*!40000 ALTER TABLE `pickup_locations` DISABLE KEYS */;
INSERT INTO `pickup_locations` VALUES (1,'Nairobi CBD','CBD Pickup','sales@pomalo.co.ke','0735119549','Scorpio House, Nairobi, Accra Rd',NULL,0,4151,113,100,NULL,NULL,1,1,1,1,NULL,'2022-11-24 11:06:25'),(2,'Nairobi CBD','CBD Pickup','sales@pomalo.co.ke','0735119549','Scorpio House, Nairobi, Accra Rd',NULL,0,4151,113,100,NULL,NULL,1,1,1,2,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `pickup_locations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pricings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_cost` double NOT NULL DEFAULT '0',
  `yearly_cost` double NOT NULL DEFAULT '0',
  `team_size` int(10) unsigned DEFAULT NULL,
  `stock_limit` double(8,2) DEFAULT NULL,
  `transaction_fee` double(8,2) NOT NULL,
  `best_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_monthly` tinyint(1) NOT NULL DEFAULT '1',
  `is_yearly` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pricings` WRITE;
/*!40000 ALTER TABLE `pricings` DISABLE KEYS */;
INSERT INTO `pricings` VALUES (1,NULL,'Individual',50,850,1,NULL,3.00,NULL,1,0,1,0,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Business',150,7850,25,NULL,5.00,NULL,1,0,1,0,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'Company',550,9850,100,NULL,7.00,NULL,1,0,1,0,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `pricings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_cross_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_cross_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `cross_sale_product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_cross_sales_product_id_foreign` (`product_id`),
  KEY `product_cross_sales_cross_sale_product_id_foreign` (`cross_sale_product_id`),
  CONSTRAINT `product_cross_sales_cross_sale_product_id_foreign` FOREIGN KEY (`cross_sale_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_cross_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_cross_sales` WRITE;
/*!40000 ALTER TABLE `product_cross_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_cross_sales` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_galary_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_galary_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `images_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_galary_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_galary_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_galary_images` WRITE;
/*!40000 ALTER TABLE `product_galary_images` DISABLE KEYS */;
INSERT INTO `product_galary_images` VALUES (1,1,'uploads/images/24-11-2022/637f171180efc.jpeg',1,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(2,1,'uploads/images/24-11-2022/637f1711b6034.jpeg',2,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(3,1,'uploads/images/24-11-2022/637f1711f2778.jpeg',3,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(4,1,'uploads/images/24-11-2022/637f17123183e.jpeg',4,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(5,1,'uploads/images/24-11-2022/637f171290fb2.jpeg',5,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(6,2,'uploads/images/24-11-2022/637f20f2cd16d.jpeg',6,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(7,2,'uploads/images/24-11-2022/637f20f356d5f.jpeg',7,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(8,3,'uploads/images/24-11-2022/637f27b375366.jpeg',13,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(9,3,'uploads/images/24-11-2022/637f27b413a92.jpeg',9,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(10,3,'uploads/images/24-11-2022/637f27b5129df.jpeg',11,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(11,3,'uploads/images/24-11-2022/637f27b5be932.jpeg',14,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(12,3,'uploads/images/24-11-2022/637f27b65c0f1.jpeg',10,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(13,3,'uploads/images/24-11-2022/637f27b7431ea.jpeg',8,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(14,3,'uploads/images/24-11-2022/637f27b7bfff7.jpeg',12,'2022-11-24 10:13:44','2022-11-24 10:13:44');
/*!40000 ALTER TABLE `product_galary_images` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_related_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_related_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `related_sale_product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_related_sales_product_id_foreign` (`product_id`),
  KEY `product_related_sales_related_sale_product_id_foreign` (`related_sale_product_id`),
  CONSTRAINT `product_related_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_related_sales_related_sale_product_id_foreign` FOREIGN KEY (`related_sale_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_related_sales` WRITE;
/*!40000 ALTER TABLE `product_related_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_related_sales` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `package_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `review` text COLLATE utf8mb4_unicode_ci,
  `rating` int(10) unsigned NOT NULL,
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_customer_id_foreign` (`customer_id`),
  KEY `product_reviews_seller_id_foreign` (`seller_id`),
  CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_reviews_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_shippings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `shipping_method_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_shippings` WRITE;
/*!40000 ALTER TABLE `product_shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_shippings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sku` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `sku` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double(16,2) DEFAULT '0.00',
  `selling_price` double(16,2) NOT NULL DEFAULT '0.00',
  `additional_shipping` double DEFAULT '0',
  `variant_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `product_stock` int(10) unsigned NOT NULL DEFAULT '0',
  `track_sku` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '500' COMMENT 'gm',
  `length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '30' COMMENT 'cm',
  `breadth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '20' COMMENT 'cm',
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10' COMMENT 'cm',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_sku_product_id_foreign` (`product_id`),
  KEY `product_sku_id_status_selling_price_index` (`id`,`status`,`selling_price`),
  CONSTRAINT `product_sku_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_sku` WRITE;
/*!40000 ALTER TABLE `product_sku` DISABLE KEYS */;
INSERT INTO `product_sku` VALUES (1,1,'6941447580000',0.00,27000.00,0,'uploads/images/24-11-2022/637f186408e9f.jpeg',1,0,NULL,'0','0','0','0','2022-11-24 09:02:42','2022-11-24 09:20:25'),(2,2,'6941447580001',0.00,25000.00,0,NULL,1,0,NULL,'0','0','0','0','2022-11-24 09:44:51','2022-11-24 09:44:51'),(3,3,'6941447580002',0.00,1200.00,0,NULL,1,12,NULL,'0','0','0','0','2022-11-24 10:13:44','2022-11-24 10:27:58');
/*!40000 ALTER TABLE `product_sku` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tag_product_id_foreign` (`product_id`),
  KEY `product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,1,1,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(2,1,2,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(3,1,3,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(4,2,4,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(5,2,5,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(6,3,6,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(7,3,7,'2022-11-24 10:13:44','2022-11-24 10:13:44');
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_up_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_up_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `up_sale_product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_up_sales_product_id_foreign` (`product_id`),
  KEY `product_up_sales_up_sale_product_id_foreign` (`up_sale_product_id`),
  CONSTRAINT `product_up_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_up_sales_up_sale_product_id_foreign` FOREIGN KEY (`up_sale_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_up_sales` WRITE;
/*!40000 ALTER TABLE `product_up_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_up_sales` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned DEFAULT NULL,
  `attribute_id` bigint(20) unsigned DEFAULT NULL,
  `attribute_value_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variations_product_id_foreign` (`product_id`),
  KEY `product_variations_created_by_foreign` (`created_by`),
  KEY `product_variations_updated_by_foreign` (`updated_by`),
  CONSTRAINT `product_variations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_variations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` bigint(20) unsigned DEFAULT NULL COMMENT '1 => single_product, 2 => variant_product',
  `unit_type_id` bigint(20) unsigned DEFAULT NULL,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `thumbnail_image_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_type` int(11) NOT NULL DEFAULT '0' COMMENT '1 => free_shipping, 2 => flat_rate',
  `shipping_cost` double(16,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(16,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_group_id` bigint(20) unsigned DEFAULT NULL,
  `tax` double(16,2) NOT NULL DEFAULT '0.00',
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `specification` longtext COLLATE utf8mb4_unicode_ci,
  `minimum_order_qty` int(11) DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_physical` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `display_in_details` tinyint(4) NOT NULL DEFAULT '0',
  `requested_by` int(10) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `stock_manage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `subtitle_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_created_by_foreign` (`created_by`),
  KEY `products_updated_by_foreign` (`updated_by`),
  KEY `products_id_brand_id_status_index` (`id`,`brand_id`,`status`),
  CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hp 840 g2 core i5 5th gen 8gb ram 500gb',1,1,7,'uploads/images/24-11-2022/637f17114e713.jpeg','1,2,3,4,5','C39',NULL,0,0.00,'1',0.00,NULL,NULL,0.00,NULL,'youtube',NULL,'<p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Operating system:</span>&nbsp;Windows 10 Pro 64- bits Edition</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Memory:</span>&nbsp;8 GB DDR3L – 1600 MHz SDRAM (1 x 8 GB) | Supports up to 16GB</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Storage:</span>&nbsp;500 GB 7200 rpm SATA Hard Drive</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Processor:</span>&nbsp;Intel® Core™ i5-5300U (2.3 GHz, up to 2.9 GHz with Intel Turbo Boost Technology, 3 MB cache, 2 cores)</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Processor Family</span>: 5th Generation Intel® Core™ i5 processor</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Optical drive:</span>&nbsp;None</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Graphics Processor:</span>&nbsp;Intel® HD Graphics 5500</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Display:</span>&nbsp;14 Inches (35.6 cm) diagonal HD SVA anti-glare flat LED-backlit (1366 x 768)</p>','<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(75, 86, 107); font-family: sans-serif; -webkit-font-smoothing: antialiased;\"><br></p>',1,NULL,'Hp 840 g2 core i5 5th gen 8gb ram 500gb','Operating system: Windows 10 Pro 64- bits Edition\r\n\r\nMemory: 8 GB DDR3L – 1600 MHz SDRAM (1 x 8 GB) | Supports up to 16GB\r\n\r\nStorage: 500 GB 7200 rpm SATA Hard Drive\r\n\r\nProcessor: Intel® Core™ i5-5300U (2.3 GHz, up to 2.9 GHz with Intel Turbo Boost Technology, 3 MB cache, 2 cores)\r\n\r\nProcessor Family: 5th Generation Intel® Core™ i5 processor\r\n\r\nOptical drive: None\r\n\r\nGraphics Processor: Intel® HD Graphics 5500\r\n\r\nDisplay: 14 Inches (35.6 cm) diagonal HD SVA anti-glare flat LED-backlit (1366 x 768)','uploads/images/24-11-2022/637f1712b0cae.jpeg',1,1,1,1,1,1,'hp-840-g2-core-i5-5th-gen-8gb-ram-500gb',1,'1',NULL,NULL,'2022-11-24 09:02:42','2022-11-24 09:20:25'),(2,'Lenovo x260 core i5 6th gen 8gb 256gb ssd',1,1,9,'uploads/images/24-11-2022/637f20f2505c2.jpeg','6,7','C39',NULL,0,0.00,'1',0.00,NULL,NULL,0.00,NULL,'youtube',NULL,'<p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">The&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">12.5\" Lenovo ThinkPad X260 Ultrabook</span>&nbsp;is a durable, rugged notebook that has passed military specification testing with eleven tests to ensure that it stays operational regardless of the hazards it can run into. It\'s powered by a<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">&nbsp;2.3 GHz Intel Core i5-6200U Dual-Core processo</span>r with 8<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">GB of 2133 MHz DDR4 RAM</span>&nbsp;that enables you to efficiently multitask and quickly access frequently used files and programs. If you need more processing power, the CPU can be adjusted to&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">2.8 GHz using Intel\'s Turbo Boost technology.</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">More Features</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">The 12.5\" IPS display features a&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">1366 x 768 resolution</span>&nbsp;and is driven by&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">integrated Intel HD graphics</span>&nbsp;that offer sharp, clear content reproduction for document editing, video playback, and much more. You\'ll also be able to output video using its built-in Mini-DisplayPort or HDMI port.&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">For long-term storage and protection of your files, this system has a</span>&nbsp;<span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">256GB Opal 2 SSD. SSDs</span>&nbsp;have no internal moving mechanisms, thereby allowing them to run faster and endure more than a standard hard drive. Additionally, this SSD features Opal 2.0, which encrypts your drive for another layer of security.&nbsp;If you need more storage space, the ThinkPad X260 has a 4-in-1 card reader that also lets you import files from your camera.</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Connectivity</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Connect peripherals such as mice, keyboards, flash drives, and more to its three USB 3.0 Type-A ports,</span>&nbsp;which have a data transfer rate of up to 5 Gbps. If you run out of USB ports or would rather save them for other devices, you can pair additional devices via Bluetooth 4.1 technology. Internet connectivity is achieved using 802.11ac Wi-Fi or the Gigabit Ethernet jack for a more stable and reliable wired connection. Other integrated features include a webcam, speakers, microphone, a fingerprint scanner, and a 3.5mm microphone and headphone combo jack.&nbsp;</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Power Bridge Technology</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Power Bridge technology combines an internal battery with an external hot-swappable battery</span>. This provides flexibility, allowing you to swap batteries without powering down, maximizing time between charges.</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Toughness Personified</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Military-specification testing validates</span>&nbsp;the ruggedness, durability, and quality of this laptop by testing against 11 grueling parameters: high pressure, humidity, vibration, high temperature, temperature shock, low pressure (15,000 ft), low temperature, solar radiation, fungus, salt fog, and dust.</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">General Specification</span></p><ul style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><li style=\"-webkit-font-smoothing: antialiased;\">2.3 GHz Intel Core i5-6200U Dual-Core</li><li style=\"-webkit-font-smoothing: antialiased;\">8GB of DDR4 RAM | 256GB Opal 2 SSD</li><li style=\"-webkit-font-smoothing: antialiased;\">12.5\" 1366 x 768 IPS Display</li><li style=\"-webkit-font-smoothing: antialiased;\">Integrated Intel HD Graphics 520</li><li style=\"-webkit-font-smoothing: antialiased;\">4-in-1 Card Reader</li><li style=\"-webkit-font-smoothing: antialiased;\">802.11ac Wi-Fi | Bluetooth 4.1</li><li style=\"-webkit-font-smoothing: antialiased;\">USB 3.0 | Mini DisplayPort | HDMI</li></ul>','<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(75, 86, 107); font-family: sans-serif; -webkit-font-smoothing: antialiased;\"><br></p>',1,NULL,'Lenovo x260 core i5 6th gen 8gb 256gb ssd','The 12.5\" Lenovo ThinkPad X260 Ultrabook is a durable, rugged notebook that has passed military specification testing with eleven tests to ensure that it stays operational regardless of the hazards it can run into. It\'s powered by a 2.3 GHz Intel Core i5-6200U Dual-Core processor with 8GB of 2133 MHz DDR4 RAM that enables you to efficiently multitask and quickly access frequently used files and programs. If you need more processing power, the CPU can be adjusted to 2.8 GHz using Intel\'s Turbo Boost technology.\r\n\r\nMore Features\r\n\r\nThe 12.5\" IPS display features a 1366 x 768 resolution and is driven by integrated Intel HD graphics that offer sharp, clear content reproduction for document editing, video playback, and much more. You\'ll also be able to output video using its built-in Mini-DisplayPort or HDMI port. For long-term storage and protection of your files, this system has a 256GB Opal 2 SSD. SSDs have no internal moving mechanisms, thereby allowing them to run faster and endure more than a standard hard drive. Additionally, this SSD features Opal 2.0, which encrypts your drive for another layer of security. If you need more storage space, the ThinkPad X260 has a 4-in-1 card reader that also lets you import files from your camera.\r\n\r\nConnectivity\r\n\r\nConnect peripherals such as mice, keyboards, flash drives, and more to its three USB 3.0 Type-A ports, which have a data transfer rate of up to 5 Gbps. If you run out of USB ports or would rather save them for other devices, you can pair additional devices via Bluetooth 4.1 technology. Internet connectivity is achieved using 802.11ac Wi-Fi or the Gigabit Ethernet jack for a more stable and reliable wired connection. Other integrated features include a webcam, speakers, microphone, a fingerprint scanner, and a 3.5mm microphone and headphone combo jack. \r\n\r\nPower Bridge Technology\r\n\r\nPower Bridge technology combines an internal battery with an external hot-swappable battery. This provides flexibility, allowing you to swap batteries without powering down, maximizing time between charges.\r\n\r\nToughness Personified\r\n\r\nMilitary-specification testing validates the ruggedness, durability, and quality of this laptop by testing against 11 grueling parameters: high pressure, humidity, vibration, high temperature, temperature shock, low pressure (15,000 ft), low temperature, solar radiation, fungus, salt fog, and dust.\r\n\r\nGeneral Specification\r\n\r\n2.3 GHz Intel Core i5-6200U Dual-Core\r\n8GB of DDR4 RAM | 256GB Opal 2 SSD\r\n12.5\" 1366 x 768 IPS Display\r\nIntegrated Intel HD Graphics 520\r\n4-in-1 Card Reader\r\n802.11ac Wi-Fi | Bluetooth 4.1\r\nUSB 3.0 | Mini DisplayPort | HDMI','uploads/images/24-11-2022/637f20f376323.jpeg',1,1,1,1,1,1,'lenovo-x260-core-i5-6th-gen-8gb-256gb-ssd',NULL,'0',NULL,NULL,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(3,'I13 TWS Pods Wireless Bluetooth Earphone HIFI Stereo Touch Headset',1,1,NULL,'uploads/images/24-11-2022/637f27b2f2852.jpeg','13,9,11,14,10,8,12','C39',NULL,0,0.00,'0',11.00,NULL,NULL,0.00,NULL,'youtube',NULL,'<p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">i13 TWS pods Wireless Bluetooth Earphone HIFI Stereo Touch Headset</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\"><span style=\"font-weight: 700; -webkit-font-smoothing: antialiased;\">Specs</span></p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">1.&nbsp; Drive: 15mm</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">2. Impedance: 32 OHM</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">3. Bluetooth version: Bluetooth v5.0 + EDR</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">4. Bluetooth frequency band: 2.4 GHz</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">5. Power level: CLASS II</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">6. Output power: 30 mW</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">7. Bluetooth distance: 15~20 meters barrier-free</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">8. Frequency response: 20-20000Hz</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">9. Operating voltage range: 3.0 V-4.2 V</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">10. Microphone sensitivity: -42dB</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">11. High-quality stereo audio transmission and remote control protocol with A2DP/AVRCP</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">12. Powerful noise reduction circuit (active noise reduction)</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">13. Charging time is about 1 hour (charging power indicator: red light is on, fully charged: red light is off (blue light).)</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">14. Product size: 53×44×21mm</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">15. The net weight of the product is about 32 grams</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">16. Play for about 150-180 minutes</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">17. Standby time is about 48 hours</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">18. Battery capacity 35 MAH (charging room 350 MAH)</p><p style=\"margin-bottom: 1rem; -webkit-font-smoothing: antialiased; color: rgb(75, 86, 107); font-family: sans-serif; font-size: 16px;\">19. Charging power supply: DC5V power supply [lighting interface] (computer USB port, mobile phone charger, car charger)</p>',NULL,1,NULL,'I13 TWS Pods Wireless Bluetooth Earphone HIFI Stereo Touch Headset','i13 TWS pods Wireless Bluetooth Earphone HIFI Stereo Touch Headset\r\n\r\nSpecs\r\n\r\n1.  Drive: 15mm\r\n\r\n2. Impedance: 32 OHM\r\n\r\n3. Bluetooth version: Bluetooth v5.0 + EDR\r\n\r\n4. Bluetooth frequency band: 2.4 GHz\r\n\r\n5. Power level: CLASS II\r\n\r\n6. Output power: 30 mW\r\n\r\n7. Bluetooth distance: 15~20 meters barrier-free\r\n\r\n8. Frequency response: 20-20000Hz\r\n\r\n9. Operating voltage range: 3.0 V-4.2 V\r\n\r\n10. Microphone sensitivity: -42dB\r\n\r\n11. High-quality stereo audio transmission and remote control protocol with A2DP/AVRCP\r\n\r\n12. Powerful noise reduction circuit (active noise reduction)\r\n\r\n13. Charging time is about 1 hour (charging power indicator: red light is on, fully charged: red light is off (blue light).)\r\n\r\n14. Product size: 53×44×21mm\r\n\r\n15. The net weight of the product is about 32 grams\r\n\r\n16. Play for about 150-180 minutes\r\n\r\n17. Standby time is about 48 hours\r\n\r\n18. Battery capacity 35 MAH (charging room 350 MAH)\r\n\r\n19. Charging power supply: DC5V power supply [lighting interface] (computer USB port, mobile phone charger, car charger)','uploads/images/24-11-2022/637f27b849097.jpeg',1,1,1,2,1,1,'i13-tws-pods-wireless-bluetooth-earphone-hifi-stereo-touch-headset',1,'1',NULL,NULL,'2022-11-24 10:13:44','2022-11-24 10:25:12');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `profile_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_notification_setting_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_send_type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_user_id_foreign` (`user_id`),
  KEY `push_notifications_user_notification_setting_id_foreign` (`user_notification_setting_id`),
  CONSTRAINT `push_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `push_notifications_user_notification_setting_id_foreign` FOREIGN KEY (`user_notification_setting_id`) REFERENCES `user_notification_settings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `recent_view_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recent_view_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_product_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `viewed_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `recent_view_products` WRITE;
/*!40000 ALTER TABLE `recent_view_products` DISABLE KEYS */;
INSERT INTO `recent_view_products` VALUES (1,1,1,'2022-11-24','2022-11-24 09:18:27','2022-11-24 11:10:39'),(2,3,1,'2022-11-24','2022-11-24 10:24:11','2022-11-24 10:28:15'),(3,3,2,'2022-11-24','2022-11-24 14:38:33','2022-11-24 14:38:33'),(4,2,2,'2022-11-24','2022-11-24 14:39:46','2022-11-24 14:41:03'),(5,3,3,'2022-11-24','2022-11-24 15:38:19','2022-11-24 15:38:19');
/*!40000 ALTER TABLE `recent_view_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `referral_code_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_code_setups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `maximum_limit` double NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `referral_code_setups` WRITE;
/*!40000 ALTER TABLE `referral_code_setups` DISABLE KEYS */;
INSERT INTO `referral_code_setups` VALUES (1,10,10,1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `referral_code_setups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `referral_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `referral_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `refer_by` bigint(20) unsigned DEFAULT NULL,
  `total_used` bigint(20) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `referral_codes_referral_code_unique` (`referral_code`),
  KEY `referral_codes_user_id_foreign` (`user_id`),
  CONSTRAINT `referral_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `referral_codes` WRITE;
/*!40000 ALTER TABLE `referral_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_codes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `referral_uses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_uses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `referral_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `is_use` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `referral_uses` WRITE;
/*!40000 ALTER TABLE `referral_uses` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_uses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_processes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_processes` WRITE;
/*!40000 ALTER TABLE `refund_processes` DISABLE KEYS */;
INSERT INTO `refund_processes` VALUES (1,'Start','The refund process has been started.','2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Processing','The refund is processing.','2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Complete','The refund is completed.','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `refund_processes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `refund_request_detail_id` bigint(20) unsigned NOT NULL,
  `seller_product_sku_id` bigint(20) unsigned NOT NULL,
  `refund_reason_id` bigint(20) unsigned NOT NULL,
  `return_qty` int(11) DEFAULT NULL,
  `return_amount` double(28,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_products` WRITE;
/*!40000 ALTER TABLE `refund_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_reasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_reasons` WRITE;
/*!40000 ALTER TABLE `refund_reasons` DISABLE KEYS */;
INSERT INTO `refund_reasons` VALUES (1,'Product mismatch','2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Product defactive','2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Order wrong product','2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,'Product arrived lately','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `refund_reasons` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_request_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_request_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `refund_request_id` bigint(20) unsigned NOT NULL,
  `order_package_id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `processing_state` tinyint(4) NOT NULL DEFAULT '1',
  `carrier_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_request_details` WRITE;
/*!40000 ALTER TABLE `refund_request_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_request_details` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `refund_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint(20) unsigned DEFAULT NULL,
  `pick_up_address_id` bigint(20) unsigned DEFAULT NULL,
  `drop_off_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_return_amount` double(28,2) NOT NULL DEFAULT '0.00',
  `refund_state` int(11) NOT NULL DEFAULT '1',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_requests` WRITE;
/*!40000 ALTER TABLE `refund_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_requests` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `refund_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `refund_request_detail_id` bigint(20) unsigned NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `refund_states` WRITE;
/*!40000 ALTER TABLE `refund_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_states` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `return_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_exchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `mainTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchangeTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchangeDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `return_exchanges` WRITE;
/*!40000 ALTER TABLE `return_exchanges` DISABLE KEYS */;
INSERT INTO `return_exchanges` VALUES (1,NULL,'Return & Exchange Policy','slug','Returns Policy','Exchange Policy','We strive to make our customers satisfied with the product they have purchased from us. If you are having trouble with a premium JoomShaper product or believe it is defective, and/or you’re feeling frustrated, then please submit a ticket to our Helpdesk to report your defective product and our team will assist you as soon as possible. For a damaged extension or template, we will request from you a link and/or a screenshot of the issue to be sent to our support service.\r\n         Please also note that:\r\n<li>You may cancel your account at any time, however, there are no refunds for cancellation.</li>\r\n<li>If you get a refund you cannot use the downloaded premium products any more.</li>\r\n<li>If the product (after update) is still damaged, we may offset the amount of your refund by the diminished value of the product.</li>\r\n<li>Refunds can take up to 14 days to reflect in your account.</li>\r\n         ','We strive to make our customers satisfied with the product they have purchased from us. If you are having trouble with a premium JoomShaper product or believe it is defective, and/or you’re feeling frustrated, then please submit a ticket to our Helpdesk to report your defective product and our team will assist you as soon as possible. For a damaged extension or template, we will request from you a link and/or a screenshot of the issue to be sent to our support service.\r\n\r\n         Please also note that:\r\n         <li>You may cancel your account at any time, however, there are no refunds for cancellation.</li>\r\n         <li>If you get a refund you cannot use the downloaded premium products any more.</li>\r\n         <li>If the product (after update) is still damaged, we may offset the amount of your refund by the diminished value of the product.</li>\r\n         <li>Refunds can take up to 14 days to reflect in your account.</li>\r\n         ','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `return_exchanges` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `review_images_review_id_foreign` (`review_id`),
  CONSTRAINT `review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `review_images` WRITE;
/*!40000 ALTER TABLE `review_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_images` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `review_replies_review_id_foreign` (`review_id`),
  CONSTRAINT `review_replies_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `review_replies` WRITE;
/*!40000 ALTER TABLE `review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_replies` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `updated_by` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (26,1,3,1,1,1,NULL,NULL),(27,2,3,1,1,1,NULL,NULL),(28,16,3,1,1,1,NULL,NULL),(29,17,3,1,1,1,NULL,NULL),(30,18,3,1,1,1,NULL,NULL),(31,19,3,1,1,1,NULL,NULL),(32,20,3,1,1,1,NULL,NULL),(33,21,3,1,1,1,NULL,NULL),(34,22,3,1,1,1,NULL,NULL),(35,23,3,1,1,1,NULL,NULL),(36,24,3,1,1,1,NULL,NULL),(37,25,3,1,1,1,NULL,NULL),(38,153,3,1,1,1,NULL,NULL),(39,154,3,1,1,1,NULL,NULL),(40,155,3,1,1,1,NULL,NULL),(41,156,3,1,1,1,NULL,NULL),(42,157,3,1,1,1,NULL,NULL),(43,158,3,1,1,1,NULL,NULL),(44,159,3,1,1,1,NULL,NULL),(45,160,3,1,1,1,NULL,NULL),(46,161,3,1,1,1,NULL,NULL),(47,175,3,1,1,1,NULL,NULL),(48,198,3,1,1,1,NULL,NULL),(49,199,3,1,1,1,NULL,NULL),(50,200,3,1,1,1,NULL,NULL),(51,201,3,1,1,1,NULL,NULL),(52,202,3,1,1,1,NULL,NULL),(53,203,3,1,1,1,NULL,NULL),(54,204,3,1,1,1,NULL,NULL),(55,205,3,1,1,1,NULL,NULL),(56,206,3,1,1,1,NULL,NULL),(57,207,3,1,1,1,NULL,NULL),(58,208,3,1,1,1,NULL,NULL),(59,209,3,1,1,1,NULL,NULL),(60,210,3,1,1,1,NULL,NULL),(61,213,3,1,1,1,NULL,NULL),(62,214,3,1,1,1,NULL,NULL),(63,215,3,1,1,1,NULL,NULL),(64,216,3,1,1,1,NULL,NULL),(65,217,3,1,1,1,NULL,NULL),(66,218,3,1,1,1,NULL,NULL),(67,279,3,1,1,1,NULL,NULL),(68,290,3,1,1,1,NULL,NULL),(69,291,3,1,1,1,NULL,NULL),(70,292,3,1,1,1,NULL,NULL),(71,293,3,1,1,1,NULL,NULL),(72,294,3,1,1,1,NULL,NULL),(73,295,3,1,1,1,NULL,NULL),(74,296,3,1,1,1,NULL,NULL),(75,297,3,1,1,1,NULL,NULL),(76,298,3,1,1,1,NULL,NULL),(77,299,3,1,1,1,NULL,NULL),(78,300,3,1,1,1,NULL,NULL),(79,301,3,1,1,1,NULL,NULL),(80,302,3,1,1,1,NULL,NULL),(81,303,3,1,1,1,NULL,NULL),(82,304,3,1,1,1,NULL,NULL),(83,305,3,1,1,1,NULL,NULL),(84,306,3,1,1,1,NULL,NULL),(85,307,3,1,1,1,NULL,NULL),(86,308,3,1,1,1,NULL,NULL),(87,309,3,1,1,1,NULL,NULL),(88,310,3,1,1,1,NULL,NULL),(89,311,3,1,1,1,NULL,NULL),(90,464,3,1,1,1,NULL,NULL),(91,465,3,1,1,1,NULL,NULL),(92,407,3,1,1,1,NULL,NULL),(93,408,3,1,1,1,NULL,NULL),(94,409,3,1,1,1,NULL,NULL),(95,410,3,1,1,1,NULL,NULL),(96,411,3,1,1,1,NULL,NULL),(97,412,3,1,1,1,NULL,NULL),(98,413,3,1,1,1,NULL,NULL),(99,414,3,1,1,1,NULL,NULL),(100,415,3,1,1,1,NULL,NULL),(101,416,3,1,1,1,NULL,NULL),(102,417,3,1,1,1,NULL,NULL),(103,418,3,1,1,1,NULL,NULL),(104,419,3,1,1,1,NULL,NULL),(105,420,3,1,1,1,NULL,NULL),(106,421,3,1,1,1,NULL,NULL),(107,422,3,1,1,1,NULL,NULL),(108,423,3,1,1,1,NULL,NULL),(109,424,3,1,1,1,NULL,NULL),(110,425,3,1,1,1,NULL,NULL),(111,426,3,1,1,1,NULL,NULL),(112,427,3,1,1,1,NULL,NULL),(113,428,3,1,1,1,NULL,NULL),(114,429,3,1,1,1,NULL,NULL),(115,430,3,1,1,1,NULL,NULL),(116,431,3,1,1,1,NULL,NULL),(117,432,3,1,1,1,NULL,NULL),(122,496,3,1,1,1,NULL,NULL),(124,497,3,1,1,1,NULL,NULL),(130,516,3,1,1,1,NULL,NULL),(226,1,2,1,1,1,NULL,NULL),(227,2,2,1,1,1,NULL,NULL),(228,577,2,1,1,1,NULL,NULL),(229,579,2,1,1,1,NULL,NULL),(230,580,2,1,1,1,NULL,NULL),(231,581,2,1,1,1,NULL,NULL),(232,582,2,1,1,1,NULL,NULL),(233,583,2,1,1,1,NULL,NULL),(234,584,2,1,1,1,NULL,NULL),(235,585,2,1,1,1,NULL,NULL),(236,586,2,1,1,1,NULL,NULL),(237,587,2,1,1,1,NULL,NULL),(238,588,2,1,1,1,NULL,NULL),(239,589,2,1,1,1,NULL,NULL),(240,590,2,1,1,1,NULL,NULL),(241,591,2,1,1,1,NULL,NULL),(242,593,2,1,1,1,NULL,NULL),(243,594,2,1,1,1,NULL,NULL),(244,595,2,1,1,1,NULL,NULL),(245,596,2,1,1,1,NULL,NULL),(246,598,2,1,1,1,NULL,NULL),(247,599,2,1,1,1,NULL,NULL),(248,600,2,1,1,1,NULL,NULL),(249,601,2,1,1,1,NULL,NULL),(250,602,2,1,1,1,NULL,NULL),(251,603,2,1,1,1,NULL,NULL),(252,604,2,1,1,1,NULL,NULL),(253,605,2,1,1,1,NULL,NULL),(254,606,2,1,1,1,NULL,NULL),(255,607,2,1,1,1,NULL,NULL),(256,26,2,1,1,1,NULL,NULL),(257,27,2,1,1,1,NULL,NULL),(258,28,2,1,1,1,NULL,NULL),(259,40,2,1,1,1,NULL,NULL),(260,41,2,1,1,1,NULL,NULL),(261,42,2,1,1,1,NULL,NULL),(262,43,2,1,1,1,NULL,NULL),(263,44,2,1,1,1,NULL,NULL),(264,45,2,1,1,1,NULL,NULL),(265,46,2,1,1,1,NULL,NULL),(266,47,2,1,1,1,NULL,NULL),(267,48,2,1,1,1,NULL,NULL),(268,49,2,1,1,1,NULL,NULL),(269,50,2,1,1,1,NULL,NULL),(270,51,2,1,1,1,NULL,NULL),(271,52,2,1,1,1,NULL,NULL),(272,53,2,1,1,1,NULL,NULL),(273,54,2,1,1,1,NULL,NULL),(274,55,2,1,1,1,NULL,NULL),(275,56,2,1,1,1,NULL,NULL),(276,57,2,1,1,1,NULL,NULL),(277,58,2,1,1,1,NULL,NULL),(278,59,2,1,1,1,NULL,NULL),(279,60,2,1,1,1,NULL,NULL),(280,61,2,1,1,1,NULL,NULL),(281,62,2,1,1,1,NULL,NULL),(282,63,2,1,1,1,NULL,NULL),(283,630,2,1,1,1,NULL,NULL),(284,64,2,1,1,1,NULL,NULL),(285,65,2,1,1,1,NULL,NULL),(286,66,2,1,1,1,NULL,NULL),(287,67,2,1,1,1,NULL,NULL),(288,717,2,1,1,1,NULL,NULL),(289,718,2,1,1,1,NULL,NULL),(290,719,2,1,1,1,NULL,NULL),(291,720,2,1,1,1,NULL,NULL),(292,721,2,1,1,1,NULL,NULL),(293,722,2,1,1,1,NULL,NULL),(294,735,2,1,1,1,NULL,NULL),(295,68,2,1,1,1,NULL,NULL),(296,4,2,1,1,1,NULL,NULL),(297,5,2,1,1,1,NULL,NULL),(298,69,2,1,1,1,NULL,NULL),(299,70,2,1,1,1,NULL,NULL),(300,71,2,1,1,1,NULL,NULL),(301,72,2,1,1,1,NULL,NULL),(302,73,2,1,1,1,NULL,NULL),(303,74,2,1,1,1,NULL,NULL),(304,75,2,1,1,1,NULL,NULL),(305,76,2,1,1,1,NULL,NULL),(306,77,2,1,1,1,NULL,NULL),(307,78,2,1,1,1,NULL,NULL),(308,79,2,1,1,1,NULL,NULL),(309,80,2,1,1,1,NULL,NULL),(310,81,2,1,1,1,NULL,NULL),(311,553,2,1,1,1,NULL,NULL),(312,554,2,1,1,1,NULL,NULL),(313,555,2,1,1,1,NULL,NULL),(314,556,2,1,1,1,NULL,NULL),(315,557,2,1,1,1,NULL,NULL),(316,558,2,1,1,1,NULL,NULL),(317,559,2,1,1,1,NULL,NULL),(318,560,2,1,1,1,NULL,NULL),(319,561,2,1,1,1,NULL,NULL),(320,562,2,1,1,1,NULL,NULL),(321,563,2,1,1,1,NULL,NULL),(322,703,2,1,1,1,NULL,NULL),(323,704,2,1,1,1,NULL,NULL),(324,726,2,1,1,1,NULL,NULL),(325,727,2,1,1,1,NULL,NULL),(326,82,2,1,1,1,NULL,NULL),(327,83,2,1,1,1,NULL,NULL),(328,84,2,1,1,1,NULL,NULL),(329,85,2,1,1,1,NULL,NULL),(330,645,2,1,1,1,NULL,NULL),(331,646,2,1,1,1,NULL,NULL),(332,647,2,1,1,1,NULL,NULL),(333,734,2,1,1,1,NULL,NULL),(334,86,2,1,1,1,NULL,NULL),(335,87,2,1,1,1,NULL,NULL),(336,88,2,1,1,1,NULL,NULL),(337,89,2,1,1,1,NULL,NULL),(338,90,2,1,1,1,NULL,NULL),(339,716,2,1,1,1,NULL,NULL),(340,91,2,1,1,1,NULL,NULL),(341,92,2,1,1,1,NULL,NULL),(342,93,2,1,1,1,NULL,NULL),(343,94,2,1,1,1,NULL,NULL),(344,95,2,1,1,1,NULL,NULL),(345,96,2,1,1,1,NULL,NULL),(346,112,2,1,1,1,NULL,NULL),(347,113,2,1,1,1,NULL,NULL),(348,114,2,1,1,1,NULL,NULL),(349,564,2,1,1,1,NULL,NULL),(350,115,2,1,1,1,NULL,NULL),(351,116,2,1,1,1,NULL,NULL),(352,565,2,1,1,1,NULL,NULL),(353,566,2,1,1,1,NULL,NULL),(354,120,2,1,1,1,NULL,NULL),(355,513,2,1,1,1,NULL,NULL),(356,121,2,1,1,1,NULL,NULL),(357,122,2,1,1,1,NULL,NULL),(358,123,2,1,1,1,NULL,NULL),(359,124,2,1,1,1,NULL,NULL),(360,125,2,1,1,1,NULL,NULL),(361,126,2,1,1,1,NULL,NULL),(362,127,2,1,1,1,NULL,NULL),(363,128,2,1,1,1,NULL,NULL),(364,129,2,1,1,1,NULL,NULL),(365,130,2,1,1,1,NULL,NULL),(366,131,2,1,1,1,NULL,NULL),(367,132,2,1,1,1,NULL,NULL),(368,133,2,1,1,1,NULL,NULL),(369,134,2,1,1,1,NULL,NULL),(370,135,2,1,1,1,NULL,NULL),(371,136,2,1,1,1,NULL,NULL),(372,137,2,1,1,1,NULL,NULL),(373,138,2,1,1,1,NULL,NULL),(374,139,2,1,1,1,NULL,NULL),(375,140,2,1,1,1,NULL,NULL),(376,141,2,1,1,1,NULL,NULL),(377,142,2,1,1,1,NULL,NULL),(378,143,2,1,1,1,NULL,NULL),(379,144,2,1,1,1,NULL,NULL),(380,145,2,1,1,1,NULL,NULL),(381,146,2,1,1,1,NULL,NULL),(382,147,2,1,1,1,NULL,NULL),(383,148,2,1,1,1,NULL,NULL),(384,149,2,1,1,1,NULL,NULL),(385,150,2,1,1,1,NULL,NULL),(386,151,2,1,1,1,NULL,NULL),(387,152,2,1,1,1,NULL,NULL),(388,636,2,1,1,1,NULL,NULL),(389,168,2,1,1,1,NULL,NULL),(390,169,2,1,1,1,NULL,NULL),(391,170,2,1,1,1,NULL,NULL),(392,171,2,1,1,1,NULL,NULL),(393,172,2,1,1,1,NULL,NULL),(394,173,2,1,1,1,NULL,NULL),(395,174,2,1,1,1,NULL,NULL),(396,175,2,1,1,1,NULL,NULL),(397,176,2,1,1,1,NULL,NULL),(398,177,2,1,1,1,NULL,NULL),(399,178,2,1,1,1,NULL,NULL),(400,179,2,1,1,1,NULL,NULL),(401,180,2,1,1,1,NULL,NULL),(402,181,2,1,1,1,NULL,NULL),(403,182,2,1,1,1,NULL,NULL),(404,183,2,1,1,1,NULL,NULL),(405,184,2,1,1,1,NULL,NULL),(406,185,2,1,1,1,NULL,NULL),(407,186,2,1,1,1,NULL,NULL),(408,187,2,1,1,1,NULL,NULL),(409,188,2,1,1,1,NULL,NULL),(410,189,2,1,1,1,NULL,NULL),(411,190,2,1,1,1,NULL,NULL),(412,191,2,1,1,1,NULL,NULL),(413,192,2,1,1,1,NULL,NULL),(414,193,2,1,1,1,NULL,NULL),(415,194,2,1,1,1,NULL,NULL),(416,195,2,1,1,1,NULL,NULL),(417,196,2,1,1,1,NULL,NULL),(418,197,2,1,1,1,NULL,NULL),(419,198,2,1,1,1,NULL,NULL),(420,199,2,1,1,1,NULL,NULL),(421,200,2,1,1,1,NULL,NULL),(422,201,2,1,1,1,NULL,NULL),(423,202,2,1,1,1,NULL,NULL),(424,203,2,1,1,1,NULL,NULL),(425,205,2,1,1,1,NULL,NULL),(426,206,2,1,1,1,NULL,NULL),(427,207,2,1,1,1,NULL,NULL),(428,209,2,1,1,1,NULL,NULL),(429,210,2,1,1,1,NULL,NULL),(430,211,2,1,1,1,NULL,NULL),(431,212,2,1,1,1,NULL,NULL),(432,281,2,1,1,1,NULL,NULL),(433,282,2,1,1,1,NULL,NULL),(434,283,2,1,1,1,NULL,NULL),(435,284,2,1,1,1,NULL,NULL),(436,285,2,1,1,1,NULL,NULL),(437,286,2,1,1,1,NULL,NULL),(438,287,2,1,1,1,NULL,NULL),(439,288,2,1,1,1,NULL,NULL),(440,482,2,1,1,1,NULL,NULL),(441,483,2,1,1,1,NULL,NULL),(442,484,2,1,1,1,NULL,NULL),(443,485,2,1,1,1,NULL,NULL),(444,486,2,1,1,1,NULL,NULL),(445,487,2,1,1,1,NULL,NULL),(446,488,2,1,1,1,NULL,NULL),(447,489,2,1,1,1,NULL,NULL),(448,490,2,1,1,1,NULL,NULL),(449,491,2,1,1,1,NULL,NULL),(450,567,2,1,1,1,NULL,NULL),(451,568,2,1,1,1,NULL,NULL),(452,290,2,1,1,1,NULL,NULL),(453,291,2,1,1,1,NULL,NULL),(454,292,2,1,1,1,NULL,NULL),(455,293,2,1,1,1,NULL,NULL),(456,294,2,1,1,1,NULL,NULL),(457,295,2,1,1,1,NULL,NULL),(458,296,2,1,1,1,NULL,NULL),(459,298,2,1,1,1,NULL,NULL),(460,299,2,1,1,1,NULL,NULL),(461,297,2,1,1,1,NULL,NULL),(462,300,2,1,1,1,NULL,NULL),(463,301,2,1,1,1,NULL,NULL),(464,302,2,1,1,1,NULL,NULL),(465,303,2,1,1,1,NULL,NULL),(466,304,2,1,1,1,NULL,NULL),(467,464,2,1,1,1,NULL,NULL),(468,465,2,1,1,1,NULL,NULL),(469,305,2,1,1,1,NULL,NULL),(470,306,2,1,1,1,NULL,NULL),(471,307,2,1,1,1,NULL,NULL),(472,308,2,1,1,1,NULL,NULL),(473,309,2,1,1,1,NULL,NULL),(474,310,2,1,1,1,NULL,NULL),(475,311,2,1,1,1,NULL,NULL),(476,312,2,1,1,1,NULL,NULL),(477,313,2,1,1,1,NULL,NULL),(478,314,2,1,1,1,NULL,NULL),(479,315,2,1,1,1,NULL,NULL),(480,316,2,1,1,1,NULL,NULL),(481,318,2,1,1,1,NULL,NULL),(482,319,2,1,1,1,NULL,NULL),(483,320,2,1,1,1,NULL,NULL),(484,321,2,1,1,1,NULL,NULL),(485,322,2,1,1,1,NULL,NULL),(486,323,2,1,1,1,NULL,NULL),(487,324,2,1,1,1,NULL,NULL),(488,325,2,1,1,1,NULL,NULL),(489,326,2,1,1,1,NULL,NULL),(490,327,2,1,1,1,NULL,NULL),(491,328,2,1,1,1,NULL,NULL),(492,329,2,1,1,1,NULL,NULL),(493,330,2,1,1,1,NULL,NULL),(494,331,2,1,1,1,NULL,NULL),(495,332,2,1,1,1,NULL,NULL),(496,333,2,1,1,1,NULL,NULL),(497,334,2,1,1,1,NULL,NULL),(498,335,2,1,1,1,NULL,NULL),(499,336,2,1,1,1,NULL,NULL),(500,337,2,1,1,1,NULL,NULL),(501,338,2,1,1,1,NULL,NULL),(502,339,2,1,1,1,NULL,NULL),(503,340,2,1,1,1,NULL,NULL),(504,341,2,1,1,1,NULL,NULL),(505,342,2,1,1,1,NULL,NULL),(506,343,2,1,1,1,NULL,NULL),(507,344,2,1,1,1,NULL,NULL),(508,626,2,1,1,1,NULL,NULL),(509,627,2,1,1,1,NULL,NULL),(510,628,2,1,1,1,NULL,NULL),(511,629,2,1,1,1,NULL,NULL),(512,537,2,1,1,1,NULL,NULL),(513,538,2,1,1,1,NULL,NULL),(514,539,2,1,1,1,NULL,NULL),(515,540,2,1,1,1,NULL,NULL),(516,541,2,1,1,1,NULL,NULL),(517,542,2,1,1,1,NULL,NULL),(518,543,2,1,1,1,NULL,NULL),(519,544,2,1,1,1,NULL,NULL),(520,545,2,1,1,1,NULL,NULL),(521,550,2,1,1,1,NULL,NULL),(522,551,2,1,1,1,NULL,NULL),(523,552,2,1,1,1,NULL,NULL),(524,642,2,1,1,1,NULL,NULL),(525,643,2,1,1,1,NULL,NULL),(526,644,2,1,1,1,NULL,NULL),(527,699,2,1,1,1,NULL,NULL),(528,700,2,1,1,1,NULL,NULL),(529,732,2,1,1,1,NULL,NULL),(530,733,2,1,1,1,NULL,NULL),(531,345,2,1,1,1,NULL,NULL),(532,346,2,1,1,1,NULL,NULL),(533,347,2,1,1,1,NULL,NULL),(534,348,2,1,1,1,NULL,NULL),(535,349,2,1,1,1,NULL,NULL),(536,350,2,1,1,1,NULL,NULL),(537,351,2,1,1,1,NULL,NULL),(538,352,2,1,1,1,NULL,NULL),(539,353,2,1,1,1,NULL,NULL),(540,354,2,1,1,1,NULL,NULL),(541,355,2,1,1,1,NULL,NULL),(542,356,2,1,1,1,NULL,NULL),(543,357,2,1,1,1,NULL,NULL),(544,358,2,1,1,1,NULL,NULL),(545,359,2,1,1,1,NULL,NULL),(546,360,2,1,1,1,NULL,NULL),(547,361,2,1,1,1,NULL,NULL),(548,362,2,1,1,1,NULL,NULL),(549,97,2,1,1,1,NULL,NULL),(550,98,2,1,1,1,NULL,NULL),(551,99,2,1,1,1,NULL,NULL),(552,100,2,1,1,1,NULL,NULL),(553,369,2,1,1,1,NULL,NULL),(554,370,2,1,1,1,NULL,NULL),(555,371,2,1,1,1,NULL,NULL),(556,372,2,1,1,1,NULL,NULL),(557,373,2,1,1,1,NULL,NULL),(558,374,2,1,1,1,NULL,NULL),(559,375,2,1,1,1,NULL,NULL),(560,376,2,1,1,1,NULL,NULL),(561,377,2,1,1,1,NULL,NULL),(562,378,2,1,1,1,NULL,NULL),(563,379,2,1,1,1,NULL,NULL),(564,380,2,1,1,1,NULL,NULL),(565,381,2,1,1,1,NULL,NULL),(566,382,2,1,1,1,NULL,NULL),(567,383,2,1,1,1,NULL,NULL),(568,384,2,1,1,1,NULL,NULL),(569,385,2,1,1,1,NULL,NULL),(570,386,2,1,1,1,NULL,NULL),(571,387,2,1,1,1,NULL,NULL),(572,388,2,1,1,1,NULL,NULL),(573,389,2,1,1,1,NULL,NULL),(574,390,2,1,1,1,NULL,NULL),(575,391,2,1,1,1,NULL,NULL),(576,392,2,1,1,1,NULL,NULL),(577,393,2,1,1,1,NULL,NULL),(578,394,2,1,1,1,NULL,NULL),(579,395,2,1,1,1,NULL,NULL),(580,396,2,1,1,1,NULL,NULL),(581,397,2,1,1,1,NULL,NULL),(582,398,2,1,1,1,NULL,NULL),(583,457,2,1,1,1,NULL,NULL),(584,458,2,1,1,1,NULL,NULL),(585,459,2,1,1,1,NULL,NULL),(586,460,2,1,1,1,NULL,NULL),(587,461,2,1,1,1,NULL,NULL),(588,462,2,1,1,1,NULL,NULL),(589,400,2,1,1,1,NULL,NULL),(590,401,2,1,1,1,NULL,NULL),(591,402,2,1,1,1,NULL,NULL),(592,403,2,1,1,1,NULL,NULL),(593,404,2,1,1,1,NULL,NULL),(594,405,2,1,1,1,NULL,NULL),(595,406,2,1,1,1,NULL,NULL),(596,407,2,1,1,1,NULL,NULL),(597,408,2,1,1,1,NULL,NULL),(598,409,2,1,1,1,NULL,NULL),(599,410,2,1,1,1,NULL,NULL),(600,411,2,1,1,1,NULL,NULL),(601,412,2,1,1,1,NULL,NULL),(602,413,2,1,1,1,NULL,NULL),(603,414,2,1,1,1,NULL,NULL),(604,415,2,1,1,1,NULL,NULL),(605,416,2,1,1,1,NULL,NULL),(606,417,2,1,1,1,NULL,NULL),(607,418,2,1,1,1,NULL,NULL),(608,419,2,1,1,1,NULL,NULL),(609,420,2,1,1,1,NULL,NULL),(610,421,2,1,1,1,NULL,NULL),(611,422,2,1,1,1,NULL,NULL),(612,423,2,1,1,1,NULL,NULL),(613,424,2,1,1,1,NULL,NULL),(614,425,2,1,1,1,NULL,NULL),(615,426,2,1,1,1,NULL,NULL),(616,427,2,1,1,1,NULL,NULL),(617,428,2,1,1,1,NULL,NULL),(618,429,2,1,1,1,NULL,NULL),(619,430,2,1,1,1,NULL,NULL),(620,431,2,1,1,1,NULL,NULL),(621,432,2,1,1,1,NULL,NULL),(622,433,2,1,1,1,NULL,NULL),(623,434,2,1,1,1,NULL,NULL),(624,435,2,1,1,1,NULL,NULL),(625,436,2,1,1,1,NULL,NULL),(626,437,2,1,1,1,NULL,NULL),(627,438,2,1,1,1,NULL,NULL),(628,439,2,1,1,1,NULL,NULL),(629,440,2,1,1,1,NULL,NULL),(630,441,2,1,1,1,NULL,NULL),(631,442,2,1,1,1,NULL,NULL),(632,443,2,1,1,1,NULL,NULL),(633,444,2,1,1,1,NULL,NULL),(634,445,2,1,1,1,NULL,NULL),(635,446,2,1,1,1,NULL,NULL),(636,447,2,1,1,1,NULL,NULL),(637,448,2,1,1,1,NULL,NULL),(638,449,2,1,1,1,NULL,NULL),(639,450,2,1,1,1,NULL,NULL),(640,451,2,1,1,1,NULL,NULL),(641,452,2,1,1,1,NULL,NULL),(642,453,2,1,1,1,NULL,NULL),(643,454,2,1,1,1,NULL,NULL),(644,455,2,1,1,1,NULL,NULL),(645,456,2,1,1,1,NULL,NULL),(646,469,2,1,1,1,NULL,NULL),(647,470,2,1,1,1,NULL,NULL),(648,471,2,1,1,1,NULL,NULL),(649,472,2,1,1,1,NULL,NULL),(650,473,2,1,1,1,NULL,NULL),(651,474,2,1,1,1,NULL,NULL),(652,475,2,1,1,1,NULL,NULL),(653,476,2,1,1,1,NULL,NULL),(654,477,2,1,1,1,NULL,NULL),(655,478,2,1,1,1,NULL,NULL),(656,479,2,1,1,1,NULL,NULL),(657,480,2,1,1,1,NULL,NULL),(658,481,2,1,1,1,NULL,NULL),(659,496,2,1,1,1,NULL,NULL),(660,499,2,1,1,1,NULL,NULL),(661,500,2,1,1,1,NULL,NULL),(662,575,2,1,1,1,NULL,NULL),(663,501,2,1,1,1,NULL,NULL),(664,576,2,1,1,1,NULL,NULL),(665,502,2,1,1,1,NULL,NULL),(666,503,2,1,1,1,NULL,NULL),(667,504,2,1,1,1,NULL,NULL),(668,505,2,1,1,1,NULL,NULL),(669,506,2,1,1,1,NULL,NULL),(670,507,2,1,1,1,NULL,NULL),(671,508,2,1,1,1,NULL,NULL),(672,509,2,1,1,1,NULL,NULL),(673,510,2,1,1,1,NULL,NULL),(674,511,2,1,1,1,NULL,NULL),(675,574,2,1,1,1,NULL,NULL),(676,516,2,1,1,1,NULL,NULL),(677,518,2,1,1,1,NULL,NULL),(678,519,2,1,1,1,NULL,NULL),(679,520,2,1,1,1,NULL,NULL),(680,521,2,1,1,1,NULL,NULL),(681,522,2,1,1,1,NULL,NULL),(682,523,2,1,1,1,NULL,NULL),(683,525,2,1,1,1,NULL,NULL),(684,526,2,1,1,1,NULL,NULL),(685,527,2,1,1,1,NULL,NULL),(686,528,2,1,1,1,NULL,NULL),(687,529,2,1,1,1,NULL,NULL),(688,530,2,1,1,1,NULL,NULL),(689,546,2,1,1,1,NULL,NULL),(690,547,2,1,1,1,NULL,NULL),(691,548,2,1,1,1,NULL,NULL),(692,549,2,1,1,1,NULL,NULL),(693,631,2,1,1,1,NULL,NULL),(694,632,2,1,1,1,NULL,NULL),(695,633,2,1,1,1,NULL,NULL),(696,634,2,1,1,1,NULL,NULL),(697,635,2,1,1,1,NULL,NULL),(698,637,2,1,1,1,NULL,NULL),(699,667,2,1,1,1,NULL,NULL),(700,668,2,1,1,1,NULL,NULL),(701,669,2,1,1,1,NULL,NULL),(702,670,2,1,1,1,NULL,NULL),(703,671,2,1,1,1,NULL,NULL),(704,363,2,1,1,1,NULL,NULL),(705,364,2,1,1,1,NULL,NULL),(706,365,2,1,1,1,NULL,NULL),(707,366,2,1,1,1,NULL,NULL),(708,367,2,1,1,1,NULL,NULL),(709,368,2,1,1,1,NULL,NULL),(710,678,2,1,1,1,NULL,NULL),(711,679,2,1,1,1,NULL,NULL),(712,680,2,1,1,1,NULL,NULL),(713,692,2,1,1,1,NULL,NULL),(714,693,2,1,1,1,NULL,NULL),(715,681,2,1,1,1,NULL,NULL),(716,682,2,1,1,1,NULL,NULL),(717,683,2,1,1,1,NULL,NULL),(718,684,2,1,1,1,NULL,NULL),(719,685,2,1,1,1,NULL,NULL),(720,686,2,1,1,1,NULL,NULL),(721,687,2,1,1,1,NULL,NULL),(722,688,2,1,1,1,NULL,NULL),(723,689,2,1,1,1,NULL,NULL),(724,694,2,1,1,1,NULL,NULL),(725,696,2,1,1,1,NULL,NULL),(726,695,2,1,1,1,NULL,NULL),(727,690,2,1,1,1,NULL,NULL),(728,691,2,1,1,1,NULL,NULL),(729,701,2,1,1,1,NULL,NULL),(730,702,2,1,1,1,NULL,NULL),(731,705,2,1,1,1,NULL,NULL),(732,706,2,1,1,1,NULL,NULL),(733,707,2,1,1,1,NULL,NULL),(734,708,2,1,1,1,NULL,NULL),(735,16,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(736,17,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(737,18,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(738,19,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(739,20,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(740,21,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(741,22,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(742,23,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(743,24,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(744,25,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(745,153,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(746,154,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(747,155,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(748,156,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(749,157,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(750,158,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(751,159,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(752,160,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(753,161,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(754,162,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(755,163,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(756,164,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(757,165,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(758,166,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(759,167,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(760,493,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(761,494,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(762,495,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(763,496,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(764,497,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(765,608,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(766,512,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(767,531,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(768,609,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(769,610,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(770,611,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(771,612,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(772,613,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(773,614,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(774,615,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(775,616,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(776,617,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(777,618,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(778,619,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(779,620,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(780,621,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(781,622,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(782,623,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(783,624,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(784,625,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(785,281,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(786,489,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(787,490,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(788,491,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(789,498,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(790,312,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(791,317,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(792,407,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(793,514,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(794,515,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(795,504,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(796,505,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(797,506,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(798,507,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(799,508,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(800,509,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(801,510,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(802,511,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(803,574,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(804,705,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(805,706,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(806,707,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(807,708,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(808,496,6,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(809,497,6,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(810,608,6,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(811,711,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(812,712,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(813,713,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(814,711,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(815,712,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39'),(816,713,5,1,1,1,'2022-11-23 06:21:39','2022-11-23 06:21:39');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super admin','superadmin',NULL,NULL,'2022-11-23 05:55:28','2022-11-23 17:55:30'),(2,'Admin','admin',NULL,NULL,'2022-11-23 05:55:28','2022-11-23 05:55:28'),(3,'Staff','staff',NULL,NULL,'2022-11-23 05:55:28','2022-11-23 05:55:28'),(4,'Customer','customer',NULL,NULL,'2022-11-23 05:55:28','2022-11-23 05:55:28'),(5,'Seller','seller',NULL,'MultiVendor','2022-11-23 06:21:39','2022-11-23 06:21:39'),(6,'Sub Seller','seller',NULL,'MultiVendor','2022-11-23 06:21:39','2022-11-23 06:21:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` bigint(20) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (1,'hp laptop',2,'2022-11-23 15:57:37','2022-11-24 09:06:18'),(2,'lenovo',1,'2022-11-24 09:48:14','2022-11-24 09:48:14'),(3,'earphones',2,'2022-11-24 10:29:59','2022-11-24 10:30:25'),(4,'earphone',2,'2022-11-24 10:30:10','2022-11-24 10:30:37');
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `seller_commission_id` tinyint(4) NOT NULL DEFAULT '0',
  `commission_rate` double(16,2) DEFAULT NULL,
  `seller_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_shop_display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday_mode` tinyint(1) NOT NULL DEFAULT '0',
  `holiday_type` int(10) unsigned DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `holiday_date_start` date DEFAULT NULL,
  `holiday_date_end` date DEFAULT NULL,
  `is_trusted` tinyint(1) NOT NULL DEFAULT '0',
  `total_sale_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `about_seller` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seller_accounts_seller_id_unique` (`seller_id`),
  UNIQUE KEY `seller_accounts_seller_shop_display_name_unique` (`seller_shop_display_name`),
  KEY `seller_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_accounts` WRITE;
/*!40000 ALTER TABLE `seller_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_accounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_bank_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `payment` int(10) unsigned NOT NULL DEFAULT '0',
  `bank_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_routing_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_ibn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_cheque` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_bank_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_bank_accounts` WRITE;
/*!40000 ALTER TABLE `seller_bank_accounts` DISABLE KEYS */;
INSERT INTO `seller_bank_accounts` VALUES (1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `seller_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_business_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_business_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `business_owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_person_in_charge_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_registration_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_seller_tin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claim_gst` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_business_information_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_business_information_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_business_information` WRITE;
/*!40000 ALTER TABLE `seller_business_information` DISABLE KEYS */;
INSERT INTO `seller_business_information` VALUES (1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `seller_business_information` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_commissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double(28,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_commissions` WRITE;
/*!40000 ALTER TABLE `seller_commissions` DISABLE KEYS */;
INSERT INTO `seller_commissions` VALUES (1,'Flat Rate',0.00,NULL,1,NULL,NULL,NULL,NULL),(2,'Category Wise Commission',0.00,NULL,1,NULL,NULL,NULL,NULL),(3,'Subscription',0.00,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `seller_commissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_product_s_k_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_product_s_k_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_stock` double NOT NULL DEFAULT '0',
  `purchase_price` double DEFAULT '0',
  `selling_price` double NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_product_s_k_us_user_id_foreign` (`user_id`),
  KEY `seller_product_s_k_us_product_id_foreign` (`product_id`),
  KEY `seller_product_s_k_us_id_user_id_product_id_product_sku_id_index` (`id`,`user_id`,`product_id`,`product_sku_id`),
  CONSTRAINT `seller_product_s_k_us_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `seller_products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `seller_product_s_k_us_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_product_s_k_us` WRITE;
/*!40000 ALTER TABLE `seller_product_s_k_us` DISABLE KEYS */;
INSERT INTO `seller_product_s_k_us` VALUES (1,1,1,'1',10,0,27000,1,'2022-11-24 09:02:42','2022-11-24 09:19:31'),(2,1,2,'2',0,0,25000,1,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(3,1,3,'3',12,0,1200,1,'2022-11-24 10:13:45','2022-11-24 10:23:38');
/*!40000 ALTER TABLE `seller_product_s_k_us` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `tax_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thum_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `stock_manage` tinyint(4) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `min_sell_price` double(28,2) NOT NULL DEFAULT '0.00',
  `max_sell_price` double(28,2) NOT NULL DEFAULT '0.00',
  `total_sale` bigint(20) unsigned NOT NULL DEFAULT '0',
  `avg_rating` double(8,2) NOT NULL DEFAULT '0.00',
  `recent_view` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subtitle_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_products_user_id_foreign` (`user_id`),
  KEY `seller_products_product_id_foreign` (`product_id`),
  KEY `seller_products_id_product_id_status_index` (`id`,`product_id`,`status`),
  CONSTRAINT `seller_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `seller_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_products` WRITE;
/*!40000 ALTER TABLE `seller_products` DISABLE KEYS */;
INSERT INTO `seller_products` VALUES (1,1,1,0,'0',0,'1',NULL,NULL,'Hp 840 g2 core i5 5th gen 8gb ram 500gb','hp-840-g2-core-i5-5th-gen-8gb-ram-500gb',NULL,1,1,1,27000.00,27000.00,0,0.00,'2022-11-24 11:10:39',NULL,NULL,'2022-11-24 09:02:42','2022-11-24 11:10:39'),(2,1,2,0,'0',0,'1',NULL,NULL,'Lenovo x260 core i5 6th gen 8gb 256gb ssd','lenovo-x260-core-i5-6th-gen-8gb-256gb-ssd',NULL,1,0,1,25000.00,25000.00,0,0.00,'2022-11-24 14:41:03',NULL,NULL,'2022-11-24 09:44:51','2022-11-24 14:41:03'),(3,1,3,0,'0',10,'0',NULL,NULL,'I13 TWS Pods Wireless Bluetooth Earphone HIFI Stereo Touch Headset','i13-tws-pods-wireless-bluetooth-earphone-hifi-stereo-touch-headset','uploads/images/24-11-2022/637f2b0e27095.jpeg',1,1,1,1200.00,1200.00,0,0.00,'2022-11-24 15:38:19',NULL,NULL,'2022-11-24 10:13:45','2022-11-24 15:38:19');
/*!40000 ALTER TABLE `seller_products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_return_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_return_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `same_as_warehouse` tinyint(1) NOT NULL DEFAULT '1',
  `return_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_return_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_return_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_return_addresses` WRITE;
/*!40000 ALTER TABLE `seller_return_addresses` DISABLE KEYS */;
INSERT INTO `seller_return_addresses` VALUES (1,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `seller_return_addresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_reviews` WRITE;
/*!40000 ALTER TABLE `seller_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_reviews` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_social_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_social_links_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_social_links_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_social_links` WRITE;
/*!40000 ALTER TABLE `seller_social_links` DISABLE KEYS */;
INSERT INTO `seller_social_links` VALUES (1,1,'https://www.facebook.com/pomalo.co.ke','fab fa-facebook-square',1,'2022-11-23 15:59:53','2022-11-23 15:59:53'),(2,1,'https://www.instagram.com/pomalo_ke/','fab fa-instagram',1,'2022-11-23 16:00:09','2022-11-23 16:00:09'),(3,1,'https://twitter.com/pomalo_ke','fab fa-twitter-square',1,'2022-11-23 16:00:21','2022-11-23 16:00:21'),(4,1,'https://www.linkedin.com/company/pomalo-co-ke/','fab fa-linkedin-in',1,'2022-11-23 16:00:36','2022-11-23 16:00:36');
/*!40000 ALTER TABLE `seller_social_links` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_subcriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_subcriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) unsigned DEFAULT NULL,
  `pricing_id` bigint(20) unsigned DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `last_payment_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_subcriptions` WRITE;
/*!40000 ALTER TABLE `seller_subcriptions` DISABLE KEYS */;
INSERT INTO `seller_subcriptions` VALUES (1,2,NULL,0,NULL,NULL,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `seller_subcriptions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_warehouse_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_warehouse_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `warehouse_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_warehouse_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `seller_warehouse_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_warehouse_addresses` WRITE;
/*!40000 ALTER TABLE `seller_warehouse_addresses` DISABLE KEYS */;
INSERT INTO `seller_warehouse_addresses` VALUES (1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-24 14:36:17','2022-11-24 14:36:17');
/*!40000 ALTER TABLE `seller_warehouse_addresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_wise_carrier_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_wise_carrier_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `carrier_id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `carrier_status` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_wise_carrier_configs` WRITE;
/*!40000 ALTER TABLE `seller_wise_carrier_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_wise_carrier_configs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `seller_wise_payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_wise_payment_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `perameter_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perameter_7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seller_wise_payment_gateways` WRITE;
/*!40000 ALTER TABLE `seller_wise_payment_gateways` DISABLE KEYS */;
INSERT INTO `seller_wise_payment_gateways` VALUES (1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(2,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-24 15:56:38'),(3,3,1,0,'sandbox','','',NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(4,4,1,0,'','demo@strip.com','',NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(5,5,1,0,'','','','https://api.paystack.co',NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(6,6,1,0,'','',NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(7,7,1,0,'','','','',NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(8,8,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(9,9,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(10,10,1,0,'sandbox','','',NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(11,11,1,0,'TEST_MODE','','','',NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(12,12,1,0,'sandbox','','','','',NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(13,13,1,0,'TEST','allpayments','','',NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37'),(14,14,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:37','2022-11-23 17:55:37');
/*!40000 ALTER TABLE `seller_wise_payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `shipping_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seller_id` bigint(20) unsigned DEFAULT NULL,
  `order_confirm_and_sync` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_show_for_customer` tinyint(1) DEFAULT NULL,
  `default_carrier` bigint(20) unsigned DEFAULT NULL,
  `order_auto_confirm` tinyint(1) DEFAULT NULL,
  `pickup_location` bigint(20) unsigned DEFAULT NULL,
  `refund_order_sync_carrier` tinyint(1) DEFAULT NULL,
  `seller_use_shiproket` tinyint(1) DEFAULT NULL,
  `amount_multiply_with_qty` tinyint(1) NOT NULL DEFAULT '0',
  `carrier_order_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `shipping_configurations` WRITE;
/*!40000 ALTER TABLE `shipping_configurations` DISABLE KEYS */;
INSERT INTO `shipping_configurations` VALUES (1,NULL,NULL,1,'Manual',0,NULL,0,1,0,0,0,'Custom','barcode'),(2,'2022-11-24 14:36:17','2022-11-24 14:36:17',2,'Manual',0,NULL,0,1,0,0,0,'Custom','barcode');
/*!40000 ALTER TABLE `shipping_configurations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `cost_based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flat',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double(28,2) NOT NULL DEFAULT '0.00',
  `minimum_shopping` double NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `request_by_user` int(10) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipping_methods_carrier_id_foreign` (`carrier_id`),
  CONSTRAINT `shipping_methods_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (1,'Email Delivery',1,'Flat',NULL,NULL,'12-24 hrs',0.00,0,0,1,1,NULL,'2022-11-24 09:27:32'),(2,'Speedaf',1,'Price',NULL,NULL,'0-2 days',35.00,1,1,1,1,NULL,'2022-11-24 15:40:30'),(3,'Flat Rate',2,'Flat',NULL,NULL,'0-3 days',20.00,0,1,2,1,'2022-11-24 14:36:17','2022-11-24 14:36:17'),(4,'Speedaf 1',1,'Price',NULL,NULL,'0-2 days',40.00,1000,1,1,1,'2022-11-24 15:41:34','2022-11-24 15:41:34'),(5,'Speedaf2',1,'Price',NULL,NULL,'0-2 days',42.00,2001,1,1,1,'2022-11-24 15:42:05','2022-11-24 15:42:05');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sms_gateway_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_gateway_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to_parameter_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_parameter_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_1_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_2_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_3_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_4_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_5_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_6_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_7_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_8_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_9_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_10_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_1_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_2_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_3_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_4_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_5_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_6_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_7_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_8_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_9_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_10_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sms_gateway_settings` WRITE;
/*!40000 ALTER TABLE `sms_gateway_settings` DISABLE KEYS */;
INSERT INTO `sms_gateway_settings` VALUES (1,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `sms_gateway_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sms_template_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_template_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sms_template_types` WRITE;
/*!40000 ALTER TABLE `sms_template_types` DISABLE KEYS */;
INSERT INTO `sms_template_types` VALUES (1,'order_invoice_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'order_pending_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'order_confirmed_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'order_declined_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,'paid_payment_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,'order_completed_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(7,'delivery_process_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(8,'refund_pending_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(9,'refund_confirmed_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(10,'refund_declined_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(11,'refund_money_paid_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(12,'refund_money_pending_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(13,'refund_completed_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(14,'refund_process_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(15,'gift_card_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(16,'review_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(17,'bulk_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(18,'order_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(19,'register_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(20,'notification_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(21,'support_ticket_sms_template',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(22,'wallet_offline_recharge',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(23,'wallet_online_recharge',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(24,'withdraw_request_approve',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(25,'withdraw_request_declined',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(26,'Product disable',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(27,'Seller product approval','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(28,'Seller product update','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(29,'Seller payout','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(30,'Seller payout request','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(31,'Seller approved','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(32,'Seller suspended','MultiVendor','2022-11-23 18:21:39','2022-11-23 18:21:39'),(35,'registration_templete',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(36,'order_confirmation_templete',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(37,'login_otp_templete',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(38,'Password_reset_otp_templete',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05');
/*!40000 ALTER TABLE `sms_template_types` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) unsigned DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `relatable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatable_id` bigint(20) unsigned DEFAULT NULL,
  `reciepnt_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,1,'Order Invoice','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,2,'Order Pending','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,3,'Order Confirmation','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,4,'Order Declined','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,5,'Paid Payment','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,6,'Order Complete','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(7,8,'Refund Pending','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(8,9,'Refund Confirmation','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(9,10,'Refund Declined','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(11,12,'Refund Payment Pending','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(12,13,'Refund Completed','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(13,14,'Refund Processing','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(14,17,'Bulk SMS','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(15,18,'Order','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(16,19,'Register','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(17,15,'Giftcard Template','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(18,16,'Review Template','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(19,21,'Support Ticket','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(20,22,'Wallet Offline Recharge','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(21,23,'Wallet Online Recharge','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(22,24,'withdraw_request_approve','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(23,25,'withdraw_request_declined','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(24,26,'Product disable Template','write where',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(25,35,'Registration','Your registration otp : ',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(26,36,'Order Confirmation','Order confirmation otp : ',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(27,37,'User Login','user login otp is : ',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05'),(28,38,'Password Reset','password reset otp is : ',1,NULL,NULL,'[\"customer\"]',NULL,'2022-11-23 18:22:05','2022-11-23 18:22:05');
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `social_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_providers_provider_id_unique` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `social_providers` WRITE;
/*!40000 ALTER TABLE `social_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_providers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT '1',
  `department_id` int(10) unsigned DEFAULT '1',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` double(16,2) DEFAULT '0.00',
  `date_of_joining` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `leave_applicable_date` date DEFAULT NULL,
  `carry_forward` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'EMP-00001',1,1,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,0,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `staff_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `staff_documents` WRITE;
/*!40000 ALTER TABLE `staff_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_documents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (4123,'Baringo',113,1,'2022-11-22 23:52:17','2022-11-22 23:52:17'),(4124,'Bomet',113,1,'2022-11-22 23:52:29','2022-11-22 23:52:29'),(4125,'Bungoma',113,1,'2022-11-22 23:52:43','2022-11-22 23:52:43'),(4126,'Busia',113,1,'2022-11-22 23:53:31','2022-11-22 23:53:31'),(4127,'Elgeyo-Marakwet',113,1,'2022-11-22 23:53:41','2022-11-22 23:53:41'),(4128,'Embu',113,1,'2022-11-22 23:53:53','2022-11-22 23:53:53'),(4129,'Garissa',113,1,'2022-11-22 23:54:02','2022-11-22 23:54:02'),(4130,'Homa Bay',113,1,'2022-11-22 23:54:12','2022-11-22 23:54:12'),(4131,'Isiolo',113,1,'2022-11-22 23:54:22','2022-11-22 23:54:22'),(4132,'Kajiado',113,1,'2022-11-22 23:54:48','2022-11-22 23:54:48'),(4133,'Kakamega',113,1,'2022-11-22 23:54:56','2022-11-22 23:54:56'),(4134,'Kericho',113,1,'2022-11-22 23:55:04','2022-11-22 23:55:04'),(4135,'Kiambu',113,1,'2022-11-22 23:55:22','2022-11-22 23:55:22'),(4136,'Kilifi',113,1,'2022-11-22 23:55:30','2022-11-22 23:55:30'),(4137,'Kirinyaga',113,1,'2022-11-22 23:55:39','2022-11-22 23:55:39'),(4138,'Kisii',113,1,'2022-11-22 23:56:02','2022-11-22 23:56:02'),(4139,'Kisumu',113,1,'2022-11-22 23:56:09','2022-11-22 23:56:09'),(4140,'Kitui',113,1,'2022-11-22 23:56:17','2022-11-22 23:56:17'),(4141,'Kwale',113,1,'2022-11-22 23:56:34','2022-11-22 23:56:34'),(4142,'Laikipia',113,1,'2022-11-22 23:57:03','2022-11-22 23:57:03'),(4143,'Lamu',113,1,'2022-11-22 23:57:16','2022-11-22 23:57:16'),(4144,'Machakos',113,1,'2022-11-22 23:57:23','2022-11-22 23:57:23'),(4145,'Makueni',113,1,'2022-11-22 23:57:41','2022-11-22 23:57:41'),(4146,'Marsabit',113,1,'2022-11-22 23:57:50','2022-11-22 23:57:50'),(4147,'Meru',113,1,'2022-11-22 23:57:58','2022-11-22 23:57:58'),(4148,'Migori',113,1,'2022-11-22 23:58:06','2022-11-22 23:58:06'),(4149,'Mombasa',113,1,'2022-11-22 23:58:22','2022-11-22 23:58:22'),(4150,'Murang\'a',113,1,'2022-11-22 23:58:36','2022-11-22 23:58:36'),(4151,'Nairobi',113,1,'2022-11-22 23:58:55','2022-11-22 23:58:55'),(4152,'Nakuru',113,1,'2022-11-22 23:59:03','2022-11-22 23:59:03'),(4153,'Nandi',113,1,'2022-11-22 23:59:11','2022-11-22 23:59:11'),(4154,'Narok',113,1,'2022-11-22 23:59:29','2022-11-22 23:59:29'),(4155,'Nyamira',113,1,'2022-11-22 23:59:36','2022-11-22 23:59:36'),(4156,'Nyandarua',113,1,'2022-11-22 23:59:45','2022-11-22 23:59:45'),(4157,'Nyeri',113,1,'2022-11-22 23:59:56','2022-11-22 23:59:56'),(4158,'Samburu',113,1,'2022-11-23 00:00:09','2022-11-23 00:00:09'),(4159,'Siaya',113,1,'2022-11-23 00:00:22','2022-11-23 00:00:22'),(4160,'Taita-Taveta',113,1,'2022-11-23 00:00:33','2022-11-23 00:00:33'),(4161,'Tana River',113,1,'2022-11-23 00:01:05','2022-11-23 00:01:05'),(4162,'Tharaka-Nithi',113,1,'2022-11-23 00:01:12','2022-11-23 00:01:12'),(4163,'Trans-Nzoia',113,1,'2022-11-23 00:01:20','2022-11-23 00:01:20'),(4164,'Turkana',113,1,'2022-11-23 00:01:40','2022-11-23 00:01:40'),(4165,'Uasin Gishu',113,1,'2022-11-23 00:01:48','2022-11-23 00:01:48'),(4166,'Vihiga',113,1,'2022-11-23 00:02:00','2022-11-23 00:02:00'),(4167,'West Pokot',113,1,'2022-11-23 00:02:09','2022-11-23 00:02:09');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sub_seller_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_seller_accesses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sub_seller_accesses` WRITE;
/*!40000 ALTER TABLE `sub_seller_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_seller_accesses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sub_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_sellers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sub_sellers` WRITE;
/*!40000 ALTER TABLE `sub_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_sellers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscribe_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscribe_contents` WRITE;
/*!40000 ALTER TABLE `subscribe_contents` DISABLE KEYS */;
INSERT INTO `subscribe_contents` VALUES (1,NULL,'GET A QUICK QUOTE','Get to Know Project Estimate?','Subscribe our newsletter for coupon, offer and exciting promotional discount.',NULL,NULL,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Subscribe to Our Newsletter','Subscribe our newsletter for coupon, offer and exciting promotional discount.',NULL,'frontend/default/img/popup.png',5,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'promotion bar',NULL,'#','uploads/images/23-11-2022/637e2619a80b8.webp',NULL,1,'2022-11-23 17:55:35','2022-11-23 15:54:33'),(4,NULL,'ads bar',NULL,'#','uploads/images/23-11-2022/637e25fe2e034.jpeg',NULL,1,'2022-11-23 17:55:35','2022-11-23 15:54:06');
/*!40000 ALTER TABLE `subscribe_contents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscription_payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_payment_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) unsigned NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `commission_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscription_payment_info` WRITE;
/*!40000 ALTER TABLE `subscription_payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_payment_info` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verify_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'alimonday2030@gmail.com',1,0,NULL,'2022-11-24 15:49:22','2022-11-24 15:49:22');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payterm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` double DEFAULT '0',
  `payterm_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `suppliers_user_id_foreign` (`user_id`),
  CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `support_ticket_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `support_ticket_category` WRITE;
/*!40000 ALTER TABLE `support_ticket_category` DISABLE KEYS */;
INSERT INTO `support_ticket_category` VALUES (1,'Installation',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Technical',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Others',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `support_ticket_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `support_ticket_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_ticket_files_attachment_type_attachment_id_index` (`attachment_type`,`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `support_ticket_files` WRITE;
/*!40000 ALTER TABLE `support_ticket_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_ticket_files` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `support_ticket_pirority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket_pirority` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `support_ticket_pirority` WRITE;
/*!40000 ALTER TABLE `support_ticket_pirority` DISABLE KEYS */;
INSERT INTO `support_ticket_pirority` VALUES (1,'High',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'Medium',1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Low',1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `support_ticket_pirority` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `priority_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `refer_id` bigint(20) unsigned DEFAULT NULL,
  `status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `support_tickets_reference_no_unique` (`reference_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'hp',NULL,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(2,'hp laptop',NULL,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(3,' laptop',NULL,'2022-11-24 09:02:42','2022-11-24 09:02:42'),(4,'laptop',NULL,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(5,'lenovo laptop',NULL,'2022-11-24 09:44:51','2022-11-24 09:44:51'),(6,'earphone',NULL,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(7,'bluetooth earphone',NULL,'2022-11-24 10:13:44','2022-11-24 10:13:44'),(8,'earphone',NULL,'2022-11-24 10:13:46','2022-11-24 10:13:46'),(9,'bluetooth earphone',NULL,'2022-11-24 10:13:46','2022-11-24 10:13:46'),(10,'earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(11,'earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(12,'bluetooth earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(13,'bluetooth earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(14,'earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(15,'bluetooth earphone',NULL,'2022-11-24 10:13:49','2022-11-24 10:13:49'),(16,'earphone',NULL,'2022-11-24 10:13:50','2022-11-24 10:13:50'),(17,'bluetooth earphone',NULL,'2022-11-24 10:13:50','2022-11-24 10:13:50');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `terms_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms_conditions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `source_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `terms_conditions` WRITE;
/*!40000 ALTER TABLE `terms_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_conditions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `theme_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navbar_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danger_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `theme_colors` WRITE;
/*!40000 ALTER TABLE `theme_colors` DISABLE KEYS */;
INSERT INTO `theme_colors` VALUES (1,'Default','#f4f7f9','#ff0027','#222222','#fff','#fff','#fff','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',1,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,'Color Scheme One','#f4f7f9','#39b021','#222222','#f4f7f9','#f4f7f9','#f4f7f9','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,'Color Scheme Two','#f4f7f9','#ff0007','#222222','#f4f7f9','#f4f7f9','#f4f7f9','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,'Color Scheme Three','#f4f7f9','#89a021','#222222','#f4f7f9','#f4f7f9','#f4f7f9','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,'Color Scheme Four','#f4f7f9','#d8eb34','#222222','#f4f7f9','#f4f7f9','#f4f7f9','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',0,'2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,'Color Scheme Five','#f4f7f9','#d8eb34','#222222','#f4f7f9','#f4f7f9','#f4f7f9','#f4f7f9','#e4e7e9','#4BCF90','#E09079','#FF6D68',0,'2022-11-23 17:55:29','2022-11-23 17:55:29');
/*!40000 ALTER TABLE `theme_colors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `live_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_code` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `activated_date` text COLLATE utf8mb4_unicode_ci,
  `item_code` text COLLATE utf8mb4_unicode_ci,
  `checksum` text COLLATE utf8mb4_unicode_ci,
  `installed_domain` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,NULL,'Default','Default Theme','frontend/default/img/amazcart.jpg','1.00','default','https://amaz.rishfa.com/','initial description',0,1,NULL,'2022-11-23 17:55:28','2022-11-23 17:55:35',NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'Amazy','','/frontend/amazy/img/amazy.jpg','1.0.0','amazy','http://amazy.rishfa.com/','Amazy theme description',1,1,'amazy','2022-11-23 17:55:28','2022-11-23 17:55:28',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ticket_message_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_message_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) unsigned DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ticket_message_files` WRITE;
/*!40000 ALTER TABLE `ticket_message_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_message_files` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ticket_messages` WRITE;
/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ticket_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ticket_statuses` WRITE;
/*!40000 ALTER TABLE `ticket_statuses` DISABLE KEYS */;
INSERT INTO `ticket_statuses` VALUES (1,'Pending',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,'On Going',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,'Completed',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,'Closed',0,1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `ticket_statuses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `time_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `time_zones` WRITE;
/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` VALUES (1,'Pacific/Midway','(GMT-11:00) Midway Island','2022-11-23 17:55:27','2022-11-23 17:55:27'),(2,'US/Samoa','(GMT-11:00) Samoa','2022-11-23 17:55:27','2022-11-23 17:55:27'),(3,'US/Hawaii','(GMT-10:00) Hawaii','2022-11-23 17:55:27','2022-11-23 17:55:27'),(4,'US/Alaska','(GMT-09:00) Alaska','2022-11-23 17:55:27','2022-11-23 17:55:27'),(5,'US/Pacific','(GMT-08:00) Pacific Time (US &amp; Canada)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(6,'America/Tijuana','(GMT-08:00) Tijuana','2022-11-23 17:55:27','2022-11-23 17:55:27'),(7,'US/Arizona','(GMT-07:00) Arizona','2022-11-23 17:55:27','2022-11-23 17:55:27'),(8,'US/Mountain','(GMT-07:00) Mountain Time (US &amp; Canada)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(9,'America/Chihuahua','(GMT-07:00) Chihuahua','2022-11-23 17:55:27','2022-11-23 17:55:27'),(10,'America/Mazatlan','(GMT-07:00) Mazatlan','2022-11-23 17:55:27','2022-11-23 17:55:27'),(11,'America/Mexico_City','(GMT-06:00) Mexico City','2022-11-23 17:55:27','2022-11-23 17:55:27'),(12,'America/Monterrey','(GMT-06:00) Monterrey','2022-11-23 17:55:27','2022-11-23 17:55:27'),(13,'Canada/Saskatchewan','(GMT-06:00) Saskatchewan','2022-11-23 17:55:27','2022-11-23 17:55:27'),(14,'US/Central','(GMT-06:00) Central Time (US &amp; Canada)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(15,'US/Eastern','(GMT-05:00) Eastern Time (US &amp; Canada)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(16,'US/East-Indiana','(GMT-05:00) Indiana (East)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(17,'America/Bogota','(GMT-05:00) Bogota','2022-11-23 17:55:27','2022-11-23 17:55:27'),(18,'America/Lima','(GMT-05:00) Lima','2022-11-23 17:55:27','2022-11-23 17:55:27'),(19,'America/Caracas','(GMT-04:30) Caracas','2022-11-23 17:55:27','2022-11-23 17:55:27'),(20,'Canada/Atlantic','(GMT-04:00) Atlantic Time (Canada)','2022-11-23 17:55:27','2022-11-23 17:55:27'),(21,'America/La_Paz','(GMT-04:00) La Paz','2022-11-23 17:55:27','2022-11-23 17:55:27'),(22,'America/Santiago','(GMT-04:00) Santiago','2022-11-23 17:55:27','2022-11-23 17:55:27'),(23,'Canada/Newfoundland','(GMT-03:30) Newfoundland','2022-11-23 17:55:27','2022-11-23 17:55:27'),(24,'America/Buenos_Aires','(GMT-03:00) Buenos Aires','2022-11-23 17:55:27','2022-11-23 17:55:27'),(25,'America/Godthab','(GMT-03:00) Greenland','2022-11-23 17:55:27','2022-11-23 17:55:27'),(26,'Atlantic/Stanley','(GMT-02:00) Stanley','2022-11-23 17:55:27','2022-11-23 17:55:27'),(27,'Atlantic/Azores','(GMT-01:00) Azores','2022-11-23 17:55:27','2022-11-23 17:55:27'),(28,'Atlantic/Cape_Verde','(GMT-01:00) Cape Verde Is.','2022-11-23 17:55:27','2022-11-23 17:55:27'),(29,'Africa/Casablanca','(GMT) Casablanca','2022-11-23 17:55:27','2022-11-23 17:55:27'),(30,'Europe/Dublin','(GMT) Dublin','2022-11-23 17:55:27','2022-11-23 17:55:27'),(31,'Europe/Lisbon','(GMT) Lisbon','2022-11-23 17:55:27','2022-11-23 17:55:27'),(32,'Europe/London','(GMT) London','2022-11-23 17:55:27','2022-11-23 17:55:27'),(33,'Africa/Monrovia','(GMT) Monrovia','2022-11-23 17:55:27','2022-11-23 17:55:27'),(34,'Europe/Amsterdam','(GMT+01:00) Amsterdam','2022-11-23 17:55:27','2022-11-23 17:55:27'),(35,'Europe/Belgrade','(GMT+01:00) Belgrade','2022-11-23 17:55:27','2022-11-23 17:55:27'),(36,'Europe/Berlin','(GMT+01:00) Berlin','2022-11-23 17:55:27','2022-11-23 17:55:27'),(37,'Europe/Bratislava','(GMT+01:00) Bratislava','2022-11-23 17:55:27','2022-11-23 17:55:27'),(38,'Europe/Brussels','(GMT+01:00) Brussels','2022-11-23 17:55:27','2022-11-23 17:55:27'),(39,'Europe/Budapest','(GMT+01:00) Budapest','2022-11-23 17:55:27','2022-11-23 17:55:27'),(40,'Europe/Copenhagen','(GMT+01:00) Copenhagen','2022-11-23 17:55:27','2022-11-23 17:55:27'),(41,'Europe/Ljubljana','(GMT+01:00) Ljubljana','2022-11-23 17:55:27','2022-11-23 17:55:27'),(42,'Europe/Madrid','(GMT+01:00) Madrid','2022-11-23 17:55:27','2022-11-23 17:55:27'),(43,'Europe/Paris','(GMT+01:00) Paris','2022-11-23 17:55:27','2022-11-23 17:55:27'),(44,'Europe/Prague','(GMT+01:00) Prague','2022-11-23 17:55:27','2022-11-23 17:55:27'),(45,'Europe/Rome','(GMT+01:00) Rome','2022-11-23 17:55:27','2022-11-23 17:55:27'),(46,'Europe/Sarajevo','(GMT+01:00) Sarajevo','2022-11-23 17:55:27','2022-11-23 17:55:27'),(47,'Europe/Skopje','(GMT+01:00) Skopje','2022-11-23 17:55:27','2022-11-23 17:55:27'),(48,'Europe/Stockholm','(GMT+01:00) Stockholm','2022-11-23 17:55:27','2022-11-23 17:55:27'),(49,'Europe/Vienna','(GMT+01:00) Vienna','2022-11-23 17:55:27','2022-11-23 17:55:27'),(50,'Europe/Warsaw','(GMT+01:00) Warsaw','2022-11-23 17:55:27','2022-11-23 17:55:27'),(51,'Europe/Zagreb','(GMT+01:00) Zagreb','2022-11-23 17:55:27','2022-11-23 17:55:27'),(52,'Europe/Athens','(GMT+02:00) Athens','2022-11-23 17:55:27','2022-11-23 17:55:27'),(53,'Europe/Bucharest','(GMT+02:00) Bucharest','2022-11-23 17:55:27','2022-11-23 17:55:27'),(54,'Africa/Cairo','(GMT+02:00) Cairo','2022-11-23 17:55:27','2022-11-23 17:55:27'),(55,'Africa/Harare','(GMT+02:00) Harare','2022-11-23 17:55:27','2022-11-23 17:55:27'),(56,'Europe/Helsinki','(GMT+02:00) Helsinki','2022-11-23 17:55:27','2022-11-23 17:55:27'),(57,'Asia/Jerusalem','(GMT+02:00) Jerusalem','2022-11-23 17:55:27','2022-11-23 17:55:27'),(58,'Europe/Kiev','(GMT+02:00) Kyiv','2022-11-23 17:55:27','2022-11-23 17:55:27'),(59,'Europe/Minsk','(GMT+02:00) Minsk','2022-11-23 17:55:27','2022-11-23 17:55:27'),(60,'Europe/Riga','(GMT+02:00) Riga','2022-11-23 17:55:27','2022-11-23 17:55:27'),(61,'Europe/Sofia','(GMT+02:00) Sofia','2022-11-23 17:55:27','2022-11-23 17:55:27'),(62,'Europe/Tallinn','(GMT+02:00) Tallinn','2022-11-23 17:55:27','2022-11-23 17:55:27'),(63,'Europe/Vilnius','(GMT+02:00) Vilnius','2022-11-23 17:55:27','2022-11-23 17:55:27'),(64,'Europe/Istanbul','(GMT+03:00) Istanbul','2022-11-23 17:55:27','2022-11-23 17:55:27'),(65,'Asia/Baghdad','(GMT+03:00) Baghdad','2022-11-23 17:55:27','2022-11-23 17:55:27'),(66,'Asia/Kuwait','(GMT+03:00) Kuwait','2022-11-23 17:55:27','2022-11-23 17:55:27'),(67,'Africa/Nairobi','(GMT+03:00) Nairobi','2022-11-23 17:55:27','2022-11-23 17:55:27'),(68,'Asia/Riyadh','(GMT+03:00) Riyadh','2022-11-23 17:55:27','2022-11-23 17:55:27'),(69,'Asia/Tehran','(GMT+03:30) Tehran','2022-11-23 17:55:27','2022-11-23 17:55:27'),(70,'Europe/Moscow','(GMT+04:00) Moscow','2022-11-23 17:55:27','2022-11-23 17:55:27'),(71,'Asia/Baku','(GMT+04:00) Baku','2022-11-23 17:55:27','2022-11-23 17:55:27'),(72,'Europe/Volgograd','(GMT+04:00) Volgograd','2022-11-23 17:55:27','2022-11-23 17:55:27'),(73,'Asia/Muscat','(GMT+04:00) Muscat','2022-11-23 17:55:27','2022-11-23 17:55:27'),(74,'Asia/Tbilisi','(GMT+04:00) Tbilisi','2022-11-23 17:55:27','2022-11-23 17:55:27'),(75,'Asia/Yerevan','(GMT+04:00) Yerevan','2022-11-23 17:55:27','2022-11-23 17:55:27'),(76,'Asia/Kabul','(GMT+04:30) Kabul','2022-11-23 17:55:27','2022-11-23 17:55:27'),(77,'Asia/Karachi','(GMT+05:00) Karachi','2022-11-23 17:55:27','2022-11-23 17:55:27'),(78,'Asia/Tashkent','(GMT+05:00) Tashkent','2022-11-23 17:55:27','2022-11-23 17:55:27'),(79,'Asia/Kolkata','(GMT+05:30) Kolkata','2022-11-23 17:55:27','2022-11-23 17:55:27'),(80,'Asia/Kathmandu','(GMT+05:45) Kathmandu','2022-11-23 17:55:27','2022-11-23 17:55:27'),(81,'Asia/Yekaterinburg','(GMT+06:00) Ekaterinburg','2022-11-23 17:55:27','2022-11-23 17:55:27'),(82,'Asia/Almaty','(GMT+06:00) Almaty','2022-11-23 17:55:28','2022-11-23 17:55:28'),(83,'Asia/Dhaka','(GMT+06:00) Dhaka','2022-11-23 17:55:28','2022-11-23 17:55:28'),(84,'Asia/Novosibirsk','(GMT+07:00) Novosibirsk','2022-11-23 17:55:28','2022-11-23 17:55:28'),(85,'Asia/Bangkok','(GMT+07:00) Bangkok','2022-11-23 17:55:28','2022-11-23 17:55:28'),(86,'Asia/Ho_Chi_Minh','(GMT+07.00) Ho Chi Minh','2022-11-23 17:55:28','2022-11-23 17:55:28'),(87,'Asia/Jakarta','(GMT+07:00) Jakarta','2022-11-23 17:55:28','2022-11-23 17:55:28'),(88,'Asia/Krasnoyarsk','(GMT+08:00) Krasnoyarsk','2022-11-23 17:55:28','2022-11-23 17:55:28'),(89,'Asia/Chongqing','(GMT+08:00) Chongqing','2022-11-23 17:55:28','2022-11-23 17:55:28'),(90,'Asia/Hong_Kong','(GMT+08:00) Hong Kong','2022-11-23 17:55:28','2022-11-23 17:55:28'),(91,'Asia/Kuala_Lumpur','(GMT+08:00) Kuala Lumpur','2022-11-23 17:55:28','2022-11-23 17:55:28'),(92,'Australia/Perth','(GMT+08:00) Perth','2022-11-23 17:55:28','2022-11-23 17:55:28'),(93,'Asia/Singapore','(GMT+08:00) Singapore','2022-11-23 17:55:28','2022-11-23 17:55:28'),(94,'Asia/Taipei','(GMT+08:00) Taipei','2022-11-23 17:55:28','2022-11-23 17:55:28'),(95,'Asia/Ulaanbaatar','(GMT+08:00) Ulaan Bataar','2022-11-23 17:55:28','2022-11-23 17:55:28'),(96,'Asia/Urumqi','(GMT+08:00) Urumqi','2022-11-23 17:55:28','2022-11-23 17:55:28'),(97,'Asia/Irkutsk','(GMT+09:00) Irkutsk','2022-11-23 17:55:28','2022-11-23 17:55:28'),(98,'Asia/Seoul','(GMT+09:00) Seoul','2022-11-23 17:55:28','2022-11-23 17:55:28'),(99,'Asia/Tokyo','(GMT+09:00) Tokyo','2022-11-23 17:55:28','2022-11-23 17:55:28'),(100,'Australia/Adelaide','(GMT+09:30) Adelaide','2022-11-23 17:55:28','2022-11-23 17:55:28'),(101,'Australia/Darwin','(GMT+09:30) Darwin','2022-11-23 17:55:28','2022-11-23 17:55:28'),(102,'Asia/Yakutsk','(GMT+10:00) Yakutsk','2022-11-23 17:55:28','2022-11-23 17:55:28'),(103,'Australia/Brisbane','(GMT+10:00) Brisbane','2022-11-23 17:55:28','2022-11-23 17:55:28'),(104,'Australia/Canberra','(GMT+10:00) Canberra','2022-11-23 17:55:28','2022-11-23 17:55:28'),(105,'Pacific/Guam','(GMT+10:00) Guam','2022-11-23 17:55:28','2022-11-23 17:55:28'),(106,'Australia/Hobart','(GMT+10:00) Hobart','2022-11-23 17:55:28','2022-11-23 17:55:28'),(107,'Australia/Melbourne','(GMT+10:00) Melbourne','2022-11-23 17:55:28','2022-11-23 17:55:28'),(108,'Pacific/Port_Moresby','(GMT+10:00) Port Moresby','2022-11-23 17:55:28','2022-11-23 17:55:28'),(109,'Australia/Sydney','(GMT+10:00) Sydney','2022-11-23 17:55:28','2022-11-23 17:55:28'),(110,'Asia/Vladivostok','(GMT+11:00) Vladivostok','2022-11-23 17:55:28','2022-11-23 17:55:28'),(111,'Asia/Magadan','(GMT+12:00) Magadan','2022-11-23 17:55:28','2022-11-23 17:55:28'),(112,'Pacific/Auckland','(GMT+12:00) Auckland','2022-11-23 17:55:28','2022-11-23 17:55:28'),(113,'Pacific/Fiji','(GMT+12:00) Fiji','2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `to_dos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_dos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1 => complete, 0 => pending',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `to_dos` WRITE;
/*!40000 ALTER TABLE `to_dos` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_dos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `chart_of_account_id` bigint(20) unsigned DEFAULT NULL,
  `bank_account_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `come_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `morphable_id` bigint(20) unsigned DEFAULT NULL,
  `morphable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transaction_date` date DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `unit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_types_created_by_foreign` (`created_by`),
  KEY `unit_types_updated_by_foreign` (`updated_by`),
  CONSTRAINT `unit_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `unit_types_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `unit_types` WRITE;
/*!40000 ALTER TABLE `unit_types` DISABLE KEYS */;
INSERT INTO `unit_types` VALUES (1,'pc',NULL,1,NULL,NULL,'2022-11-24 08:57:21','2022-11-24 08:57:21');
/*!40000 ALTER TABLE `unit_types` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `used_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `used_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `usable_id` bigint(20) unsigned NOT NULL,
  `usable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `used_media` WRITE;
/*!40000 ALTER TABLE `used_media` DISABLE KEYS */;
INSERT INTO `used_media` VALUES (1,1,1,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 09:02:42','2022-11-24 09:02:42'),(2,7,2,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 09:44:51','2022-11-24 09:44:51'),(3,13,3,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:44','2022-11-24 10:13:44'),(4,13,4,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:46','2022-11-24 10:13:46'),(5,13,5,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:49','2022-11-24 10:13:49'),(6,13,6,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:49','2022-11-24 10:13:49'),(7,13,7,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:49','2022-11-24 10:13:49'),(8,13,8,'Modules\\Product\\Entities\\Product','meta_image','2022-11-24 10:13:50','2022-11-24 10:13:50'),(9,13,3,'Modules\\Seller\\Entities\\SellerProduct','thumb_image','2022-11-24 10:27:58','2022-11-24 10:27:58');
/*!40000 ALTER TABLE `used_media` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `user_notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notification_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `notification_setting_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notification_settings_user_id_foreign` (`user_id`),
  KEY `user_notification_settings_notification_setting_id_foreign` (`notification_setting_id`),
  CONSTRAINT `user_notification_settings_notification_setting_id_foreign` FOREIGN KEY (`notification_setting_id`) REFERENCES `notification_settings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_notification_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `user_notification_settings` WRITE;
/*!40000 ALTER TABLE `user_notification_settings` DISABLE KEYS */;
INSERT INTO `user_notification_settings` VALUES (1,1,2,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(2,1,3,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(3,1,4,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(4,1,5,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(5,1,6,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(6,1,7,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(7,1,8,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(8,1,9,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(9,1,10,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(10,1,11,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(11,1,12,'system','2022-11-23 17:55:29','2022-11-23 17:55:29'),(12,1,1,'system','2022-11-23 17:55:30','2022-11-23 17:55:30'),(13,1,13,'system','2022-11-23 17:55:33','2022-11-23 17:55:33'),(14,1,14,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(15,1,15,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(16,1,16,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(17,1,17,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(18,1,18,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(19,1,19,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(20,1,20,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(21,1,21,'system','2022-11-23 18:21:38','2022-11-23 18:21:38'),(22,2,2,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(23,2,5,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(24,2,6,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(25,2,7,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(26,2,8,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(27,2,9,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(28,2,10,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(29,2,13,'system','2022-11-24 14:35:14','2022-11-24 14:35:14'),(30,3,2,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(31,3,5,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(32,3,6,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(33,3,7,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(34,3,8,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(35,3,9,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(36,3,10,'system','2022-11-24 15:36:42','2022-11-24 15:36:42'),(37,3,13,'system','2022-11-24 15:36:42','2022-11-24 15:36:42');
/*!40000 ALTER TABLE `user_notification_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verify_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_preference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mail',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `secret_login` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `currency_id` bigint(20) unsigned NOT NULL DEFAULT '2',
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `others` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Super','admin','0181',NULL,1,NULL,'albert.o.osiemo@gmail.com',1,NULL,NULL,'$2y$10$3Kjf1JhugMFInL.XfEif2eRAjnbaS28uRTniHczjD6FkJ8Xpl1EvC','mail',1,NULL,'pomalo',NULL,NULL,NULL,0,'en',2,'KES','eHRpIt8nIvFTbRC2QaoleQ8CjFVx3joVScbvPelO0z43bn6GFxMJT9L70zEV','2022-11-23 17:55:27','2022-11-23 18:30:54',NULL),(2,'Swac',NULL,'080008000',NULL,5,NULL,'albertsky220@gmail.com',1,'08c2d60d7fcb51b197b75020fa46d3808869e374',NULL,'$2y$10$F21NPg3Pl6LgqKE7l0ZoHu6t..VvHOtH1QbHUm0bJsIulfDyb4mb2','mail',1,NULL,'albert-oriango',NULL,NULL,NULL,0,'en',2,'KES','1cPMAKu0sFlwTi2MHlkhjlDmuUzTFWKJ64ilFybX7PApxUYhzVngmINQLJH0','2022-11-24 14:35:14','2022-11-24 14:53:51','[]'),(3,'Ali','Monday',NULL,NULL,4,NULL,'alimonday2030@gmail.com',1,'4355a697d149222e17aea9c8a3b5227f565ea571',NULL,'$2y$10$Zhj7opZFA/JjogaDXKuIEuNCkDQ2k/j4bc2ZO0v/td8wBwaaEknVO','mail',1,NULL,NULL,NULL,NULL,NULL,0,'en',2,'KES',NULL,'2022-11-24 15:36:42','2022-11-24 15:36:42','[]');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `version_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `version_histories` WRITE;
/*!40000 ALTER TABLE `version_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `version_histories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `visitor_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `visitors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `visitor_histories` WRITE;
/*!40000 ALTER TABLE `visitor_histories` DISABLE KEYS */;
INSERT INTO `visitor_histories` VALUES (1,'2022-11-23','197.248.206.9','Chrome-107-Blink-Windows 10','Windows 10','Kenya, Nairobi Province','2022-11-23 17:55:44','2022-11-23 17:55:44'),(2,'2022-11-23','51.255.62.5','Firefox-58-Gecko-Ubuntu','Ubuntu','United Kingdom, England','2022-11-23 16:18:52','2022-11-23 16:18:52'),(3,'2022-11-23','51.255.62.7','Firefox-58-Gecko-Ubuntu','Ubuntu','United Kingdom, England','2022-11-23 16:18:52','2022-11-23 16:18:52'),(4,'2022-11-23','51.255.62.11','Firefox-58-Gecko-Ubuntu','Ubuntu','United Kingdom, England','2022-11-23 16:18:52','2022-11-23 16:18:52'),(5,'2022-11-23','102.140.216.13','Opera-92-Blink-Windows 10','Windows 10','Kenya, Nairobi Province','2022-11-23 16:37:06','2022-11-23 16:37:06'),(6,'2022-11-23','197.136.134.5','Chrome Mobile-103-Blink-Android 10','Android 10','Kenya, Nairobi Province','2022-11-23 17:49:15','2022-11-23 17:49:15'),(7,'2022-11-23','188.165.87.97','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 17:50:05','2022-11-23 17:50:05'),(8,'2022-11-23','188.165.87.107','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 17:50:08','2022-11-23 17:50:08'),(9,'2022-11-23','188.165.87.98','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 17:50:09','2022-11-23 17:50:09'),(10,'2022-11-23','51.254.49.109','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 19:58:51','2022-11-23 19:58:51'),(11,'2022-11-23','51.254.49.110','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 19:59:18','2022-11-23 19:59:18'),(12,'2022-11-23','51.254.49.103','Firefox-58-Gecko-Ubuntu','Ubuntu','Spain, Madrid','2022-11-23 19:59:18','2022-11-23 19:59:18'),(13,'2022-11-23','144.168.242.141','Opera-12.1672788567-Presto-Windows 7','Windows 7','United States, New Jersey','2022-11-23 20:59:15','2022-11-23 20:59:15'),(14,'2022-11-23','144.168.194.173','Opera-12.1672788567-Presto-Windows 7','Windows 7','Canada, Quebec','2022-11-23 21:33:05','2022-11-23 21:33:05'),(15,'2022-11-23','102.6.119.34','Chrome-107-Blink-Windows 10','Windows 10','Kenya, Nairobi Province','2022-11-23 22:10:07','2022-11-23 22:10:07'),(16,'2022-11-24','157.55.39.196','bingbot-2-Unknown-','','United States, Washington','2022-11-24 02:23:10','2022-11-24 02:23:10'),(17,'2022-11-24','66.249.66.8','Chrome-2.1-Unknown-AndroidOS 6.0.1','AndroidOS 6.0.1','United States, California','2022-11-24 06:43:36','2022-11-24 06:43:36'),(18,'2022-11-24','66.249.66.10','Googlebot-2.1-Unknown-','','United States, California','2022-11-24 07:15:00','2022-11-24 07:15:00'),(19,'2022-11-24','197.248.206.9','Chrome-107-Blink-Windows 10','Windows 10','Kenya, Nairobi Province','2022-11-24 08:11:33','2022-11-24 08:11:33'),(20,'2022-11-24','34.77.44.76','Apache-HttpClient-4.5.5-Unknown-','','Belgium, Brussels Capital','2022-11-24 09:13:46','2022-11-24 09:13:46'),(21,'2022-11-24','102.140.216.13','Opera-92-Blink-Windows 10','Windows 10','Kenya, Nairobi Province','2022-11-24 11:04:06','2022-11-24 11:04:06'),(22,'2022-11-24','144.168.243.118','Opera-12.1672788567-Presto-Windows 7','Windows 7','United States, New Jersey','2022-11-24 14:13:21','2022-11-24 14:13:21'),(23,'2022-11-24','45.39.72.84','Opera-12.1672788567-Presto-Windows 7','Windows 7','United Kingdom, England','2022-11-24 14:37:52','2022-11-24 14:37:52');
/*!40000 ALTER TABLE `visitor_histories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `wallet_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_balances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `walletable_id` bigint(20) unsigned DEFAULT NULL,
  `walletable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(28,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wallet_balances` WRITE;
/*!40000 ALTER TABLE `wallet_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet_balances` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `seller_product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `working_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_processes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `working_processes` WRITE;
/*!40000 ALTER TABLE `working_processes` DISABLE KEYS */;
INSERT INTO `working_processes` VALUES (1,NULL,'Register as admin','frontend\\default\\img\\icon\\icon_5.png','You can register as admin and get many benifits.',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(2,NULL,'Upload your items','frontend\\default\\img\\icon\\icon_6.png','Easily upload your item to the website.',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(3,NULL,'Start selling to fullfill orders','frontend\\default\\img\\icon\\icon_7.png','You can start selling immediately. You get more order and sell more product',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28'),(4,NULL,'Get Paid Instanly','frontend\\default\\img\\icon\\icon_8.png','Get the payment instantly without any harasment.',1,1,'2022-11-23 17:55:28','2022-11-23 17:55:28');
/*!40000 ALTER TABLE `working_processes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `xml_sitemaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xml_sitemaps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `xml_sitemaps` WRITE;
/*!40000 ALTER TABLE `xml_sitemaps` DISABLE KEYS */;
INSERT INTO `xml_sitemaps` VALUES (1,'all',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(2,'pages',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(3,'products',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(4,'brands',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(5,'tags',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(6,'flash_deal',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(7,'new_user_zone',1,'2022-11-23 17:55:32','2022-11-23 17:55:32'),(8,'blogs',1,'2022-11-23 17:55:32','2022-11-23 17:55:32');
/*!40000 ALTER TABLE `xml_sitemaps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

