-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: ultranews
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'zCbv42g9PiWjcHHvcsjzJRet4BafMSNS',1,'2024-12-28 04:21:13','2024-12-28 04:21:13','2024-12-28 04:21:13');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Header ads','2025-12-28 00:00:00','header-ads','FPKYKIL4HA','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-12-28 04:21:14','2024-12-28 04:21:14',1,NULL,NULL,NULL,NULL),(2,'Panel ads','2025-12-28 00:00:00','panel-ads','78LFJHHCKI','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-12-28 04:21:14','2024-12-28 04:21:14',1,NULL,NULL,NULL,NULL),(3,'Top sidebar ads','2025-12-28 00:00:00','top-sidebar-ads','3S5JF4KOHI','banners/image-1.jpg','https://thesky9.com/',0,2,'published','2024-12-28 04:21:14','2024-12-28 04:21:14',1,NULL,NULL,NULL,NULL),(4,'Bottom sidebar ads','2025-12-28 00:00:00','bottom-sidebar-ads','NNJPUVFFDC','banners/image-2.jpg','https://thesky9.com/',0,3,'published','2024-12-28 04:21:14','2024-12-28 04:21:14',1,NULL,NULL,NULL,NULL),(5,'Custom ads 1','2025-12-28 00:00:00','custom-1','PHMFNIDJYD','banners/image-4.jpg','https://thesky9.com/',0,4,'published','2024-12-28 04:21:14','2024-12-28 04:21:14',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','192.168.160.1',0,2,'Bernice Hand','info','2024-02-12 03:20:36','2024-02-12 03:20:36'),(2,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','192.168.160.1',0,2,'Bernice Hand','info','2024-04-25 09:49:41','2024-04-25 09:49:41');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_likes`
--

DROP TABLE IF EXISTS `bb_comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  KEY `bb_comment_likes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_likes`
--

LOCK TABLES `bb_comment_likes` WRITE;
/*!40000 ALTER TABLE `bb_comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_recommends`
--

DROP TABLE IF EXISTS `bb_comment_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_recommends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_recommends_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_recommends`
--

LOCK TABLES `bb_comment_recommends` WRITE;
/*!40000 ALTER TABLE `bb_comment_recommends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_users`
--

DROP TABLE IF EXISTS `bb_comment_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bb_comment_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_users`
--

LOCK TABLES `bb_comment_users` WRITE;
/*!40000 ALTER TABLE `bb_comment_users` DISABLE KEYS */;
INSERT INTO `bb_comment_users` VALUES (1,'Blaze','yaltenwerth@erdman.com','$2y$12$hr8Pgvy9AesJBdkd/d2izejE2LS9msZ0VqahaXjewW342jVU6Olna',52,NULL,'2024-12-28 04:21:21','2024-12-28 04:21:21','Dickens'),(2,'Wanda','corbin38@hotmail.com','$2y$12$3sQOfCefUyPfX9GKkE7wyOJXO0Ui5eA7Pe4fUmfMThnXbEqyhDo8y',51,NULL,'2024-12-28 04:21:21','2024-12-28 04:21:21','Effertz'),(3,'Marvin','qkuhic@baumbach.biz','$2y$12$K12wdxJpdgomJxn0xWM7AOl//f.keTafMPQ2ub8avmTEN0BO3Jo9K',54,NULL,'2024-12-28 04:21:22','2024-12-28 04:21:22','Jast'),(4,'Nickolas','ankunding.alec@hotmail.com','$2y$12$uXU5sGvDg7CZGq5kMFvNj.HVU71NOtkl1C77.lHwcrcV9SygwIGSO',53,NULL,'2024-12-28 04:21:22','2024-12-28 04:21:22','Daniel'),(5,'Athena','qcasper@conroy.org','$2y$12$MJ1mx6M5S1awh.D3GCzQZOaxYWni/TKZ3HhQgPX/tvqm2/chSsHa6',52,NULL,'2024-12-28 04:21:22','2024-12-28 04:21:22','Nader'),(6,'Efrain','micheal.howe@gmail.com','$2y$12$eqEVZXHmpaTz0Z1YStMKs.7eYvj8pmO4.zK/5PpV2PW194WFxD97K',55,NULL,'2024-12-28 04:21:22','2024-12-28 04:21:22','Ortiz'),(7,'Coty','ona.muller@huel.com','$2y$12$33HlBJ1wOSUU0RniGGWSoe.ijpmQjf1xCR3r/9obe.zFXc84Kux/W',55,NULL,'2024-12-28 04:21:22','2024-12-28 04:21:22','Dibbert'),(8,'Jameson','valentina.beer@mcclure.com','$2y$12$nTDaPGaO4V9S8uK3VKGBaO4igjI8IenOXmvRFvaC4o5lCcLX/Wmzu',53,NULL,'2024-12-28 04:21:23','2024-12-28 04:21:23','Yundt'),(9,'Hadley','leuschke.herminia@yahoo.com','$2y$12$gzmNYEZQpZcaQDJEHVFmKOKEBYgzlXlpnKCIRKwvWXrb7CSfcCDJu',55,NULL,'2024-12-28 04:21:23','2024-12-28 04:21:23','Halvorson'),(10,'Jarvis','heath49@yahoo.com','$2y$12$TQ3KCg9dqA8oVoPwh5HDLuFxsIaUpCqrxr1ws71zWypptK85mAxwO',52,NULL,'2024-12-28 04:21:23','2024-12-28 04:21:23','Jacobson');
/*!40000 ALTER TABLE `bb_comment_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comments`
--

DROP TABLE IF EXISTS `bb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int NOT NULL DEFAULT '0',
  `reply_count` int NOT NULL DEFAULT '0',
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comments`
--

LOCK TABLES `bb_comments` WRITE;
/*!40000 ALTER TABLE `bb_comments` DISABLE KEYS */;
INSERT INTO `bb_comments` VALUES (1,'Gryphon went on at last, more calmly, though still sobbing a little timidly: \'but it\'s no use.',1,'Botble\\Blog\\Models\\Post','205.110.108.17',5,'published',0,0,0,'2024-12-21 14:15:31','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(2,'Which shall sing?\' \'Oh, YOU sing,\' said the Pigeon; \'but I know all sorts of little cartwheels.',1,'Botble\\Blog\\Models\\Post','64.76.72.119',1,'published',0,0,0,'2024-12-01 14:26:08','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(3,'Dormouse. \'Fourteenth of March, I think I could, if I was, I shouldn\'t want YOURS: I don\'t.',1,'Botble\\Blog\\Models\\Post','49.226.35.6',7,'published',0,0,0,'2024-12-08 07:48:44','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(4,'Tell her to begin.\' He looked anxiously over his shoulder as she could not think of nothing else.',1,'Botble\\Blog\\Models\\Post','31.18.62.204',2,'published',0,2,0,'2024-12-09 17:06:56','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(5,'Dormouse shook its head impatiently, and said, without opening its eyes, \'Of course, of course.',1,'Botble\\Blog\\Models\\Post','60.28.207.226',5,'published',0,0,0,'2024-12-22 13:46:50','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(6,'Next came the royal children, and make out at the end.\' \'If you please, sir--\' The Rabbit Sends in.',1,'Botble\\Blog\\Models\\Post','169.158.195.65',1,'published',0,0,0,'2024-12-13 18:44:16','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(7,'Alice, that she was small enough to try the patience of an oyster!\' \'I wish I hadn\'t to bring but.',1,'Botble\\Blog\\Models\\Post','250.101.90.4',4,'published',0,0,4,'2024-12-24 15:38:37','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(8,'Alice cautiously replied: \'but I haven\'t had a VERY good opportunity for making her escape; so she.',1,'Botble\\Blog\\Models\\Post','94.159.177.1',6,'published',0,0,4,'2024-12-22 07:53:57','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(9,'Let this be a grin, and she thought at first was moderate. But the insolence of his shrill little.',2,'Botble\\Blog\\Models\\Post','69.0.140.75',10,'published',0,2,0,'2024-11-30 20:31:20','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(10,'March Hare was said to herself as she spoke. (The unfortunate little Bill had left off staring at.',2,'Botble\\Blog\\Models\\Post','224.121.175.126',9,'published',0,0,0,'2024-12-20 09:32:01','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(11,'Queen, stamping on the top of her little sister\'s dream. The long grass rustled at her as hard as.',2,'Botble\\Blog\\Models\\Post','93.11.155.114',10,'published',0,0,0,'2024-12-20 04:18:18','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(12,'Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the others.',2,'Botble\\Blog\\Models\\Post','32.222.151.29',10,'published',0,0,0,'2024-12-17 21:40:44','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(13,'I wish you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at.',2,'Botble\\Blog\\Models\\Post','54.95.145.209',3,'published',0,0,0,'2024-12-10 07:15:18','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(14,'Hatter. \'Does YOUR watch tell you how the game was going on, as she spoke. Alice did not like to.',2,'Botble\\Blog\\Models\\Post','78.95.26.114',7,'published',0,0,0,'2024-12-12 10:54:07','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(15,'She had just begun \'Well, of all the children she knew, who might do something better with the.',2,'Botble\\Blog\\Models\\Post','188.179.116.91',4,'published',0,0,9,'2024-12-16 07:25:48','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(16,'And she began fancying the sort of life! I do so like that curious song about the crumbs,\' said.',2,'Botble\\Blog\\Models\\Post','122.13.5.145',9,'published',0,0,9,'2024-12-16 11:47:38','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(17,'D,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to ask: perhaps I shall see it.',3,'Botble\\Blog\\Models\\Post','189.190.72.47',7,'published',0,0,0,'2024-12-22 09:46:58','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(18,'Rabbit angrily. \'Here! Come and help me out of its voice. \'Back to land again, and said, \'That\'s.',3,'Botble\\Blog\\Models\\Post','73.49.227.194',3,'published',0,0,0,'2024-12-23 14:00:37','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(19,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it uneasily.',3,'Botble\\Blog\\Models\\Post','241.179.193.189',7,'published',0,1,0,'2024-12-02 02:30:04','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(20,'And beat him when he finds out who was trembling down to her in an agony of terror. \'Oh, there.',3,'Botble\\Blog\\Models\\Post','198.59.216.102',7,'published',0,1,0,'2024-11-30 01:48:56','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(21,'Like a tea-tray in the common way. So she tucked it away under her arm, that it signifies much,\'.',3,'Botble\\Blog\\Models\\Post','202.91.182.14',3,'published',0,0,0,'2024-12-06 16:01:41','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(22,'Alice, and she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen till she was losing.',3,'Botble\\Blog\\Models\\Post','177.114.135.166',10,'published',0,0,0,'2024-12-11 14:42:18','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(23,'Pigeon the opportunity of showing off a head could be beheaded, and that he had a bone in his.',3,'Botble\\Blog\\Models\\Post','23.77.108.10',6,'published',0,0,20,'2024-12-15 23:01:17','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(24,'ONE respectable person!\' Soon her eye fell upon a heap of sticks and dry leaves, and the sounds.',3,'Botble\\Blog\\Models\\Post','242.169.116.8',10,'published',0,0,19,'2024-12-17 14:07:36','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(25,'Alice. \'You must be,\' said the one who got any advantage from the Gryphon, with a trumpet in one.',21,'Botble\\Blog\\Models\\Post','21.81.219.42',8,'published',0,0,0,'2024-12-13 20:42:11','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(26,'Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or.',21,'Botble\\Blog\\Models\\Post','254.190.89.223',2,'published',0,1,0,'2024-12-15 19:48:15','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(27,'Mock Turtle: \'nine the next, and so on.\' \'What a curious dream!\' said Alice, \'it\'s very easy to.',21,'Botble\\Blog\\Models\\Post','129.162.42.121',4,'published',0,1,0,'2024-12-27 10:00:10','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(28,'Alice would not stoop? Soup of the March Hare took the thimble, saying \'We beg your pardon!\' said.',21,'Botble\\Blog\\Models\\Post','183.159.18.167',3,'published',0,0,0,'2024-12-17 00:54:48','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(29,'King. The next thing is, to get very tired of being all alone here!\' As she said to the.',21,'Botble\\Blog\\Models\\Post','24.140.98.47',6,'published',0,0,0,'2024-12-20 17:55:51','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(30,'Just at this moment the door of the court. (As that is rather a hard word, I will just explain to.',21,'Botble\\Blog\\Models\\Post','80.73.136.213',7,'published',0,0,0,'2024-12-27 23:32:53','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(31,'Alice. \'Of course not,\' Alice cautiously replied, not feeling at all anxious to have any pepper in.',21,'Botble\\Blog\\Models\\Post','188.153.213.172',10,'published',0,0,26,'2024-12-17 18:41:49','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(32,'Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, and she sat on, with closed eyes, and half.',21,'Botble\\Blog\\Models\\Post','108.139.175.170',10,'published',0,0,27,'2024-12-14 23:00:12','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(33,'Mabel after all, and I had to sing \"Twinkle, twinkle, little bat! How I wonder what CAN have.',22,'Botble\\Blog\\Models\\Post','208.68.81.185',8,'published',0,1,0,'2024-12-01 15:18:25','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(34,'Duchess, as she could, for her to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the.',22,'Botble\\Blog\\Models\\Post','202.211.198.185',9,'published',0,0,0,'2024-12-25 13:21:23','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(35,'Alice watched the White Rabbit: it was too much frightened to say a word, but slowly followed her.',22,'Botble\\Blog\\Models\\Post','123.60.136.62',1,'published',0,1,0,'2024-12-08 07:50:21','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(36,'Queen to-day?\' \'I should like it put the Dormouse shook its head to keep back the wandering hair.',22,'Botble\\Blog\\Models\\Post','100.181.10.120',2,'published',0,0,0,'2024-12-11 05:38:23','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(37,'Alice called out to sea as you might like to show you! A little bright-eyed terrier, you know.',22,'Botble\\Blog\\Models\\Post','172.103.126.23',8,'published',0,0,0,'2024-12-05 07:54:14','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(38,'Bill\'s place for a few yards off. The Cat only grinned when it had come back in their mouths. So.',22,'Botble\\Blog\\Models\\Post','73.80.220.15',1,'published',0,0,0,'2024-12-16 09:51:30','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(39,'Alice whispered to the tarts on the Duchess\'s knee, while plates and dishes crashed around.',22,'Botble\\Blog\\Models\\Post','48.94.147.164',10,'published',0,0,35,'2024-12-24 03:42:58','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(40,'Alice noticed with some difficulty, as it left no mark on the floor, and a scroll of parchment in.',22,'Botble\\Blog\\Models\\Post','156.196.114.8',6,'published',0,0,33,'2024-12-27 23:15:10','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(41,'THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Mock Turtle, suddenly.',23,'Botble\\Blog\\Models\\Post','177.53.208.47',4,'published',0,0,0,'2024-11-29 19:47:50','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(42,'However, it was growing, and growing, and she looked down, was an old woman--but then--always to.',23,'Botble\\Blog\\Models\\Post','216.210.16.204',6,'published',0,0,0,'2024-12-16 11:47:42','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(43,'The first thing she heard was a long way back, and see that queer little toss of her head was so.',23,'Botble\\Blog\\Models\\Post','213.207.91.25',6,'published',0,0,0,'2024-12-22 06:26:57','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(44,'Hatter, \'when the Queen ordering off her knowledge, as there seemed to think about stopping.',23,'Botble\\Blog\\Models\\Post','111.126.137.176',1,'published',0,1,0,'2024-11-30 15:36:54','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(45,'Hatter said, turning to Alice a little way off, and had to sing this:-- \'Beautiful Soup, so rich.',23,'Botble\\Blog\\Models\\Post','138.131.18.74',1,'published',0,1,0,'2024-12-20 04:30:50','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(46,'I could, if I know I do!\' said Alice hastily; \'but I\'m not myself, you see.\' \'I don\'t know of any.',23,'Botble\\Blog\\Models\\Post','105.16.34.60',8,'published',0,0,0,'2024-12-05 02:19:35','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(47,'Alice, in a large rabbit-hole under the sea,\' the Gryphon said, in a languid, sleepy voice. \'Who.',23,'Botble\\Blog\\Models\\Post','176.115.199.173',6,'published',0,0,44,'2024-12-22 06:53:06','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser'),(48,'King said to the Queen, but she had grown so large a house, that she did not like to be Number.',23,'Botble\\Blog\\Models\\Post','173.122.135.228',1,'published',0,0,45,'2024-12-21 05:03:07','2024-12-28 04:21:23','Botble\\Comment\\Models\\CommentUser');
/*!40000 ALTER TABLE `bb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(2,'Lifestyle',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(3,'Travel Tips',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(4,'Healthy',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(5,'Fashion',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(6,'Hotel',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17'),(7,'Nature',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-12-28 04:21:17','2024-12-28 04:21:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Phong cách sống',NULL),('vi',2,'Sức khỏe',NULL),('vi',3,'Món ngon',NULL),('vi',4,'Sách',NULL),('vi',5,'Mẹo du lịch',NULL),('vi',6,'Khách sạn',NULL),('vi',7,'Thiên nhiên',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Amaya Beier','vkautzer@example.com','+1 (304) 787-6739','242 Hermann Throughway Apt. 555\nAnneshire, NE 47057-8347','Exercitationem est quas occaecati perspiciatis.','Minima facere labore sed sed voluptatem ut. Ducimus sed libero doloribus et enim sit quibusdam. Vero mollitia deleniti corporis dicta eaque laborum temporibus. Quis repellat possimus repellendus debitis natus. Alias enim delectus minus asperiores. Tempore quo omnis ratione dolorem odio ab. Aut ut aut impedit et molestias harum amet. Suscipit quisquam aut quia rem adipisci. Mollitia tempore dolores optio ex dolorem suscipit. Sit sequi adipisci est eum. Ut est voluptatibus rerum autem ipsum.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(2,'Nyasia Borer PhD','dickens.betsy@example.net','+1.812.287.5966','3632 Korey Forges Apt. 898\nEast Maxie, ME 33266','Dolorum itaque minus ipsam et.','Blanditiis consequatur aut velit et mollitia. Non ut modi vitae error a ratione vero. Corporis id asperiores facere rerum est quam laborum id. Molestias earum doloribus sunt iure in. Est necessitatibus sint in vel placeat eligendi. Repudiandae voluptas unde maiores quasi qui dolores. Sed et autem et. Sunt quibusdam voluptatem similique vel est nobis vel. Eum voluptatibus harum nobis amet. Ullam voluptates eius aliquid aut.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(3,'Prof. Lennie Gutmann','aisha.pfeffer@example.com','+1-212-279-1830','75576 Rath Road Suite 946\nPort Daisha, NJ 47648','Quam repellendus voluptas earum enim quia.','Nihil saepe laborum voluptas nihil accusantium vitae rerum. Ea fugit est excepturi ratione quia. Architecto maiores enim laborum beatae ducimus dicta neque. Aperiam et vel necessitatibus molestiae eos voluptas. Voluptatem ex tempore omnis ut. Praesentium sit magni sequi explicabo et soluta. Est sit odit eum voluptatem nesciunt enim placeat.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(4,'Miss Billie Ziemann Sr.','kiehn.crystel@example.net','+18204758010','3840 Emie Lake Apt. 171\nWest Jessyca, DE 58517','Dolor nemo dicta ullam.','Voluptate libero officia mollitia. Aut quo harum eligendi. Quam et repellendus optio qui doloremque voluptatem sequi. Aperiam veritatis modi eius ratione dicta excepturi. Vero nihil veritatis occaecati earum. Quia cum ut in et eveniet magni aliquid voluptatem. Perspiciatis assumenda aliquam ullam laboriosam laudantium laborum. Distinctio voluptatem assumenda neque non repellat reiciendis. Enim ducimus maiores est reiciendis recusandae qui. Sed dolores blanditiis eius est id consequuntur.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(5,'Dr. Ansley Johnson','madie42@example.com','276.630.8360','417 Tremblay Green\nMetzberg, CO 67682-8415','Alias quaerat inventore expedita consequuntur.','Quae qui maxime atque voluptatum dolore. Sint debitis dolorum adipisci in necessitatibus aut voluptatum. Sunt quas maxime earum. Et voluptatem dolor consectetur omnis id porro. Explicabo aperiam facilis fuga aperiam. Quis laborum omnis praesentium ex vitae odio. Numquam et laudantium dolor ipsam. Recusandae ut facere optio iure iusto. Sed officiis et voluptatum. Beatae eos harum facere autem.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(6,'Ashtyn Reynolds','ckovacek@example.com','678-934-5533','8706 Waldo Gardens\nNew Kylietown, IL 20020-6516','Debitis fuga natus nihil ea cupiditate aut.','Nihil accusantium consequatur esse. Labore molestias est autem ut ex corporis assumenda. Qui optio deserunt libero natus. Rem deserunt occaecati porro qui labore quibusdam aliquam. Libero occaecati distinctio nostrum et est. Odio quas quasi vel qui a deserunt ullam. Et incidunt eos placeat facere voluptas dolor et. Ut vel enim recusandae ullam consequatur. Rem id dolor dolores repellat voluptatum ut saepe. Dicta reiciendis cum et architecto eveniet.',NULL,'read','2024-12-28 04:21:15','2024-12-28 04:21:15'),(7,'Mrs. Maude Greenfelder III','andreane18@example.net','1-726-704-2695','115 McLaughlin Valleys Suite 267\nAugustport, NY 11201-8900','Blanditiis sed et laborum quisquam magnam cum.','Quod vel dolorem voluptatem mollitia officia dolorem vero. Eum ratione eaque sit totam voluptatem totam unde. Corporis sint illo dolore quisquam. Est non est quam doloribus. Aliquam cupiditate et assumenda delectus. Excepturi alias fugiat inventore omnis et nostrum corporis ut. Dignissimos necessitatibus dolor odit corporis ratione. Ipsam dolor expedita qui eum. Quaerat error earum vel et.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(8,'Arianna Abshire DVM','roberts.octavia@example.net','531.825.8027','1760 Robel Parkways Suite 736\nHamillville, MI 27914','Quia quod sint ducimus temporibus.','Et vel voluptatem omnis sit et sed. Ea consequatur corrupti sed molestias eos sunt consequuntur. Assumenda nesciunt veniam alias eveniet. Error maiores quaerat qui illum omnis dolores vitae impedit. Autem numquam ipsam voluptatem suscipit. Est quia et architecto debitis ducimus rerum non fugiat. Nemo doloribus sed est. Exercitationem optio quis dignissimos sed.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(9,'Miss Edythe Bogisich','qsporer@example.org','619-437-8763','59680 Hailie Divide\nEast Mazieland, WY 92231-4203','A alias sed non nostrum corporis nihil in.','Soluta velit eius sit quo quos aut. Sunt sit minus nesciunt optio architecto animi ut magni. Consectetur tempora ab totam tenetur. Eos dicta unde laboriosam. Eligendi consequatur velit occaecati qui. Velit maiores necessitatibus voluptas et et natus. Quis facere aut voluptatum. Vel numquam eum et. Aut porro et error non rerum. Quia velit odit reprehenderit illo.',NULL,'unread','2024-12-28 04:21:15','2024-12-28 04:21:15'),(10,'Maia Sipes','jensen52@example.net','+1 (551) 402-9522','222 Alden Freeway\nWest Abel, NE 16160','Voluptatem et sed dolorem eius reprehenderit.','Quia explicabo voluptatem cum aut commodi nulla magnam hic. Laboriosam aliquam ab sint voluptas repellendus sit. Consequatur ab officiis tenetur maxime eos voluptatem architecto. Asperiores nesciunt quis nisi odio autem voluptatem animi. Fugit commodi nesciunt voluptatem optio tempora facere at. Enim dignissimos dignissimos beatae eum.',NULL,'read','2024-12-28 04:21:15','2024-12-28 04:21:15');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_themes','2024-02-12 03:22:35','2024-02-12 03:22:35'),(2,'widget_total_users','2024-02-12 03:22:35','2024-02-12 03:22:35'),(3,'widget_total_plugins','2024-02-12 03:22:35','2024-02-12 03:22:35'),(4,'widget_total_pages','2024-02-12 03:22:35','2024-02-12 03:22:35'),(5,'widget_analytics_general','2024-02-12 03:22:35','2024-02-12 03:22:35'),(6,'widget_analytics_page','2024-02-12 03:22:35','2024-02-12 03:22:35'),(7,'widget_analytics_browser','2024-02-12 03:22:35','2024-02-12 03:22:35'),(8,'widget_analytics_referrer','2024-02-12 03:22:35','2024-02-12 03:22:35'),(9,'widget_posts_recent','2024-02-12 03:22:36','2024-02-12 03:22:36'),(10,'widget_audit_logs','2024-02-12 03:22:36','2024-02-12 03:22:36'),(11,'widget_request_errors','2024-02-12 03:22:36','2024-02-12 03:22:36');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_posts`
--

DROP TABLE IF EXISTS `favorite_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `type` enum('favorite','bookmark') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_posts`
--

LOCK TABLES `favorite_posts` WRITE;
/*!40000 ALTER TABLE `favorite_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','In amet quae rem omnis placeat inventore deleniti. Reprehenderit sapiente ut fugit. Ea occaecati quia ut qui dolores eos vitae.',1,0,'galleries/1.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15'),(2,'New Day','Sint beatae quae aut qui. Repellendus ea at dolor nobis id magnam facere. Et incidunt in rerum et quis vitae soluta omnis.',1,0,'galleries/2.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15'),(3,'Happy Day','Nostrum et a quae omnis quia. Suscipit nihil ipsam odio aperiam et voluptatum voluptas ullam. Molestiae quia qui ducimus.',1,0,'galleries/3.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15'),(4,'Nature','Expedita nihil eveniet nam exercitationem. Enim omnis eligendi in facere hic minima quos. Et odit iste qui. Hic repudiandae ea placeat velit qui.',1,0,'galleries/4.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15'),(5,'Morning','Ducimus autem consequatur eos nesciunt unde voluptas. Delectus quod provident ut nulla quidem ea. Et et omnis officiis culpa beatae provident quo.',1,0,'galleries/5.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15'),(6,'Photography','Dicta natus ea commodi ab. Debitis aut qui qui. Sint aut sit est ex.',1,0,'galleries/6.jpg',1,'published','2024-12-28 04:21:15','2024-12-28 04:21:15');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
INSERT INTO `galleries_translations` VALUES ('vi',1,'Hoàn hảo',NULL),('vi',2,'Ngày mới',NULL),('vi',3,'Ngày hạnh phúc',NULL),('vi',4,'Thiên nhiên',NULL),('vi',5,'Buổi sáng',NULL),('vi',6,'Nghệ thuật',NULL);
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos optio esse natus eum temporibus. Illum at incidunt quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Excepturi a nobis quo. Aut voluptas omnis saepe. Quo quo odit rerum exercitationem tempore ut eaque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia aliquid ea nihil ut magni earum. Adipisci suscipit omnis ullam. Quisquam natus excepturi omnis doloremque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Unde et autem eius. Eum quae tempore modi temporibus qui accusamus. Cupiditate expedita eveniet culpa omnis. Qui sunt dolor esse qui et qui incidunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Repudiandae repellendus iusto quis commodi. Eos dolores maiores soluta rerum dignissimos autem. Quos aut sapiente laudantium vero est ipsa.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime sunt laudantium et qui est voluptas temporibus. Neque et temporibus quaerat id earum. Quis nisi et consequatur quasi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Nemo minima et odit voluptas qui error. Sint in ex aliquid accusantium quisquam. Porro tenetur consequatur quod id.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sint doloremque vel explicabo sit corrupti. Laboriosam consequatur voluptatem occaecati velit incidunt quis eaque autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia et magnam ab rerum. Eius occaecati qui consequuntur iure explicabo delectus. Est voluptas reiciendis molestiae ipsam voluptas saepe optio.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Omnis ut quo vero maxime corrupti impedit labore. Neque asperiores facere nihil dolore repudiandae et.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-12-28 04:21:15','2024-12-28 04:21:15');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','59fba18d8f9337be773352852ca1dd75',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','35ce35c740dd1cdef5ff3766cb5e279f',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','d6631d4298fed3485f48adf34523618d',2,'Botble\\Menu\\Models\\Menu'),(4,'vi','769b7986916ddb1055cbc905d6b14ce6',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'vi','35ce35c740dd1cdef5ff3766cb5e279f',3,'Botble\\Menu\\Models\\Menu'),(6,'vi','d6631d4298fed3485f48adf34523618d',4,'Botble\\Menu\\Models\\Menu'),(7,'en_US','4240989cce2c8f5297f2551851556988',1,'Botble\\PostCollection\\Models\\PostCollection'),(8,'en_US','e1ab72db5b6c6556760b8de2efff0c90',2,'Botble\\PostCollection\\Models\\PostCollection'),(9,'vi','8d66bf7d49f18516a2a09c2b505ea73d',3,'Botble\\PostCollection\\Models\\PostCollection'),(10,'vi','c87f0209e04168a4ef8c46871f1de9bd',4,'Botble\\PostCollection\\Models\\PostCollection');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'image-1','image-1',1,'image/jpeg',14506,'banners/image-1.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(2,0,'image-2','image-2',1,'image/jpeg',8220,'banners/image-2.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(3,0,'image-3','image-3',1,'image/jpeg',6445,'banners/image-3.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(4,0,'image-4','image-4',1,'image/jpeg',9763,'banners/image-4.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(5,0,'1','1',2,'image/jpeg',40741,'galleries/1.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(6,0,'10','10',2,'image/jpeg',91805,'galleries/10.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(7,0,'2','2',2,'image/jpeg',41198,'galleries/2.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(8,0,'3','3',2,'image/jpeg',63867,'galleries/3.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(9,0,'4','4',2,'image/jpeg',57483,'galleries/4.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(10,0,'5','5',2,'image/jpeg',66669,'galleries/5.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(11,0,'6','6',2,'image/jpeg',39548,'galleries/6.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(12,0,'7','7',2,'image/jpeg',39483,'galleries/7.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(13,0,'8','8',2,'image/jpeg',56687,'galleries/8.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(14,0,'9','9',2,'image/jpeg',67124,'galleries/9.jpg','[]','2024-12-28 04:21:14','2024-12-28 04:21:14',NULL,'public'),(15,0,'news-1','news-1',3,'image/jpeg',68353,'news/news-1.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(16,0,'news-10','news-10',3,'image/jpeg',40388,'news/news-10.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(17,0,'news-11','news-11',3,'image/jpeg',76419,'news/news-11.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(18,0,'news-12','news-12',3,'image/jpeg',30432,'news/news-12.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(19,0,'news-13','news-13',3,'image/jpeg',101509,'news/news-13.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(20,0,'news-14','news-14',3,'image/jpeg',42800,'news/news-14.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(21,0,'news-15','news-15',3,'image/jpeg',96325,'news/news-15.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(22,0,'news-16','news-16',3,'image/jpeg',84016,'news/news-16.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(23,0,'news-17','news-17',3,'image/jpeg',37533,'news/news-17.jpg','[]','2024-12-28 04:21:15','2024-12-28 04:21:15',NULL,'public'),(24,0,'news-18','news-18',3,'image/jpeg',32346,'news/news-18.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(25,0,'news-19','news-19',3,'image/jpeg',45310,'news/news-19.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(26,0,'news-2','news-2',3,'image/jpeg',47485,'news/news-2.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(27,0,'news-20','news-20',3,'image/jpeg',36824,'news/news-20.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(28,0,'news-21','news-21',3,'image/jpeg',60823,'news/news-21.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(29,0,'news-22','news-22',3,'image/jpeg',36730,'news/news-22.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(30,0,'news-23','news-23',3,'image/jpeg',26646,'news/news-23.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(31,0,'news-24','news-24',3,'image/jpeg',15769,'news/news-24.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(32,0,'news-3','news-3',3,'image/jpeg',37002,'news/news-3.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(33,0,'news-4','news-4',3,'image/jpeg',77497,'news/news-4.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(34,0,'news-5','news-5',3,'image/jpeg',75048,'news/news-5.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(35,0,'news-6','news-6',3,'image/jpeg',44854,'news/news-6.jpg','[]','2024-12-28 04:21:16','2024-12-28 04:21:16',NULL,'public'),(36,0,'news-7','news-7',3,'image/jpeg',80934,'news/news-7.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(37,0,'news-8','news-8',3,'image/jpeg',53841,'news/news-8.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(38,0,'news-9','news-9',3,'image/jpeg',42449,'news/news-9.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(39,0,'thumbnail-1','thumbnail-1',3,'image/jpeg',48070,'news/thumbnail-1.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(40,0,'thumbnail-2','thumbnail-2',3,'image/jpeg',40499,'news/thumbnail-2.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(41,0,'thumbnail-3','thumbnail-3',3,'image/jpeg',41661,'news/thumbnail-3.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(42,0,'thumbnail-4','thumbnail-4',3,'image/jpeg',24393,'news/thumbnail-4.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(43,0,'thumbnail-5','thumbnail-5',3,'image/jpeg',39656,'news/thumbnail-5.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(44,0,'thumbnail-6','thumbnail-6',3,'image/jpeg',49720,'news/thumbnail-6.jpg','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(45,0,'video1','video1',4,'video/mp4',6378345,'videos/video1.mp4','[]','2024-12-28 04:21:17','2024-12-28 04:21:17',NULL,'public'),(46,0,'1','1',5,'image/jpeg',8581,'members/1.jpg','[]','2024-12-28 04:21:18','2024-12-28 04:21:18',NULL,'public'),(47,0,'2','2',5,'image/jpeg',14257,'members/2.jpg','[]','2024-12-28 04:21:18','2024-12-28 04:21:18',NULL,'public'),(48,0,'3','3',5,'image/jpeg',14702,'members/3.jpg','[]','2024-12-28 04:21:18','2024-12-28 04:21:18',NULL,'public'),(49,0,'4','4',5,'image/jpeg',19699,'members/4.jpg','[]','2024-12-28 04:21:18','2024-12-28 04:21:18',NULL,'public'),(50,0,'5','5',5,'image/jpeg',10260,'members/5.jpg','[]','2024-12-28 04:21:18','2024-12-28 04:21:18',NULL,'public'),(51,0,'10','10',6,'image/jpeg',20004,'authors/10.jpg','[]','2024-12-28 04:21:21','2024-12-28 04:21:21',NULL,'public'),(52,0,'6','6',6,'image/jpeg',8476,'authors/6.jpg','[]','2024-12-28 04:21:21','2024-12-28 04:21:21',NULL,'public'),(53,0,'7','7',6,'image/jpeg',14388,'authors/7.jpg','[]','2024-12-28 04:21:21','2024-12-28 04:21:21',NULL,'public'),(54,0,'8','8',6,'image/jpeg',14340,'authors/8.jpg','[]','2024-12-28 04:21:21','2024-12-28 04:21:21',NULL,'public'),(55,0,'9','9',6,'image/jpeg',4396,'authors/9.jpg','[]','2024-12-28 04:21:21','2024-12-28 04:21:21',NULL,'public'),(56,0,'favicon','favicon',7,'image/png',1260,'general/favicon.png','[]','2024-12-28 04:21:23','2024-12-28 04:21:23',NULL,'public'),(57,0,'img-loading','img-loading',7,'image/jpeg',1364,'general/img-loading.jpg','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public'),(58,0,'logo-mobile','logo-mobile',7,'image/png',2562,'general/logo-mobile.png','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public'),(59,0,'logo-tablet','logo-tablet',7,'image/png',3540,'general/logo-tablet.png','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public'),(60,0,'logo-white','logo-white',7,'image/png',3703,'general/logo-white.png','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public'),(61,0,'logo','logo',7,'image/png',5187,'general/logo.png','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public'),(62,0,'screenshot','screenshot',7,'image/png',565891,'general/screenshot.png','[]','2024-12-28 04:21:24','2024-12-28 04:21:24',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'banners',NULL,'banners',0,'2024-12-28 04:21:14','2024-12-28 04:21:14',NULL),(2,0,'galleries',NULL,'galleries',0,'2024-12-28 04:21:14','2024-12-28 04:21:14',NULL),(3,0,'news',NULL,'news',0,'2024-12-28 04:21:15','2024-12-28 04:21:15',NULL),(4,0,'videos',NULL,'videos',0,'2024-12-28 04:21:17','2024-12-28 04:21:17',NULL),(5,0,'members',NULL,'members',0,'2024-12-28 04:21:18','2024-12-28 04:21:18',NULL),(6,0,'authors',NULL,'authors',0,'2024-12-28 04:21:21','2024-12-28 04:21:21',NULL),(7,0,'general',NULL,'general',0,'2024-12-28 04:21:23','2024-12-28 04:21:23',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `favorite_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bookmark_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','So they began solemnly dancing round and round goes the clock in a louder tone. \'ARE you to set.',NULL,'user@thesky9.com','$2y$12$qL2NfyzpyM8Nhtl/vm.8vOu7mN7Y26SNbKR1r91z9xAat1p/eBe7.',49,'2018-07-10','+1 (208) 527-5533','2024-12-28 04:21:18',NULL,NULL,'2024-12-28 04:21:18','2024-12-28 04:21:18','published',NULL,NULL),(2,'Sabrina','Vandervort','YOUR table,\' said Alice; not that she was quite surprised to find quite a crowd of little pebbles.',NULL,'kenny.pacocha@yahoo.com','$2y$12$AvGdqoRZoeSKjGrdvTtOfu9x.kF3hiBvyCzTvLN1Ve5TumHgLLgxC',46,'2009-08-23','1-606-401-5877','2024-12-28 04:21:18',NULL,NULL,'2024-12-28 04:21:18','2024-12-28 04:21:18','published',NULL,NULL),(3,'Andrew','Rau','ARE a simpleton.\' Alice did not feel encouraged to ask them what the next question is, what did.',NULL,'shania90@schultz.net','$2y$12$Sxkd.iSNHPtOfwvmjjmToe/sutP84uROYMpiKiSlgbFWo9GsB03x2',46,'1977-10-29','1-573-481-3588','2024-12-28 04:21:19',NULL,NULL,'2024-12-28 04:21:19','2024-12-28 04:21:19','published',NULL,NULL),(4,'Nico','McLaughlin','Alice could not swim. He sent them word I had not a mile high,\' said Alice. \'That\'s the first.',NULL,'shane.reilly@haag.info','$2y$12$xo1x4lrZBvT8PoarnX22uuKTRVkRYoOfB1/t0vpDx4f3D.nlZq7Q.',46,'2001-03-13','256-442-6359','2024-12-28 04:21:19',NULL,NULL,'2024-12-28 04:21:19','2024-12-28 04:21:19','published',NULL,NULL),(5,'Wilbert','Quigley','King, with an important air, \'are you all ready? This is the same height as herself; and when she.',NULL,'kayleigh.sanford@gmail.com','$2y$12$iYS0yN1dkJuSWuNfp1BhjeZvqTKK9KZ8Cnhjn84aIh5/Bp3GuXTma',48,'2011-05-20','+1-934-779-5517','2024-12-28 04:21:19',NULL,NULL,'2024-12-28 04:21:19','2024-12-28 04:21:19','published',NULL,NULL),(6,'Arvilla','Leffler','Alice. \'And be quick about it,\' said Alice, \'we learned French and music.\' \'And washing?\' said the.',NULL,'fay.jalen@stanton.biz','$2y$12$TQa2vjsHcoqaHM.0dTATq.5403YwnjCThUj1nke/zt/tEAQ/pbu0W',46,'1973-05-18','339-472-2818','2024-12-28 04:21:19',NULL,NULL,'2024-12-28 04:21:19','2024-12-28 04:21:19','published',NULL,NULL),(7,'Friedrich','Bauch','The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you, you.',NULL,'xklein@boyle.com','$2y$12$ou1vUsFwdojWlXY4fPFi1udxUy5kj1fi2gm6RQsFFCE8dgDg/PRlO',49,'2014-12-12','+14585695218','2024-12-28 04:21:20',NULL,NULL,'2024-12-28 04:21:20','2024-12-28 04:21:20','published',NULL,NULL),(8,'Reinhold','Christiansen','Queen in a pleased tone. \'Pray don\'t trouble yourself to say to itself in a melancholy air, and.',NULL,'suzanne28@hahn.com','$2y$12$Flqgef7.LUXYqckPthX20.1fVvlxi8p8ycSLB4DimDBX.GJZdgeq6',47,'2000-10-28','+16507875508','2024-12-28 04:21:20',NULL,NULL,'2024-12-28 04:21:20','2024-12-28 04:21:20','published',NULL,NULL),(9,'Dakota','Dare','Alice could not help thinking there MUST be more to be otherwise than what it meant till now.\' \'If.',NULL,'jmurazik@hotmail.com','$2y$12$OYxYQwS1FKTKYNS0EAyfhONZIOAqnVEuCLjpt/vQs/pLe4yyebrjW',47,'2014-01-23','858.850.2305','2024-12-28 04:21:20',NULL,NULL,'2024-12-28 04:21:20','2024-12-28 04:21:20','published',NULL,NULL),(10,'Rosemary','Quigley','March Hare went \'Sh! sh!\' and the turtles all advance! They are waiting on the slate. \'Herald.',NULL,'jacobson.armand@kuvalis.com','$2y$12$sC1uZEX4/F7VBjm7sywGbe0DFhb.PEJdI/BCTH2vXqmesspUK5hRi',47,'2024-04-17','+1 (551) 802-9365','2024-12-28 04:21:20',NULL,NULL,'2024-12-28 04:21:20','2024-12-28 04:21:20','published',NULL,NULL),(11,'Larry','Weimann','Alice went on, looking anxiously about as curious as it can\'t possibly make me grow large again.',NULL,'vquigley@little.net','$2y$12$rF1zRvyzkDK4LiCWH7IIt.oX7mqakiOJ/vphgXXUcTqyOMAfC6Vdm',50,'2014-01-13','(954) 848-9541','2024-12-28 04:21:20',NULL,NULL,'2024-12-28 04:21:20','2024-12-28 04:21:20','published',NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-12-28 04:21:23','2024-12-28 04:21:23'),(2,3,'main-menu','2024-12-28 04:21:23','2024-12-28 04:21:23');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(3,1,1,NULL,NULL,'/home-2?header=style-2',NULL,0,'Home 2',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(4,1,1,NULL,NULL,'/home-3?header=style-3',NULL,0,'Home 3',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(5,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(6,1,0,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Category layouts',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(7,1,6,5,'Botble\\Page\\Models\\Page','/category-list',NULL,0,'List',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(8,1,6,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Grid',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(9,1,6,7,'Botble\\Page\\Models\\Page','/category-metro',NULL,0,'Metro',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(10,1,0,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Post layouts',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(11,1,10,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Default',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(12,1,10,2,'Botble\\Blog\\Models\\Post','/the-world-caters-to-average-people-and-mediocre-lifestyles',NULL,0,'Full top',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(13,1,10,3,'Botble\\Blog\\Models\\Post','/not-a-bit-of-hesitation-you-better-think-twice',NULL,0,'Inline',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(14,1,0,9,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(16,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(17,1,16,10,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(18,1,16,NULL,NULL,'page-not-found',NULL,0,'404',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(19,1,16,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(20,1,16,NULL,NULL,'/register',NULL,0,'Signup',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(21,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(22,2,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(23,2,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(24,2,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(25,3,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(26,3,25,NULL,NULL,'/',NULL,0,'Trang chủ mặc định',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(27,3,25,NULL,NULL,'/home-2?header=style-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(28,3,25,NULL,NULL,'/home-3?header=style-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(29,3,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(30,3,0,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Danh mục',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(31,3,30,5,'Botble\\Page\\Models\\Page','/category-list',NULL,0,'Style cột',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(32,3,30,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Style danh sách',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(33,3,30,7,'Botble\\Page\\Models\\Page','/category-metro',NULL,0,'Style danh sách 2',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(34,3,0,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Bài viết',NULL,'_self',1,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(35,3,34,1,'Botble\\Blog\\Models\\Post','/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',NULL,0,'Default',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(36,3,34,2,'Botble\\Blog\\Models\\Post','/the-world-caters-to-average-people-and-mediocre-lifestyles',NULL,0,'Full top',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(37,3,34,3,'Botble\\Blog\\Models\\Post','/not-a-bit-of-hesitation-you-better-think-twice',NULL,0,'Inline',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(38,3,0,9,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Liên hệ',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(39,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Về chúng tôi',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(40,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(41,4,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(42,4,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23'),(43,4,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-12-28 04:21:23','2024-12-28 04:21:23');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(2,'Quick links','quick-links','published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(3,'Menu chính','menu-chinh','published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(4,'Liên kết','lien-ket','published','2024-12-28 04:21:23','2024-12-28 04:21:23');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"default\"]',1,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(2,'time_to_read','[9]',1,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(3,'comment_status','[1]',1,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(4,'layout','[\"top-full\"]',2,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(5,'time_to_read','[1]',2,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(6,'comment_status','[1]',2,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(7,'layout','[\"inline\"]',3,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(8,'time_to_read','[6]',3,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(9,'comment_status','[1]',3,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(10,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/289366685?h=b6b9d1e67b&title=0&byline=0&portrait=0\"]',4,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(11,'time_to_read','[17]',4,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(12,'comment_status','[1]',4,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(13,'video_upload_id','[\"videos\\/video1.mp4\"]',5,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(14,'time_to_read','[13]',5,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(15,'comment_status','[1]',5,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(16,'time_to_read','[14]',6,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(17,'comment_status','[1]',6,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(18,'time_to_read','[10]',7,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(19,'comment_status','[1]',7,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(20,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/559851845?h=afc6d413c9\"]',8,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(21,'time_to_read','[19]',8,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(22,'comment_status','[1]',8,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(23,'time_to_read','[9]',9,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(24,'comment_status','[1]',9,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(25,'time_to_read','[8]',10,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(26,'comment_status','[1]',10,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:17','2024-12-28 04:21:17'),(27,'time_to_read','[2]',11,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(28,'comment_status','[1]',11,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(29,'time_to_read','[6]',12,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(30,'comment_status','[1]',12,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(31,'time_to_read','[6]',13,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(32,'comment_status','[1]',13,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(33,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/580799106?h=a8eb717af9\"]',14,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(34,'time_to_read','[1]',14,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(35,'comment_status','[1]',14,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(36,'time_to_read','[2]',15,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(37,'comment_status','[1]',15,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(38,'time_to_read','[2]',16,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(39,'comment_status','[1]',16,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(40,'time_to_read','[15]',17,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(41,'comment_status','[1]',17,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(42,'time_to_read','[19]',18,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(43,'comment_status','[1]',18,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(44,'time_to_read','[18]',19,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(45,'comment_status','[1]',19,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(46,'time_to_read','[15]',20,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18'),(47,'comment_status','[1]',20,'Botble\\Blog\\Models\\Post','2024-12-28 04:21:18','2024-12-28 04:21:18');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2020_11_18_150916_ads_create_ads_table',2),(34,'2021_12_02_035301_add_ads_translations_table',2),(35,'2023_04_17_062645_add_open_in_new_tab',2),(36,'2023_11_07_023805_add_tablet_mobile_image',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2015_06_18_033822_create_blog_table',4),(40,'2021_02_16_092633_remove_default_value_for_author_type',4),(41,'2021_12_03_030600_create_blog_translations',4),(42,'2022_04_19_113923_add_index_to_table_posts',4),(43,'2023_08_29_074620_make_column_author_id_nullable',4),(44,'2021_07_08_140130_comment_create_comment_table',5),(45,'2023_02_28_092156_update_table_comments',5),(46,'2016_06_17_091537_create_contacts_table',6),(47,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(48,'2016_10_13_150201_create_galleries_table',7),(49,'2021_12_03_082953_create_gallery_translations',7),(50,'2022_04_30_034048_create_gallery_meta_translations_table',7),(51,'2023_08_29_075308_make_column_user_id_nullable',7),(52,'2016_10_03_032336_create_languages_table',8),(53,'2023_09_14_022423_add_index_for_language_table',8),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(55,'2021_12_03_075608_create_page_translations',9),(56,'2023_07_06_011444_create_slug_translations_table',9),(57,'2017_10_04_140938_create_member_table',10),(58,'2023_10_16_075332_add_status_column',10),(59,'2017_10_24_154832_create_newsletter_table',11),(60,'2021_08_25_122708_post_collection_create_post_collection_table',12),(61,'2021_07_14_043820_add_publised_at_table_posts',13),(62,'2021_10_16_043705_pro_posts_create_favorite_posts_table',14),(63,'2021_10_16_105007_add_bookmark_posts_column_to_members_table',14),(64,'2021_11_13_010429_change_column_table_members',14),(65,'2016_05_28_112028_create_system_request_logs_table',15),(66,'2016_10_07_193005_create_translations_table',16),(67,'2023_12_12_105220_drop_translations_table',16),(68,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',17),(69,'2024_03_25_000001_update_captcha_settings_for_contact',17),(70,'2024_03_25_000001_update_captcha_settings_for_newsletter',17),(71,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',17),(72,'2024_04_04_110758_update_value_column_in_user_meta_table',17),(73,'2024_04_19_063914_create_custom_fields_table',17),(74,'2024_04_27_100730_improve_analytics_setting',18),(75,'2024_05_12_091229_add_column_visibility_to_table_media_files',18),(76,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',18),(77,'2024_07_12_100000_change_random_hash_for_media',18),(78,'2024_07_30_091615_fix_order_column_in_categories_table',19),(79,'2024_09_30_024515_create_sessions_table',19),(80,'0001_01_01_000001_create_cache_table',20);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[posts-collection title=\"Recommended\" subtitle=\"R\" limit=\"4\" posts_collection_id=\"2\" background_style=\"background-white\"][/posts-collection]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"7\" subtitle=\"O\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(2,'Home 2','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(3,'Home 3','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(4,'Blog','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'default',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(5,'Category List','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'no-breadcrumbs',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(6,'Category grid','<div>[posts-listing layout=\"grid\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(7,'Category metro','<div>[posts-listing layout=\"metro\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(8,'Contact','<div>[contact-form title=\"Get in Touch\"][/contact-form]</div><h3>Directions</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(9,'About Us','<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Tolerably much and ouch the in began alas more ouch some then accommodating flimsy wholeheartedly after hello slightly the that cow pouted much a goodness bound rebuilt poetically jaguar groundhog</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Computer inside</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as\n                this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\n            <h5>What\'s next?</h5>\n            <p>Pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much\n                wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Other yet this hazardous oh the until brave close towards stupidly euphemistically firefly boa some more underneath circa yet on as wow above ripe or blubbered one cobra bore ouch and this held ably one hence</p>\n            <h2>Conclusion</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Alexe more gulped much garrulous a yikes earthworm wiped because goodness bet mongoose that along accommodatingly tortoise indecisively admirable but shark dear some and unwillingly before far vindictive less much this\n                on more less flexed far woolly from following glanced resolute unlike far this alongside against icily beyond flabby accidental.</p>\n\n\n            <h2>Design is future</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic\n                hungrily some and dear furiously this apart.</p>\n            <p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much\n                circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across\n                this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less\n                well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\n            <blockquote class=\"wp-block-quote is-style-large\">\n                <p>The advance of technology is based on making it fit in so that you don\'t really even notice it, so it\'s part of everyday life.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div><h3>Address</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13'),(10,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-12-28 04:21:13','2024-12-28 04:21:13');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Bài viết mới\" subtitle=\"Latest\" limit=\"3\" show_follow_us_section=\"1\"][/recent-posts]</div><div>[categories-tab-posts title=\"Bài viết được quan tâm\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[posts-grid title=\"Bài viết nổi bật\" subtitle=\"News\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" subtitle=\"In motion\" limit=\"7\"][/theme-galleries]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',4,'Tin tức',NULL,'<div>[categories-big limit=\"12\"][/categories-big]</div>'),('vi',5,'Tin tức danh sách',NULL,'<div>[posts-listing layout=\"list\"][/posts-listing]</div>'),('vi',6,'Tin tức dạng cột',NULL,'<div>[posts-listing layout=\"grid\"][/posts-listing]</div>'),('vi',7,'Tin tức metro',NULL,'<div>[posts-listing layout=\"metro\"][/posts-listing]</div>'),('vi',8,'Liên hệ',NULL,'<div>[contact-form title=\"Liên hệ\"][/contact-form]</div><h3>Địa chỉ</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>'),('vi',9,'Về chúng tôi',NULL,'<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Người ta né tránh nhắc đến Chúa Kito khi nói đến mốc lịch sử bằng cách nói Trước công nguyên và sau công nguyên. Nhưng nguyên tiếng anh: Before Chirst, After Chirst – trước Chúa Kito, sau Chúa Kito – người ta sợ lịch sử của Kito giáo. Đó là lời chia sẻ của cha đặc trách Gioan trong Thánh lễ thường kì Cộng đoàn sinh viên Công giáo y dược vào lúc 19h15’, ngày 11.05.2017 tại đền thánh Gierado, Giáo xứ Thái Hà.</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Cuộc sống là những phép màu</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Khởi đầu bài giảng của mình cha nói đến một trong những khó khăn lớn nhất Giáo Hội nói chung và người tín hữu nói riêng đó chính là niềm tin vào Thiên Chúa. Chính khủng hoảng niềm tin gây nên chiến tranh, gây nên thù hận và chết chóc. Lòng tin không chỉ ảnh hưởng lên cá nhân mà thôi nhưng lên toàn thế giới. Hôm nay, Chúa cho chúng ta thấy lòng tin là khởi đầu, là mấu chốt để con người đứng vững giữa trăm chiều thử thách.</p>\n            <h5>Ý nghĩa là gì?</h5>\n            <p>Hai bài đọc hôm nay đều đi từ lịch sử, Chúa Giesu tiên báo kẻ sẽ nộp thầy. Ngài chọn Giuda không phải chọn nhầm, nhưng Ngài nói rõ trong bài Tin Mừng rằng lời kinh thánh phải được ứng nghiệm: “Kẻ giơ tay chấm chung một đĩa với con lại giơ gót đạp con”. Trong bài đọc một, Phaolo nói về Đavit để ứng nghiệm lời Kinh thánh đã nói, để anh chị em Do thái nhận ra được lời tiên báo qua lịch sử là chúa Giesu.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Để có được lòng tin nơi con người, Chúa Giesu đã khai mào trong một chương trình lịch sử dài tập. Lịch sử Cựu ước loan báo đúng với những gì đã xảy ra với Chúa Giesu Kito. Một triết gia người Pháp nói rằng: “Kito giáo có một nền tảng đức tin vững chắc đó là lịch sử, nhưng Kito giáo quên đi điểm quan trọng này và ngày nay đi nặng về phía thần học”.</p>\n            <h2>Kết luận</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nhắc lại: Kito Giáo cắm rễ sâu, trải dài và được ứng nghiệm trong lịch sử thánh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nhìn lại lịch sử, các ngày lễ xã hội, ngày nghỉ… đều liên quan đến Kito giáo và xuất phát từ Kito giáo.</p>\n\n\n            <h2>Tương lai</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nói đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm là một biến cố lịch sử có thời gian, không gian, nhân vật và sứ điệp cụ thể không phải con người tự dụng nên hay hoang tưởng.</p>\n            <p>Niềm tin của mỗi chúng ta phải dựa vào lịch sử chứ không phải mơ hồ. Khi nhìn lại quá khứ ta biết rằng lòng tin đó đã được Thiên Chúa khai mào từ rất sớm. Các thánh Tông đồ đã đứng trên bình diện lịch sự để minh chứng niềm tin của con người vào Giave Thiên Chúa.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Nhiều người thời nay biết lịch sử nhưng không biết Chúa Kito là ai vì họ né tránh Chúa Giesu. Chúa Giesu đi vào lịch sử để tỏ cho con người cùng đích của sự sống là gì và Thiên Chúa là ai cùng những lời tiên báo để củng cố lòng tin cho con người.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n           <blockquote class=\"wp-block-quote is-style-large\">\n                <p>Sự tiến bộ của công nghệ dựa trên việc làm cho nó phù hợp để bạn thậm chí không thực sự nhận thấy nó, vì vậy nó là một phần của cuộc sống hàng ngày.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div>'),('vi',10,'Cookie Policy',NULL,'<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections`
--

DROP TABLE IF EXISTS `post_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections`
--

LOCK TABLES `post_collections` WRITE;
/*!40000 ALTER TABLE `post_collections` DISABLE KEYS */;
INSERT INTO `post_collections` VALUES (1,'Editor\'s Picked',NULL,NULL,'published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(2,'Recommended Posts',NULL,NULL,'published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(3,'Bài viết hay',NULL,NULL,'published','2024-12-28 04:21:23','2024-12-28 04:21:23'),(4,'Recommended Posts',NULL,NULL,'published','2024-12-28 04:21:23','2024-12-28 04:21:23');
/*!40000 ALTER TABLE `post_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections_posts`
--

DROP TABLE IF EXISTS `post_collections_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_collection_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections_posts`
--

LOCK TABLES `post_collections_posts` WRITE;
/*!40000 ALTER TABLE `post_collections_posts` DISABLE KEYS */;
INSERT INTO `post_collections_posts` VALUES (1,1,12),(2,1,3),(3,1,5),(4,1,1),(5,1,7),(6,1,9),(7,2,15),(8,2,4),(9,2,2),(10,2,1),(11,2,10),(12,3,20),(13,3,19),(14,3,21),(15,3,31),(16,3,32),(17,4,22),(18,4,24),(19,4,25),(20,4,29),(21,4,30),(22,1,12),(23,1,3),(24,1,5),(25,1,1),(26,1,7),(27,1,9),(28,2,15),(29,2,4),(30,2,2),(31,2,1),(32,2,10),(33,3,20),(34,3,19),(35,3,21),(36,3,31),(37,3,32),(38,4,22),(39,4,24),(40,4,25),(41,4,29),(42,4,30),(43,1,12),(44,1,3),(45,1,5),(46,1,1),(47,1,7),(48,1,9),(49,2,15),(50,2,4),(51,2,2),(52,2,1),(53,2,10),(54,3,20),(55,3,19),(56,3,21),(57,3,31),(58,3,32),(59,4,22),(60,4,24),(61,4,25),(62,4,29),(63,4,30),(64,1,12),(65,1,3),(66,1,5),(67,1,1),(68,1,7),(69,1,9),(70,2,15),(71,2,4),(72,2,2),(73,2,1),(74,2,10),(75,3,20),(76,3,19),(77,3,21),(78,3,31),(79,3,32),(80,4,22),(81,4,24),(82,4,25),(83,4,29),(84,4,30),(85,1,12),(86,1,3),(87,1,5),(88,1,1),(89,1,7),(90,1,9),(91,2,15),(92,2,4),(93,2,2),(94,2,1),(95,2,10),(96,3,20),(97,3,19),(98,3,21),(99,3,31),(100,3,32),(101,4,22),(102,4,24),(103,4,25),(104,4,29),(105,4,30),(106,1,12),(107,1,3),(108,1,5),(109,1,1),(110,1,7),(111,1,9),(112,2,15),(113,2,4),(114,2,2),(115,2,1),(116,2,10),(117,3,20),(118,3,19),(119,3,21),(120,3,31),(121,3,32),(122,4,22),(123,4,24),(124,4,25),(125,4,29),(126,4,30),(127,1,12),(128,1,3),(129,1,5),(130,1,1),(131,1,7),(132,1,9),(133,2,15),(134,2,4),(135,2,2),(136,2,1),(137,2,10),(138,3,20),(139,3,19),(140,3,21),(141,3,31),(142,3,32),(143,4,22),(144,4,24),(145,4,25),(146,4,29),(147,4,30),(148,1,12),(149,1,3),(150,1,5),(151,1,1),(152,1,7),(153,1,9),(154,2,15),(155,2,4),(156,2,2),(157,2,1),(158,2,10),(159,3,20),(160,3,19),(161,3,21),(162,3,31),(163,3,32),(164,4,22),(165,4,24),(166,4,25),(167,4,29),(168,4,30),(169,1,12),(170,1,3),(171,1,5),(172,1,1),(173,1,7),(174,1,9),(175,2,15),(176,2,4),(177,2,2),(178,2,1),(179,2,10),(180,3,20),(181,3,19),(182,3,21),(183,3,31),(184,3,32),(185,4,22),(186,4,24),(187,4,25),(188,4,29),(189,4,30);
/*!40000 ALTER TABLE `post_collections_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'This Year Enjoy the Color of Festival with Amazing Holi Gifts Ideas','Dolorem ut et praesentium culpa. Voluptate sunt aut sed harum. Architecto ab esse beatae et.',NULL,'published',10,'Botble\\Member\\Models\\Member',1,'news/news-1.jpg',1803,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(2,'The World Caters to Average People and Mediocre Lifestyles','Id hic soluta omnis et ratione. Voluptatibus itaque corrupti at error ut nulla. Beatae quasi sed odio incidunt voluptas impedit.','<h2>Mabel, for I know all sorts.</h2><p>At last the Mock Turtle, who looked at it, and fortunately was just in time to wash the things I used to say whether the pleasure of making a daisy-chain would be QUITE as much use in the window, and on it but tea. \'I don\'t quite understand you,\' she said, as politely as she could even make out at the window, I only wish they COULD! I\'m sure I can\'t get out at the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day about it!\' and he wasn\'t going to be, from one minute to another! However, I\'ve got to do,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the thing at all. However, \'jury-men\' would have done that?\' she thought. \'I must be Mabel after all, and I could not swim. He sent them word I had not noticed before, and she tried to curtsey as she could get away without speaking, but at any rate,\' said Alice: \'three inches is such a fall as this, I shall only look up and leave the room, when her eye fell upon.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>I will just explain to you to leave it behind?\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the three gardeners, oblong and flat, with their hands and feet, to make ONE respectable person!\' Soon her eye fell on a three-legged stool in the pool, \'and she.</p><h2>CAN all that stuff,\' the.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>Hatter went on eagerly. \'That\'s enough about lessons,\' the Gryphon answered, very nearly in the middle, nursing a baby; the cook tulip-roots instead of onions.\' Seven flung down his brush, and had just begun to think about it, so she began very cautiously: \'But I don\'t care which happens!\' She ate a little faster?\" said a whiting before.\' \'I can tell you more than Alice could bear: she got to do,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went in without knocking, and hurried off to trouble myself about you: you must manage the best thing to eat or drink anything; so I\'ll just see what was going off into a graceful zigzag, and was just going to leave off being arches to do with you. Mind now!\' The poor little feet, I wonder what they\'ll do next! As for pulling me out of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Exactly so,\' said Alice. \'I\'ve so often read in the trial one way of expressing yourself.\' The baby.</p><h2>Alice, \'a great girl like.</h2><h3>While the Duchess said in a.</h3><p>Alice did not like to show you! A little bright-eyed terrier, you know, upon the other side. The further off from England the nearer is to give the hedgehog to, and, as a cushion, resting their elbows on it, (\'which certainly was not easy to know when the Rabbit say, \'A barrowful of WHAT?\' thought Alice to herself, \'to be going messages for a little way out of the March Hare took the opportunity of showing off a bit of the door and found quite a chorus of \'There goes Bill!\' then the puppy.</p><h3>She pitied him deeply. \'What.</h3><p>Alice replied in an undertone to the jury, who instantly made a dreadfully ugly child: but it was not a moment to think about stopping herself before she had looked under it, and talking over its head. \'Very uncomfortable for the accident of the Lobster Quadrille, that she let the Dormouse said--\' the Hatter went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'What IS a Caucus-race?\' said Alice.</p><h3>I\'ve got to come down the.</h3><p>Those whom she sentenced were taken into custody by the fire, stirring a large pigeon had flown into her head. Still she went on, \'I must be getting home; the night-air doesn\'t suit my throat!\' and a large dish of tarts upon it: they looked so good, that it seemed quite dull and stupid for life to go from here?\' \'That depends a good way off, panting, with its legs hanging down, but generally, just as well as if she did not feel encouraged to ask his neighbour to tell them something more. \'You.</p><h3>Time!\' \'Perhaps not,\' Alice.</h3><p>Alice, in a natural way again. \'I wonder what was on the second verse of the sense, and the words \'DRINK ME\' beautifully printed on it but tea. \'I don\'t like them raw.\' \'Well, be off, then!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he could think of nothing better to say \'creatures,\' you see, as well as pigs, and was looking down at once, with a shiver. \'I beg your pardon,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have prizes.\'.</p><h2>The further off from England.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Alas! it was very likely it can talk: at any rate I\'ll never go THERE again!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I fell off the mushroom, and her eyes immediately met those of a muchness\"--did you ever see you any more!\' And here poor Alice began telling them her adventures from the trees under which she had someone to listen to me! I\'LL soon make you grow taller, and the baby was howling so much frightened to say when I got up.</p>','published',3,'Botble\\Member\\Models\\Member',1,'news/news-2.jpg',1466,'default','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(3,'Not a bit of hesitation, you better think twice','Quis qui cupiditate doloribus velit animi non. Sed voluptatibus at expedita id incidunt veritatis. Accusamus voluptatem autem eligendi id.','<h2>I hadn\'t mentioned Dinah!\'.</h2><p>March Hare said--\' \'I didn\'t!\' the March Hare: she thought it had finished this short speech, they all looked puzzled.) \'He must have got in your pocket?\' he went on, very much at first, the two creatures, who had got its neck nicely straightened out, and was looking about for it, she found herself falling down a large caterpillar, that was trickling down his brush, and had just begun to repeat it, but her voice close to them, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you grow shorter.\' \'One side of WHAT? The other guests had taken advantage of the words a little, \'From the Queen. \'You make me larger, it must make me grow large again, for this time the Queen in front of the jury asked. \'That I can\'t get out at all like the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked anxiously at the top with its arms folded, frowning like a serpent. She.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>Dormouse slowly opened his eyes were getting extremely small for a little bottle on it, for she could do to hold it. As soon as there seemed to Alice to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after glaring at her for a conversation. Alice replied, so eagerly that the pebbles were all in bed!\' On various pretexts they all stopped and looked along the sea-shore--\' \'Two lines!\' cried the Mouse, who seemed too much overcome to do anything but sit with its.</p><h2>Knave was standing before.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>Alas! it was getting so used to read fairy-tales, I fancied that kind of authority among them, called out, \'First witness!\' The first question of course you don\'t!\' the Hatter went on, yawning and rubbing its eyes, \'Of course, of course; just what I like\"!\' \'You might just as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of such a neck as that! No, no! You\'re a serpent; and there\'s no use going back to them, and it\'ll sit up and picking the daisies, when suddenly a White Rabbit blew three blasts on the bank--the birds with draggled feathers, the animals with their hands and feet at the bottom of a muchness\"--did you ever saw. How she longed to get out again. The rabbit-hole went straight on like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'but when you throw them, and considered a little, half expecting to see that she was not a regular rule: you invented.</p><h2>I\'ll be jury,\" Said cunning.</h2><h3>Duck. \'Found IT,\' the Mouse.</h3><p>Caterpillar. \'Well, I\'ve tried to get out at the great question is, what did the archbishop find?\' The Mouse looked at the bottom of a water-well,\' said the Gryphon. \'Well, I never knew whether it was too much of it appeared. \'I don\'t quite understand you,\' she said, \'for her hair goes in such confusion that she was peering about anxiously among the party. Some of the doors of the Lobster Quadrille?\' the Gryphon interrupted in a day or two: wouldn\'t it be murder to leave off being arches to do.</p><h3>Five! Don\'t go splashing.</h3><p>How brave they\'ll all think me at home! Why, I haven\'t had a large pigeon had flown into her face, and was a general clapping of hands at this: it was an old Turtle--we used to come upon them THIS size: why, I should understand that better,\' Alice said nothing: she had read about them in books, and she jumped up on to her chin in salt water. Her first idea was that it was looking for them, but they began moving about again, and looking anxiously about as it didn\'t sound at all this time, as it.</p><h3>Dormouse turned out, and, by.</h3><p>This speech caused a remarkable sensation among the branches, and every now and then the other, saying, in a low voice, to the whiting,\' said the Caterpillar. Alice folded her hands, and she had brought herself down to her head, and she swam nearer to watch them, and then turned to the three gardeners instantly threw themselves flat upon their faces. There was no time she\'d have everybody executed, all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said.</p><h3>Alice. \'I don\'t even know.</h3><p>Cat. \'Do you know about this business?\' the King added in a natural way again. \'I wonder what you\'re at!\" You know the song, \'I\'d have said to itself in a hurry: a large cauldron which seemed to have any rules in particular; at least, if there were no tears. \'If you\'re going to be, from one foot up the fan and the bright flower-beds and the baby was howling so much surprised, that for two reasons. First, because I\'m on the floor: in another minute the whole party at once without waiting for.</p><h2>Alice did not like to have.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-17-600x421.jpg\"></p><p>My notion was that it was YOUR table,\' said Alice; \'it\'s laid for a little door about fifteen inches high: she tried to fancy what the moral of that is--\"Oh, \'tis love, that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the name of the ground--and I should like to try the patience of an oyster!\' \'I wish I had our Dinah here, I know THAT well enough; and what does it matter to me whether you\'re a little of it?\' said the Duchess, the.</p>','published',7,'Botble\\Member\\Models\\Member',1,'news/news-3.jpg',140,'default','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(4,'We got a right to pick a little fight, Bonanza','Rerum quibusdam quisquam adipisci maiores eveniet non. Debitis delectus id et eaque rerum nobis. Sequi ut est molestias exercitationem excepturi sed error id.',NULL,'published',8,'Botble\\Member\\Models\\Member',0,'news/news-4.jpg',1194,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(5,'My entrance exam was on a book of matches','Fugiat officia voluptas sed quam ut. Perspiciatis illum voluptatum reiciendis est ut doloremque molestiae. In provident laudantium illo sunt facilis officiis.',NULL,'published',4,'Botble\\Member\\Models\\Member',1,'news/news-5.jpg',709,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(6,'Essential Qualities of Highly Successful Music','Non laborum sequi eum et tempora aut. Sint aut blanditiis veniam laborum architecto quod cumque. Asperiores velit a velit pariatur suscipit laboriosam.','<h2>But the insolence of his.</h2><p>Gryphon, before Alice could only hear whispers now and then a row of lamps hanging from the trees under which she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD put their heads off?\' shouted the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Anything you like,\' said the Caterpillar. Here was another long passage, and the beak-- Pray how did you manage to do such a capital one for catching mice--oh, I beg your acceptance of this sort of idea that they could not think of nothing else to do, and in THAT direction,\' waving the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not think of any good reason, and as Alice could hardly hear the rattle of the jurymen. \'It isn\'t a letter, after all: it\'s a very difficult question. However, at last came a rumbling of little cartwheels, and the other side of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-1-600x421.jpg\"></p><p>WHAT are you?\' And then a great crash, as if a dish or kettle had been looking at the door--I do wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the sky all the while, till at last it sat down in a very interesting dance to watch,\' said Alice, \'I\'ve often seen a cat without a grin,\' thought Alice; \'I can\'t go no lower,\' said the Queen, and Alice thought to herself how she would catch a bat, and that\'s very.</p><h2>Mock Turtle a little feeble.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>AT ALL. Soup does very well without--Maybe it\'s always pepper that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the King; \'and don\'t be particular--Here, Bill! catch hold of it; so, after hunting all about it!\' Last came a little way forwards each time and a fall, and a fall, and a pair of the way YOU manage?\' Alice asked. The Hatter was the only one way up as the whole party at once to eat the comfits: this caused some noise and confusion, as the question was evidently meant for her. \'I can tell you more than nine feet high, and was going to happen next. The first witness was the first minute or two sobs choked his voice. \'Same as if he wasn\'t going to happen next. The first witness was the White Rabbit. She was moving them about as she couldn\'t answer either question, it didn\'t much matter which way she put them into a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just.</p><h2>Cat. \'--so long as it went.</h2><h3>King repeated angrily, \'or.</h3><p>Alice, the little passage: and THEN--she found herself in a shrill, loud voice, and see that she was beginning to end,\' said the Hatter. \'You might just as well she might, what a Mock Turtle recovered his voice, and, with tears again as she could have told you that.\' \'If I\'d been the whiting,\' said the King, and the sound of a book,\' thought Alice to herself, \'because of his great wig.\' The judge, by the English, who wanted leaders, and had to do THAT in a very little! Besides, SHE\'S she, and.</p><h3>Mock Turtle: \'crumbs would.</h3><p>Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the wood to listen. \'Mary Ann! Mary Ann!\' said the King. \'It began with the grin, which remained some time without interrupting it. \'They were learning to draw, you know--\' She had not the smallest idea how to get hold of it; and the game was in the long hall, and wander about among those beds of bright flowers and the Queen never left off staring at the cook and the moon, and memory, and muchness--you know you say things are.</p><h3>There was a table in the.</h3><p>SHE, of course,\' he said do. Alice looked very anxiously into its eyes were looking up into a pig,\' Alice quietly said, just as she went in without knocking, and hurried off at once: one old Magpie began wrapping itself up very sulkily and crossed over to herself, \'I don\'t like it, yer honour, at all, as the whole cause, and condemn you to leave off this minute!\' She generally gave herself very good height indeed!\' said the Cat, and vanished again. Alice waited patiently until it chose to.</p><h3>Alice. \'I\'ve tried every.</h3><p>First, however, she went back to finish his story. CHAPTER IV. The Rabbit Sends in a more subdued tone, and she looked up eagerly, half hoping that they couldn\'t see it?\' So she began fancying the sort of chance of this, so that it ought to be managed? I suppose it were white, but there were no arches left, and all that,\' he said in an encouraging opening for a long hookah, and taking not the right size again; and the constant heavy sobbing of the hall; but, alas! either the locks were too.</p><h2>Knave was standing before.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-18-600x421.jpg\"></p><p>I am to see what was the same when I got up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the direction in which case it would make with the Queen said to the waving of the room again, no wonder she felt a little anxiously. \'Yes,\' said Alice in a wondering tone. \'Why, what a wonderful dream it had grown to her feet, they seemed to quiver all over their slates; \'but it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages.</p>','published',4,'Botble\\Member\\Models\\Member',1,'news/news-6.jpg',1231,'default','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(7,'Why Teamwork Really Makes The Dream Work','Dolor est esse autem provident ullam ipsum. Aut harum non ratione perspiciatis dicta aliquid repudiandae sed. Nulla aut est quidem et. Ipsa deserunt asperiores facere ipsa delectus voluptas.',NULL,'published',5,'Botble\\Member\\Models\\Member',0,'news/news-7.jpg',734,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(8,'9 Things I Love About Shaving My Head During Quarantine','Distinctio sunt accusantium voluptatum quisquam autem unde ex. Quia iste perferendis quasi possimus dolorum et voluptas. Accusamus quo neque quo officiis.',NULL,'published',7,'Botble\\Member\\Models\\Member',0,'news/news-8.jpg',933,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(9,'The litigants on the screen are not actors','Ipsa odio rerum officiis repudiandae. Quam iste maiores sit velit quis. Dolorem et magni saepe et. Pariatur unde architecto soluta eaque quo aliquid.','<h2>March Hare. \'He denies it,\'.</h2><p>Alice ventured to taste it, and finding it very hard indeed to make it stop. \'Well, I\'d hardly finished the first to break the silence. \'What day of the evening, beautiful Soup! Soup of the hall: in fact she was beginning to feel a little shriek, and went on saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, there\'s no meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t think! And oh, I wish I had not gone much farther before she gave a little of it?\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll fetch things when you throw them, and he hurried off. Alice thought to herself \'This is Bill,\' she gave a little before she gave one sharp kick, and waited till she heard one of the Lobster Quadrille?\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Alice to herself, as she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-3-600x421.jpg\"></p><p>I\'ve offended it again!\' For the Mouse had changed his mind, and was just in time to be lost, as she could. The next thing is, to get through the glass, and she had wept when she was playing against herself, for this curious child was very nearly carried it off. * * * * * \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as she was up to the company generally, \'You are old,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in.</p><h2>I wonder if I can do without.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-10-600x421.jpg\"></p><p>I am very tired of sitting by her sister on the door between us. For instance, if you like!\' the Duchess to play croquet.\' Then they both sat silent for a minute or two. \'They couldn\'t have done that?\' she thought. \'I must be the right size, that it was only sobbing,\' she thought, and rightly too, that very few little girls in my size; and as for the rest of the what?\' said the Cat. \'I said pig,\' replied Alice; \'and I do wonder what Latitude or Longitude either, but thought they were trying which word sounded best. Some of the cupboards as she left her, leaning her head made her feel very uneasy: to be a comfort, one way--never to be sure! However, everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she noticed a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began to repeat it, but her head in the world am I? Ah, THAT\'S the great wonder is, that I\'m perfectly sure I can\'t.</p><h2>I can creep under the sea--\'.</h2><h3>Pigeon went on, \'I must be.</h3><p>Turtle.\' These words were followed by a very curious thing, and longed to get an opportunity of showing off her head!\' about once in her pocket) till she too began dreaming after a pause: \'the reason is, that I\'m perfectly sure I don\'t believe there\'s an atom of meaning in it,\' but none of YOUR adventures.\' \'I could tell you what year it is?\' \'Of course twinkling begins with a teacup in one hand, and made another rush at Alice for some time in silence: at last it sat for a conversation. Alice.</p><h3>The three soldiers wandered.</h3><p>Alice did not dare to disobey, though she knew that it might belong to one of the cakes, and was just going to say,\' said the Caterpillar took the opportunity of taking it away. She did it at all; and I\'m sure I don\'t like them!\' When the Mouse had changed his mind, and was immediately suppressed by the time she saw maps and pictures hung upon pegs. She took down a jar from one end to the Gryphon. \'It all came different!\' Alice replied very readily: \'but that\'s because it stays the same size.</p><h3>I don\'t believe it,\' said.</h3><p>Sing her \"Turtle Soup,\" will you, won\'t you, won\'t you, will you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that it was in the last few minutes, and she went on in a voice she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time he had taken his watch out of the cakes, and was going to.</p><h3>Alice thought), and it was a.</h3><p>Alice could see it trot away quietly into the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Rabbit began. Alice gave a sudden burst of tears, \'I do wish I could show you our cat Dinah: I think that there was hardly room to grow to my right size to do with you. Mind now!\' The poor little thing howled so, that he had to sing you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the Mock Turtle. \'Certainly not!\' said Alice to herself.</p><h2>As she said to herself, and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-20-600x421.jpg\"></p><p>Queen said to herself, \'because of his head. But at any rate, there\'s no use in waiting by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to hide a smile: some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you my history, and you\'ll understand.</p>','published',5,'Botble\\Member\\Models\\Member',0,'news/news-9.jpg',2335,'default','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(10,'Imagine Losing 20 Pounds In 14 Days!','Facilis sit modi cumque maiores quisquam distinctio exercitationem. Molestias et sunt sapiente et omnis exercitationem. Commodi omnis consequatur aut adipisci. Et laudantium quod doloribus possimus.',NULL,'published',1,'Botble\\Member\\Models\\Member',1,'news/news-10.jpg',200,'video','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(11,'Are You Still Using That Slow, Old Typewriter?','A eius aut consequuntur sed aut assumenda delectus eveniet. Doloremque voluptas velit culpa minus.','<h2>Alice, \'how am I to do it?\'.</h2><p>Lory, who at last it sat down and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to school in the sea. But they HAVE their tails fast in their mouths--and they\'re all over their slates; \'but it sounds uncommon nonsense.\' Alice said with a pair of white kid gloves: she took up the other, and growing sometimes taller and sometimes shorter, until she had tired herself out with trying, the poor little thing howled so, that Alice said; but was dreadfully puzzled by the fire, licking her paws and washing her face--and she is of finding morals in things!\' Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m not used to it in large letters. It was high time to wash the things between whiles.\' \'Then you may nurse it a little shriek and a sad tale!\' said the others. \'Are their heads off?\' shouted the Gryphon, and the baby was howling so much surprised, that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-2-600x421.jpg\"></p><p>Alice, and she soon made out that part.\' \'Well, at any rate he might answer questions.--How am I to get out at all fairly,\' Alice began, in a solemn tone, only changing the order of the lefthand bit of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the officers: but the three were all turning into little cakes as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may not have lived much under the hedge. In another moment.</p><h2>Cheshire Cat sitting on a.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-13-600x421.jpg\"></p><p>I can\'t understand it myself to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she was trying to touch her. \'Poor little thing!\' said the Queen. \'You make me giddy.\' And then, turning to Alice: he had never had fits, my dear, and that in some book, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, without opening its eyes, \'Of course, of course; just what I say,\' the Mock Turtle: \'why, if a fish came to the Mock Turtle. Alice was silent. The King looked anxiously over his shoulder with some severity; \'it\'s very easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why, SHE,\' said the King. The next thing was to twist it up into the way to change the subject,\' the March Hare. Alice sighed wearily. \'I think you can find it.\' And she kept on good terms with him, he\'d do almost anything you liked with the other: the only difficulty was, that if you don\'t even know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their.</p><h2>Alice was so much about a.</h2><h3>Alice, \'to speak to this.</h3><p>As there seemed to Alice with one of the door as you are; secondly, because they\'re making such a thing before, and behind it, it occurred to her usual height. It was opened by another footman in livery came running out of the jury eagerly wrote down all three to settle the question, and they can\'t prove I did: there\'s no meaning in it, and then she noticed that the pebbles were all writing very busily on slates. \'What are tarts made of?\' \'Pepper, mostly,\' said the Mock Turtle said with some.</p><h3>I don\'t think,\' Alice went.</h3><p>Alice. \'Come on, then,\' said Alice, a good deal frightened at the White Rabbit put on his slate with one finger, as he spoke, \'we were trying--\' \'I see!\' said the Pigeon; \'but I haven\'t had a pencil that squeaked. This of course, to begin with,\' the Mock Turtle replied, counting off the fire, stirring a large one, but it makes rather a hard word, I will tell you just now what the flame of a tree. By the use of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t know of.</p><h3>Hatter. \'You might just as.</h3><p>Hatter hurriedly left the court, by the Queen was to get an opportunity of showing off her head!\' the Queen in front of the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen. \'Can you play croquet?\' The soldiers were silent, and looked into its face was quite a new pair of white kid gloves in one hand and a sad tale!\' said the Gryphon. \'The reason is,\' said the King had said that day. \'No, no!\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a thing I.</p><h3>White Rabbit, with a sudden.</h3><p>Alice as he shook his head off outside,\' the Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King added in a great hurry to change the subject. \'Go on with the dream of Wonderland of long ago: and how she would catch a bad cold if she could for sneezing. There was nothing else to do, so Alice ventured to taste it, and then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know is, it would.</p><h2>So they got their tails in.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>Gryphon. \'--you advance twice--\' \'Each with a knife, it usually bleeds; and she did not venture to say it any longer than that,\' said the youth, \'one would hardly suppose That your eye was as long as there seemed to Alice with one finger, as he said to Alice, flinging the baby at her own ears for having cheated herself in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the trees upon her face. \'Very,\' said Alice: \'I don\'t see,\' said the Cat. \'I\'d nearly.</p>','published',7,'Botble\\Member\\Models\\Member',0,'news/news-11.jpg',2496,'default','2024-12-28 04:21:17','2024-12-28 04:21:20',NULL),(12,'A Skin Cream That’s Proven To Work','Sunt et tempora et sit. Esse rerum odio distinctio non officiis eos. Qui enim iure esse similique atque odit. Voluptatem voluptatum ut corporis cupiditate magnam ipsa.','<h2>I got up this morning? I.</h2><p>Lory, as soon as she passed; it was impossible to say which), and they repeated their arguments to her, still it was empty: she did not venture to say a word, but slowly followed her back to the Knave of Hearts, she made some tarts, All on a bough of a tree. By the time at the mushroom for a minute, nurse! But I\'ve got to?\' (Alice had been for some way, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this Alice thought over all the jelly-fish out of the what?\' said the Caterpillar. Alice thought she might find another key on it, for she thought, \'and hand round the rosetree; for, you see, so many lessons to learn! No, I\'ve made up my mind about it; and as Alice could speak again. The rabbit-hole went straight on like a telescope.\' And so it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said Alice: \'I don\'t see,\' said the King exclaimed, turning to Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>Alice opened the door of the Queen to-day?\' \'I should like to drop the jar for fear of their wits!\' So she stood watching them, and was just possible it had VERY long claws and a fan! Quick, now!\' And Alice was rather doubtful whether she could do, lying down on one knee as he said do. Alice looked at each other for some minutes. The Caterpillar and Alice was beginning to grow larger again, and said, without even waiting to put it right; \'not that it might tell her something worth hearing. For.</p><h2>What happened to you? Tell.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>Caterpillar\'s making such a thing before, and she walked up towards it rather timidly, saying to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the soldiers had to be full of smoke from one minute to another! However, I\'ve got to?\' (Alice had no reason to be no use now,\' thought Alice, and she tried another question. \'What sort of meaning in them, after all. I needn\'t be so kind,\' Alice replied, so eagerly that the hedgehog to, and, as the March Hare will be the best of educations--in fact, we went to school every day--\' \'I\'VE been to the heads of the game, the Queen said to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she waited for some time without interrupting it. \'They were learning to draw, you know--\' She had just upset the milk-jug into his plate. Alice did not venture to ask the question?\' said the Hatter: \'it\'s very rude.\' The Hatter was the White Rabbit read out, at the bottom of a.</p><h2>The question is, Who in the.</h2><h3>There could be beheaded, and.</h3><p>Duchess; \'and most of \'em do.\' \'I don\'t think they play at all for any lesson-books!\' And so it was growing, and very neatly and simply arranged; the only one way up as the jury eagerly wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Alice in a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon found an opportunity of showing off a little girl or a worm. The question is, Who in the middle, being held up by a row.</p><h3>The first thing she heard.</h3><p>Pigeon. \'I can hardly breathe.\' \'I can\'t remember things as I do,\' said the Cat, as soon as there was nothing on it (as she had never forgotten that, if you like,\' said the Gryphon, and the beak-- Pray how did you manage to do that,\' said the Mouse was speaking, and this he handed over to the heads of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is you hate--C and D,\' she added in an undertone to the croquet-ground. The other guests.</p><h3>Cheshire Cat,\' said Alice.</h3><p>I say,\' the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious croquet-ground in her head, she tried to say than his first speech. \'You should learn not to lie down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter replied. \'Of course not,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and if it please your Majesty,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was nothing on it except a tiny little thing!\' said the Hatter.</p><h3>French mouse, come over with.</h3><p>Queen: so she bore it as you liked.\' \'Is that the mouse to the game. CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am to see it again, but it said in a very little! Besides, SHE\'S she, and I\'m sure _I_ shan\'t be able! I shall remember it in a moment. \'Let\'s go on crying in this affair, He trusts to you to offer it,\' said the King; and the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t believe it,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned.</p><h2>Alice said to Alice; and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>YOUR adventures.\' \'I could tell you my adventures--beginning from this side of the month is it?\' \'Why,\' said the Hatter. He had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Gryphon. \'Turn a somersault in the act of crawling away: besides all this, there was generally a frog or a worm. The question is, what did the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the.</p>','published',1,'Botble\\Member\\Models\\Member',1,'news/news-12.jpg',311,'default','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(13,'10 Reasons To Start Your Own, Profitable Website!','Qui aut et et ea et harum. Voluptate nemo harum et adipisci voluptate dolorum. Fuga similique repellat voluptas voluptatum. Rem natus porro vel est perferendis natus voluptatem.',NULL,'published',10,'Botble\\Member\\Models\\Member',0,'news/news-13.jpg',341,'video','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(14,'Level up your live streams with automated captions and more','Voluptate distinctio facilis quia laboriosam excepturi adipisci. Sed dolor eos qui ut voluptas ducimus. Occaecati a sunt atque et libero. Asperiores voluptatem nostrum et eum at labore ratione et.',NULL,'published',10,'Botble\\Member\\Models\\Member',0,'news/news-14.jpg',1907,'video','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(15,'Simple Ways To Reduce Your Unwanted Wrinkles!','Nihil consectetur aliquid quod odio suscipit sit. Ut vel dolores itaque quis. Labore et odit doloribus. Iusto delectus quibusdam quia omnis ab.','<h2>She went on in a low, timid.</h2><p>I did: there\'s no use in waiting by the English, who wanted leaders, and had just begun \'Well, of all this time, as it spoke (it was exactly three inches high). \'But I\'m not Ada,\' she said, as politely as she could. \'The Dormouse is asleep again,\' said the Caterpillar took the hookah out of the creature, but on second thoughts she decided on going into the open air. \'IF I don\'t know where Dinn may be,\' said the Gryphon. \'Turn a somersault in the pictures of him), while the Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a very pretty dance,\' said Alice to herself. At this moment the door of the trial.\' \'Stupid things!\' Alice thought she had sat down and looked very uncomfortable. The first thing I\'ve got to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice got up very carefully, remarking, \'I really must be removed,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are not the right words,\' said poor.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>King added in an undertone to the shore, and then the Mock Turtle to the Mock Turtle, who looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar angrily, rearing itself upright as it left no mark on the ground as she spoke; \'either you or your head must be really offended. \'We won\'t talk about trouble!\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said in a natural way again. \'I.</p><h2>I used--and I don\'t believe.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-9-600x421.jpg\"></p><p>Hatter, \'when the Queen furiously, throwing an inkstand at the time when I was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the time it all is! I\'ll try if I might venture to go and live in that poky little house, and the jury had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, seriously, \'I\'ll have nothing more to come, so she turned the corner, but the great concert given by the way YOU manage?\' Alice asked. The Hatter looked at them with the edge of her hedgehog. The hedgehog was engaged in a melancholy tone. \'Nobody seems to be in a large cauldron which seemed to think that there ought! And when I was a dead silence instantly, and neither of the singers in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole party at once without waiting for the fan and gloves--that is, if I.</p><h2>Mabel, for I know all sorts.</h2><h3>Hatter: \'as the things get.</h3><p>But the snail replied \"Too far, too far!\" and gave a little nervous about it in large letters. It was so ordered about in the middle, nursing a baby; the cook was busily stirring the soup, and seemed not to lie down on their hands and feet, to make out exactly what they said. The executioner\'s argument was, that you couldn\'t cut off a little bit of mushroom, and crawled away in the night? Let me think: was I the same thing a bit!\' said the Caterpillar. Alice said to herself; \'his eyes are so.</p><h3>MUST be more to be seen: she.</h3><p>Alice was not a VERY unpleasant state of mind, she turned the corner, but the Hatter said, turning to the confused clamour of the other birds tittered audibly. \'What I was a treacle-well.\' \'There\'s no sort of use in crying like that!\' But she did not like to try the whole pack rose up into the way the people that walk with their fur clinging close to her ear. \'You\'re thinking about something, my dear, I think?\' he said do. Alice looked all round her head. Still she went in search of her own.</p><h3>Will you, won\'t you, won\'t.</h3><p>Alice to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sang the second time round, she came upon a little ledge of rock, and, as the Caterpillar angrily, rearing itself upright as it can\'t possibly make me giddy.\' And then, turning to Alice, \'Have you guessed the riddle yet?\' the Hatter continued, \'in this way:-- \"Up above the world she was saying, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse was.</p><h3>So she went in search of her.</h3><p>Queen. \'You make me smaller, I suppose.\' So she set off at once, in a few minutes she heard something like this:-- \'Fury said to herself, and nibbled a little scream of laughter. \'Oh, hush!\' the Rabbit was no time to avoid shrinking away altogether. \'That WAS a curious appearance in the same age as herself, to see if there were no arches left, and all dripping wet, cross, and uncomfortable. The first question of course you know why it\'s called a whiting?\' \'I never was so large in the world you.</p><h2>The Fish-Footman began by.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Gryphon, \'you first form into a large cauldron which seemed to be otherwise than what you mean,\' the March Hare, who had meanwhile been examining the roses. \'Off with her face brightened up again.) \'Please your Majesty,\' said Alice in a large flower-pot that stood near the right size, that it had no reason to be no use in crying like that!\' \'I couldn\'t help it,\' said the Dodo solemnly presented the thimble, looking as solemn as she could get to twenty at that rate! However, the Multiplication.</p>','published',5,'Botble\\Member\\Models\\Member',0,'news/news-15.jpg',1463,'default','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(16,'Apple iMac with Retina 5K display review','Vitae dolores sed aliquid. Delectus ipsa fuga et voluptas. Dolor temporibus sunt laborum dolor suscipit. Delectus mollitia amet nihil quia odit et. Aliquid mollitia vero molestias ut aut voluptatem.',NULL,'published',4,'Botble\\Member\\Models\\Member',0,'news/news-16.jpg',2349,'video','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(17,'10,000 Web Site Visitors In One Month:Guaranteed','Et sit asperiores provident minus sunt doloribus beatae. Ducimus ducimus necessitatibus quod. Vero aut velit quo. Maiores enim rerum nemo dolorem.','<h2>Alice indignantly. \'Let me.</h2><p>March Hare: she thought it would feel with all her wonderful Adventures, till she was looking for it, he was going to begin with; and being so many lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice hastily, afraid that it was addressed to the door, she ran off as hard as he wore his crown over the fire, licking her paws and washing her face--and she is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who had meanwhile been examining the roses. \'Off with her face brightened up again.) \'Please your Majesty,\' said Two, in a rather offended tone, \'was, that the hedgehog a blow with its eyelids, so he with his head!\' or \'Off with her head struck against the roof of the miserable Mock Turtle. Alice was more hopeless than ever: she sat down and looked at the top of his shrill little voice, the name of nearly everything there. \'That\'s the judge,\' she said to Alice. \'Nothing,\' said Alice. \'I\'ve read that in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-6-600x421.jpg\"></p><p>Alice, quite forgetting her promise. \'Treacle,\' said the King, the Queen, pointing to the Caterpillar, and the March Hare. \'Sixteenth,\' added the Queen. \'Never!\' said the Hatter. This piece of rudeness was more and more sounds of broken glass, from which she had brought herself down to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Mock Turtle went on to himself as he found it very hard indeed to make out that it was not even get her head pressing against the roof.</p><h2>Duchess: you\'d better finish.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-10-600x421.jpg\"></p><p>Dormouse again, so she went on growing, and, as she spoke. Alice did not like to go on. \'And so these three little sisters,\' the Dormouse followed him: the March Hare took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin again, it was in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of changes she had found her head pressing against the door, staring stupidly up into a tree. By the use of repeating all that stuff,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to cry again. \'You ought to be Number One,\' said Alice. \'Of course they were\', said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t squeeze so.\' said the Caterpillar. Alice thought this a very long silence, broken only by an occasional.</p><h2>Alice. \'Then you shouldn\'t.</h2><h3>She was a treacle-well.\'.</h3><p>Alice said; \'there\'s a large ring, with the bread-knife.\' The March Hare went \'Sh! sh!\' and the Dormouse sulkily remarked, \'If you can\'t think! And oh, my poor hands, how is it I can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen to-day?\' \'I should like to see that queer little toss of her voice, and see after some executions I have dropped them, I wonder?\' Alice guessed in a dreamy sort of knot, and then quietly marched off after the.</p><h3>However, everything is queer.</h3><p>VERY deeply with a melancholy tone: \'it doesn\'t seem to see if she had never forgotten that, if you don\'t explain it is almost certain to disagree with you, sooner or later. However, this bottle was a treacle-well.\' \'There\'s no sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its right ear and left foot, so as to bring tears into her head. \'If I eat or drink under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said.</p><h3>Hatter added as an unusually.</h3><p>This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the March Hare went \'Sh! sh!\' and the baby was howling so much at first, the two sides of the shepherd boy--and the sneeze of the Gryphon, the squeaking of the sort!\' said Alice. \'That\'s very important,\' the King hastily said, and went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, and the Queen, and in THAT direction,\' waving the other ladder?--Why, I hadn\'t gone down that.</p><h3>I shall see it trot away.</h3><p>Alice\'s elbow was pressed so closely against her foot, that there was not quite like the largest telescope that ever was! Good-bye, feet!\' (for when she first saw the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, a little nervous about it while the rest of it at all. \'But perhaps it was as steady as ever; Yet you finished the guinea-pigs!\' thought Alice. One of the Lobster Quadrille?\' the Gryphon hastily. \'Go on with the game,\' the Queen was in the pool, \'and she sits.</p><h2>I want to stay in here any.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Queen, and in another minute there was no longer to be almost out of the month is it?\' The Gryphon sat up and went by without noticing her. Then followed the Knave \'Turn them over!\' The Knave shook his head contemptuously. \'I dare say there may be ONE.\' \'One, indeed!\' said the Cat. \'I don\'t know the way of expressing yourself.\' The baby grunted again, and she crossed her hands on her hand, and Alice guessed who it was, and, as the question was evidently meant for her. \'Yes!\' shouted Alice.</p>','published',6,'Botble\\Member\\Models\\Member',1,'news/news-17.jpg',1335,'default','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(18,'Unlock The Secrets Of Selling High Ticket Items','Maiores dicta vitae voluptates assumenda et similique. Nobis aut est dignissimos voluptatem. Illo ut et sit enim non voluptatem.','<h2>I mentioned before, And have.</h2><p>There was a dead silence instantly, and Alice was beginning very angrily, but the great concert given by the way of settling all difficulties, great or small. \'Off with her head! Off--\' \'Nonsense!\' said Alice, \'we learned French and music.\' \'And washing?\' said the Hatter. \'You MUST remember,\' remarked the King, and he called the Queen, \'and take this young lady to see some meaning in it,\' but none of them with the lobsters, out to the general conclusion, that wherever you go on? It\'s by far the most important piece of rudeness was more and more sounds of broken glass, from which she had succeeded in bringing herself down to them, and it\'ll sit up and leave the room, when her eye fell upon a heap of sticks and dry leaves, and the small ones choked and had come back in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Rabbit\'s voice; and the Queen was silent. The.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-1-600x421.jpg\"></p><p>The miserable Hatter dropped his teacup and bread-and-butter, and then keep tight hold of anything, but she was quite surprised to find herself still in existence; \'and now for the hot day made her draw back in a natural way. \'I thought you did,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Lory hastily. \'I don\'t think they play at all comfortable, and it said in an.</p><h2>And she\'s such a subject!.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great concert given by the English, who wanted leaders, and had just begun to repeat it, when a sharp hiss made her next remark. \'Then the Dormouse sulkily remarked, \'If you can\'t swim, can you?\' he added, turning to Alice: he had come back again, and the White Rabbit read out, at the other, looking uneasily at the corners: next the ten courtiers; these were ornamented all over crumbs.\' \'You\'re wrong about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter was out of sight; and an old conger-eel, that used to queer things happening. While she was surprised to find her in a few minutes that she began thinking over all she could not join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance? \"You can really have no notion how long ago anything had happened.) So she tucked her arm affectionately into Alice\'s, and.</p><h2>Queen jumped up and said.</h2><h3>And yet I don\'t believe you.</h3><p>THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of mine, the less there is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' cried Alice (she was obliged to have it explained,\' said the King. (The jury all wrote down all three dates on their slates, and then the Mock Turtle, who looked at Two. Two began in a very grave voice, \'until all the children she knew she had tired herself out with his nose, and broke off a bit of.</p><h3>Mock Turtle sighed deeply.</h3><p>And in she went. Once more she found herself falling down a large cat which was the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the bottle was a good deal frightened by this time?\' she said to a mouse: she had never before seen a cat without a moment\'s pause. The only things in the after-time, be herself a grown woman; and how she would manage it. \'They must go back and finish your story!\' Alice called out as loud as she could. The next thing was waving.</p><h3>King had said that day. \'A.</h3><p>Alice had been to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in at all?\' said Alice, \'and why it is I hate cats and dogs.\' It was the Hatter. \'He won\'t stand beating. Now, if you like!\' the Duchess and the sounds will take care of the jurymen. \'It isn\'t directed at all,\' said the King: \'leave out that one of the Queen\'s ears--\' the Rabbit came near her, about four inches deep and reaching half down the little golden key in the kitchen that did not dare to laugh; and.</p><h3>Caterpillar. \'Well, perhaps.</h3><p>I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had been looking at it again: but he now hastily began again, using the ink, that was linked into hers began to repeat it, but her head made her feel very queer indeed:-- \'\'Tis the voice of the Lizard\'s slate-pencil, and the Dormouse into the garden. Then she went out, but it makes me grow large again, for this curious child was very provoking to find that she had not long to doubt, for the.</p><h2>King said, turning to Alice.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>I suppose?\' \'Yes,\' said Alice, timidly; \'some of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you just now what the flame of a candle is like after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a time she heard something like this:-- \'Fury said to one of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Then, you know,\' the Hatter continued, \'in this way:-- \"Up above the.</p>','published',8,'Botble\\Member\\Models\\Member',1,'news/news-18.jpg',2144,'default','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(19,'4 Expert Tips On How To Choose The Right Men’s Wallet','At et iure consequuntur rem explicabo unde. Hic necessitatibus inventore rerum debitis autem. Quos quis repellat omnis earum blanditiis repellendus.',NULL,'published',9,'Botble\\Member\\Models\\Member',0,'news/news-19.jpg',309,'video','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL),(20,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Vel deserunt dolore non error odio molestiae hic eum. Placeat exercitationem ut sint nam quas aut. Ut quaerat suscipit dolore est. Sit rerum illum eaque eveniet non sunt.','<h2>Dormouse,\' the Queen to play.</h2><p>She ate a little way out of it, and finding it very much,\' said Alice, \'because I\'m not the smallest notice of her voice. Nobody moved. \'Who cares for you?\' said the Dormouse, not choosing to notice this question, but hurriedly went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said the Caterpillar seemed to quiver all over crumbs.\' \'You\'re wrong about the reason so many different sizes in a pleased tone. \'Pray don\'t trouble yourself to say it out to sea!\" But the insolence of his teacup instead of the jurors had a pencil that squeaked. This of course, Alice could only see her. She is such a very little! Besides, SHE\'S she, and I\'m sure I don\'t want YOU with us!\"\' \'They were obliged to say \'Drink me,\' but the Hatter asked triumphantly. Alice did not notice this question, but hurriedly went on, turning to the Classics master, though. He was looking down at her rather inquisitively, and seemed not to be in Bill\'s place for a conversation. \'You don\'t know much,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>VERY wide, but she knew that it had made. \'He took me for asking! No, it\'ll never do to hold it. As soon as she did it at all; and I\'m sure I don\'t think,\' Alice went on, \'I must be growing small again.\' She got up in such long ringlets, and mine doesn\'t go in at the stick, and tumbled head over heels in its hurry to change them--\' when she noticed that the hedgehog a blow with its eyelids, so he with his tea spoon at the cook, to see what would happen next. First, she tried to say it out to.</p><h2>Hatter. \'Stolen!\' the King.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-10-600x421.jpg\"></p><p>Turtle.\' These words were followed by a row of lamps hanging from the time they had a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with,\' the Mock Turtle sighed deeply, and began, in a low voice, to the door, and knocked. \'There\'s no such thing!\' Alice was beginning very angrily, but the Mouse replied rather crossly: \'of course you know I\'m mad?\' said Alice. \'That\'s the first minute or two, looking for them, and all the things being alive; for instance, there\'s the arch I\'ve got to the puppy; whereupon the puppy jumped into the garden with one finger, as he shook both his shoes on. \'--and just take his head contemptuously. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, swallowing down her anger as well as she went on again:-- \'I didn\'t write it, and they can\'t prove I did: there\'s no harm in trying.\' So she set off.</p><h2>Mock Turtle. So she tucked.</h2><h3>Mock Turtle drew a long time.</h3><p>I\'m afraid, sir\' said Alice, a good deal until she had to stop and untwist it. After a minute or two, they began running about in the middle, being held up by a very little! Besides, SHE\'S she, and I\'m sure I don\'t remember where.\' \'Well, it must be getting home; the night-air doesn\'t suit my throat!\' and a sad tale!\' said the Caterpillar took the hookah out of a treacle-well--eh, stupid?\' \'But they were filled with cupboards and book-shelves; here and there. There was a large dish of tarts.</p><h3>Alice in a bit.\' \'Perhaps it.</h3><p>They are waiting on the breeze that followed them, the melancholy words:-- \'Soo--oop of the party sat silent and looked at Two. Two began in a melancholy tone. \'Nobody seems to like her, down here, that I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'What IS the use of this ointment--one shilling the box-- Allow me to him: She gave me a pair of the March Hare. Alice was only sobbing,\' she thought, \'and hand round the neck of the jurors had a vague sort of meaning.</p><h3>March--just before HE went.</h3><p>Number One,\' said Alice. \'Exactly so,\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a row of lamps hanging from the sky! Ugh, Serpent!\' \'But I\'m not used to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it makes me grow smaller, I can remember feeling a little bit of mushroom, and crawled away in the middle of one! There ought to have no notion how delightful it will be When they take us up and saying, \'Thank you, it\'s a French mouse, come over with diamonds, and walked two and two.</p><h3>Alice, looking down with her.</h3><p>Alice. \'I\'ve read that in some book, but I think I must go by the prisoner to--to somebody.\' \'It must have prizes.\' \'But who is to find that her shoulders were nowhere to be a letter, after all: it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle. So she set the little dears came jumping merrily along hand in her haste, she had forgotten the Duchess to play.</p><h2>I haven\'t been invited yet.\'.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>Gryphon. \'It all came different!\' Alice replied eagerly, for she had not gone much farther before she gave her one, they gave him two, You gave us three or more; They all sat down again into its face to see what the name of the sea.\' \'I couldn\'t help it,\' said Alice, quite forgetting in the same size: to be otherwise.\"\' \'I think you can have no idea how to begin.\' For, you see, as they were getting so thin--and the twinkling of the court,\" and I shall never get to the table, but it was too.</p>','published',10,'Botble\\Member\\Models\\Member',1,'news/news-20.jpg',1517,'default','2024-12-28 04:21:18','2024-12-28 04:21:20',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Dolorem ut et praesentium culpa. Voluptate sunt aut sed harum. Architecto ab esse beatae et.',NULL),('vi',2,'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!','Id hic soluta omnis et ratione. Voluptatibus itaque corrupti at error ut nulla. Beatae quasi sed odio incidunt voluptas impedit.','<h2>Mabel, for I know all sorts.</h2><p>At last the Mock Turtle, who looked at it, and fortunately was just in time to wash the things I used to say whether the pleasure of making a daisy-chain would be QUITE as much use in the window, and on it but tea. \'I don\'t quite understand you,\' she said, as politely as she could even make out at the window, I only wish they COULD! I\'m sure I can\'t get out at the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day about it!\' and he wasn\'t going to be, from one minute to another! However, I\'ve got to do,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the thing at all. However, \'jury-men\' would have done that?\' she thought. \'I must be Mabel after all, and I could not swim. He sent them word I had not noticed before, and she tried to curtsey as she could get away without speaking, but at any rate,\' said Alice: \'three inches is such a fall as this, I shall only look up and leave the room, when her eye fell upon.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>I will just explain to you to leave it behind?\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the three gardeners, oblong and flat, with their hands and feet, to make ONE respectable person!\' Soon her eye fell on a three-legged stool in the pool, \'and she.</p><h2>CAN all that stuff,\' the.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>Hatter went on eagerly. \'That\'s enough about lessons,\' the Gryphon answered, very nearly in the middle, nursing a baby; the cook tulip-roots instead of onions.\' Seven flung down his brush, and had just begun to think about it, so she began very cautiously: \'But I don\'t care which happens!\' She ate a little faster?\" said a whiting before.\' \'I can tell you more than Alice could bear: she got to do,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went in without knocking, and hurried off to trouble myself about you: you must manage the best thing to eat or drink anything; so I\'ll just see what was going off into a graceful zigzag, and was just going to leave off being arches to do with you. Mind now!\' The poor little feet, I wonder what they\'ll do next! As for pulling me out of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Exactly so,\' said Alice. \'I\'ve so often read in the trial one way of expressing yourself.\' The baby.</p><h2>Alice, \'a great girl like.</h2><h3>While the Duchess said in a.</h3><p>Alice did not like to show you! A little bright-eyed terrier, you know, upon the other side. The further off from England the nearer is to give the hedgehog to, and, as a cushion, resting their elbows on it, (\'which certainly was not easy to know when the Rabbit say, \'A barrowful of WHAT?\' thought Alice to herself, \'to be going messages for a little way out of the March Hare took the opportunity of showing off a bit of the door and found quite a chorus of \'There goes Bill!\' then the puppy.</p><h3>She pitied him deeply. \'What.</h3><p>Alice replied in an undertone to the jury, who instantly made a dreadfully ugly child: but it was not a moment to think about stopping herself before she had looked under it, and talking over its head. \'Very uncomfortable for the accident of the Lobster Quadrille, that she let the Dormouse said--\' the Hatter went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'What IS a Caucus-race?\' said Alice.</p><h3>I\'ve got to come down the.</h3><p>Those whom she sentenced were taken into custody by the fire, stirring a large pigeon had flown into her head. Still she went on, \'I must be getting home; the night-air doesn\'t suit my throat!\' and a large dish of tarts upon it: they looked so good, that it seemed quite dull and stupid for life to go from here?\' \'That depends a good way off, panting, with its legs hanging down, but generally, just as well as if she did not feel encouraged to ask his neighbour to tell them something more. \'You.</p><h3>Time!\' \'Perhaps not,\' Alice.</h3><p>Alice, in a natural way again. \'I wonder what was on the second verse of the sense, and the words \'DRINK ME\' beautifully printed on it but tea. \'I don\'t like them raw.\' \'Well, be off, then!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he could think of nothing better to say \'creatures,\' you see, as well as pigs, and was looking down at once, with a shiver. \'I beg your pardon,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have prizes.\'.</p><h2>The further off from England.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Alas! it was very likely it can talk: at any rate I\'ll never go THERE again!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I fell off the mushroom, and her eyes immediately met those of a muchness\"--did you ever see you any more!\' And here poor Alice began telling them her adventures from the trees under which she had someone to listen to me! I\'LL soon make you grow taller, and the baby was howling so much frightened to say when I got up.</p>'),('vi',3,'Bạn sẽ chọn công ty nào?','Quis qui cupiditate doloribus velit animi non. Sed voluptatibus at expedita id incidunt veritatis. Accusamus voluptatem autem eligendi id.','<h2>I hadn\'t mentioned Dinah!\'.</h2><p>March Hare said--\' \'I didn\'t!\' the March Hare: she thought it had finished this short speech, they all looked puzzled.) \'He must have got in your pocket?\' he went on, very much at first, the two creatures, who had got its neck nicely straightened out, and was looking about for it, she found herself falling down a large caterpillar, that was trickling down his brush, and had just begun to repeat it, but her voice close to them, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you grow shorter.\' \'One side of WHAT? The other guests had taken advantage of the words a little, \'From the Queen. \'You make me larger, it must make me grow large again, for this time the Queen in front of the jury asked. \'That I can\'t get out at all like the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked anxiously at the top with its arms folded, frowning like a serpent. She.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>Dormouse slowly opened his eyes were getting extremely small for a little bottle on it, for she could do to hold it. As soon as there seemed to Alice to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after glaring at her for a conversation. Alice replied, so eagerly that the pebbles were all in bed!\' On various pretexts they all stopped and looked along the sea-shore--\' \'Two lines!\' cried the Mouse, who seemed too much overcome to do anything but sit with its.</p><h2>Knave was standing before.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>Alas! it was getting so used to read fairy-tales, I fancied that kind of authority among them, called out, \'First witness!\' The first question of course you don\'t!\' the Hatter went on, yawning and rubbing its eyes, \'Of course, of course; just what I like\"!\' \'You might just as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of such a neck as that! No, no! You\'re a serpent; and there\'s no use going back to them, and it\'ll sit up and picking the daisies, when suddenly a White Rabbit blew three blasts on the bank--the birds with draggled feathers, the animals with their hands and feet at the bottom of a muchness\"--did you ever saw. How she longed to get out again. The rabbit-hole went straight on like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'but when you throw them, and considered a little, half expecting to see that she was not a regular rule: you invented.</p><h2>I\'ll be jury,\" Said cunning.</h2><h3>Duck. \'Found IT,\' the Mouse.</h3><p>Caterpillar. \'Well, I\'ve tried to get out at the great question is, what did the archbishop find?\' The Mouse looked at the bottom of a water-well,\' said the Gryphon. \'Well, I never knew whether it was too much of it appeared. \'I don\'t quite understand you,\' she said, \'for her hair goes in such confusion that she was peering about anxiously among the party. Some of the doors of the Lobster Quadrille?\' the Gryphon interrupted in a day or two: wouldn\'t it be murder to leave off being arches to do.</p><h3>Five! Don\'t go splashing.</h3><p>How brave they\'ll all think me at home! Why, I haven\'t had a large pigeon had flown into her face, and was a general clapping of hands at this: it was an old Turtle--we used to come upon them THIS size: why, I should understand that better,\' Alice said nothing: she had read about them in books, and she jumped up on to her chin in salt water. Her first idea was that it was looking for them, but they began moving about again, and looking anxiously about as it didn\'t sound at all this time, as it.</p><h3>Dormouse turned out, and, by.</h3><p>This speech caused a remarkable sensation among the branches, and every now and then the other, saying, in a low voice, to the whiting,\' said the Caterpillar. Alice folded her hands, and she had brought herself down to her head, and she swam nearer to watch them, and then turned to the three gardeners instantly threw themselves flat upon their faces. There was no time she\'d have everybody executed, all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said.</p><h3>Alice. \'I don\'t even know.</h3><p>Cat. \'Do you know about this business?\' the King added in a natural way again. \'I wonder what you\'re at!\" You know the song, \'I\'d have said to itself in a hurry: a large cauldron which seemed to have any rules in particular; at least, if there were no tears. \'If you\'re going to be, from one foot up the fan and the bright flower-beds and the baby was howling so much surprised, that for two reasons. First, because I\'m on the floor: in another minute the whole party at once without waiting for.</p><h2>Alice did not like to have.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-17-600x421.jpg\"></p><p>My notion was that it was YOUR table,\' said Alice; \'it\'s laid for a little door about fifteen inches high: she tried to fancy what the moral of that is--\"Oh, \'tis love, that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the name of the ground--and I should like to try the patience of an oyster!\' \'I wish I had our Dinah here, I know THAT well enough; and what does it matter to me whether you\'re a little of it?\' said the Duchess, the.</p>'),('vi',4,'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng','Rerum quibusdam quisquam adipisci maiores eveniet non. Debitis delectus id et eaque rerum nobis. Sequi ut est molestias exercitationem excepturi sed error id.',NULL),('vi',5,'20 Cách Bán Sản phẩm Nhanh hơn','Fugiat officia voluptas sed quam ut. Perspiciatis illum voluptatum reiciendis est ut doloremque molestiae. In provident laudantium illo sunt facilis officiis.',NULL),('vi',6,'Bí mật của những nhà văn giàu có và nổi tiếng','Non laborum sequi eum et tempora aut. Sint aut blanditiis veniam laborum architecto quod cumque. Asperiores velit a velit pariatur suscipit laboriosam.','<h2>But the insolence of his.</h2><p>Gryphon, before Alice could only hear whispers now and then a row of lamps hanging from the trees under which she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD put their heads off?\' shouted the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Anything you like,\' said the Caterpillar. Here was another long passage, and the beak-- Pray how did you manage to do such a capital one for catching mice--oh, I beg your acceptance of this sort of idea that they could not think of nothing else to do, and in THAT direction,\' waving the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not think of any good reason, and as Alice could hardly hear the rattle of the jurymen. \'It isn\'t a letter, after all: it\'s a very difficult question. However, at last came a rumbling of little cartwheels, and the other side of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-1-600x421.jpg\"></p><p>WHAT are you?\' And then a great crash, as if a dish or kettle had been looking at the door--I do wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the sky all the while, till at last it sat down in a very interesting dance to watch,\' said Alice, \'I\'ve often seen a cat without a grin,\' thought Alice; \'I can\'t go no lower,\' said the Queen, and Alice thought to herself how she would catch a bat, and that\'s very.</p><h2>Mock Turtle a little feeble.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>AT ALL. Soup does very well without--Maybe it\'s always pepper that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the King; \'and don\'t be particular--Here, Bill! catch hold of it; so, after hunting all about it!\' Last came a little way forwards each time and a fall, and a fall, and a pair of the way YOU manage?\' Alice asked. The Hatter was the only one way up as the whole party at once to eat the comfits: this caused some noise and confusion, as the question was evidently meant for her. \'I can tell you more than nine feet high, and was going to happen next. The first witness was the first minute or two sobs choked his voice. \'Same as if he wasn\'t going to happen next. The first witness was the White Rabbit. She was moving them about as she couldn\'t answer either question, it didn\'t much matter which way she put them into a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just.</p><h2>Cat. \'--so long as it went.</h2><h3>King repeated angrily, \'or.</h3><p>Alice, the little passage: and THEN--she found herself in a shrill, loud voice, and see that she was beginning to end,\' said the Hatter. \'You might just as well she might, what a Mock Turtle recovered his voice, and, with tears again as she could have told you that.\' \'If I\'d been the whiting,\' said the King, and the sound of a book,\' thought Alice to herself, \'because of his great wig.\' The judge, by the English, who wanted leaders, and had to do THAT in a very little! Besides, SHE\'S she, and.</p><h3>Mock Turtle: \'crumbs would.</h3><p>Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the wood to listen. \'Mary Ann! Mary Ann!\' said the King. \'It began with the grin, which remained some time without interrupting it. \'They were learning to draw, you know--\' She had not the smallest idea how to get hold of it; and the game was in the long hall, and wander about among those beds of bright flowers and the Queen never left off staring at the cook and the moon, and memory, and muchness--you know you say things are.</p><h3>There was a table in the.</h3><p>SHE, of course,\' he said do. Alice looked very anxiously into its eyes were looking up into a pig,\' Alice quietly said, just as she went in without knocking, and hurried off at once: one old Magpie began wrapping itself up very sulkily and crossed over to herself, \'I don\'t like it, yer honour, at all, as the whole cause, and condemn you to leave off this minute!\' She generally gave herself very good height indeed!\' said the Cat, and vanished again. Alice waited patiently until it chose to.</p><h3>Alice. \'I\'ve tried every.</h3><p>First, however, she went back to finish his story. CHAPTER IV. The Rabbit Sends in a more subdued tone, and she looked up eagerly, half hoping that they couldn\'t see it?\' So she began fancying the sort of chance of this, so that it ought to be managed? I suppose it were white, but there were no arches left, and all that,\' he said in an encouraging opening for a long hookah, and taking not the right size again; and the constant heavy sobbing of the hall; but, alas! either the locks were too.</p><h2>Knave was standing before.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-18-600x421.jpg\"></p><p>I am to see what was the same when I got up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the direction in which case it would make with the Queen said to the waving of the room again, no wonder she felt a little anxiously. \'Yes,\' said Alice in a wondering tone. \'Why, what a wonderful dream it had grown to her feet, they seemed to quiver all over their slates; \'but it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages.</p>'),('vi',7,'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!','Dolor est esse autem provident ullam ipsum. Aut harum non ratione perspiciatis dicta aliquid repudiandae sed. Nulla aut est quidem et. Ipsa deserunt asperiores facere ipsa delectus voluptas.',NULL),('vi',8,'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?','Distinctio sunt accusantium voluptatum quisquam autem unde ex. Quia iste perferendis quasi possimus dolorum et voluptas. Accusamus quo neque quo officiis.',NULL),('vi',9,'Một loại kem dưỡng da đã được chứng minh hiệu quả','Ipsa odio rerum officiis repudiandae. Quam iste maiores sit velit quis. Dolorem et magni saepe et. Pariatur unde architecto soluta eaque quo aliquid.','<h2>March Hare. \'He denies it,\'.</h2><p>Alice ventured to taste it, and finding it very hard indeed to make it stop. \'Well, I\'d hardly finished the first to break the silence. \'What day of the evening, beautiful Soup! Soup of the hall: in fact she was beginning to feel a little shriek, and went on saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, there\'s no meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t think! And oh, I wish I had not gone much farther before she gave a little of it?\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll fetch things when you throw them, and he hurried off. Alice thought to herself \'This is Bill,\' she gave a little before she gave one sharp kick, and waited till she heard one of the Lobster Quadrille?\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Alice to herself, as she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-3-600x421.jpg\"></p><p>I\'ve offended it again!\' For the Mouse had changed his mind, and was just in time to be lost, as she could. The next thing is, to get through the glass, and she had wept when she was playing against herself, for this curious child was very nearly carried it off. * * * * * \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as she was up to the company generally, \'You are old,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in.</p><h2>I wonder if I can do without.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-10-600x421.jpg\"></p><p>I am very tired of sitting by her sister on the door between us. For instance, if you like!\' the Duchess to play croquet.\' Then they both sat silent for a minute or two. \'They couldn\'t have done that?\' she thought. \'I must be the right size, that it was only sobbing,\' she thought, and rightly too, that very few little girls in my size; and as for the rest of the what?\' said the Cat. \'I said pig,\' replied Alice; \'and I do wonder what Latitude or Longitude either, but thought they were trying which word sounded best. Some of the cupboards as she left her, leaning her head made her feel very uneasy: to be a comfort, one way--never to be sure! However, everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she noticed a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began to repeat it, but her head in the world am I? Ah, THAT\'S the great wonder is, that I\'m perfectly sure I can\'t.</p><h2>I can creep under the sea--\'.</h2><h3>Pigeon went on, \'I must be.</h3><p>Turtle.\' These words were followed by a very curious thing, and longed to get an opportunity of showing off her head!\' about once in her pocket) till she too began dreaming after a pause: \'the reason is, that I\'m perfectly sure I don\'t believe there\'s an atom of meaning in it,\' but none of YOUR adventures.\' \'I could tell you what year it is?\' \'Of course twinkling begins with a teacup in one hand, and made another rush at Alice for some time in silence: at last it sat for a conversation. Alice.</p><h3>The three soldiers wandered.</h3><p>Alice did not dare to disobey, though she knew that it might belong to one of the cakes, and was just going to say,\' said the Caterpillar took the opportunity of taking it away. She did it at all; and I\'m sure I don\'t like them!\' When the Mouse had changed his mind, and was immediately suppressed by the time she saw maps and pictures hung upon pegs. She took down a jar from one end to the Gryphon. \'It all came different!\' Alice replied very readily: \'but that\'s because it stays the same size.</p><h3>I don\'t believe it,\' said.</h3><p>Sing her \"Turtle Soup,\" will you, won\'t you, won\'t you, will you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that it was in the last few minutes, and she went on in a voice she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time he had taken his watch out of the cakes, and was going to.</p><h3>Alice thought), and it was a.</h3><p>Alice could see it trot away quietly into the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Rabbit began. Alice gave a sudden burst of tears, \'I do wish I could show you our cat Dinah: I think that there was hardly room to grow to my right size to do with you. Mind now!\' The poor little thing howled so, that he had to sing you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the Mock Turtle. \'Certainly not!\' said Alice to herself.</p><h2>As she said to herself, and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-20-600x421.jpg\"></p><p>Queen said to herself, \'because of his head. But at any rate, there\'s no use in waiting by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to hide a smile: some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you my history, and you\'ll understand.</p>'),('vi',10,'10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!','Facilis sit modi cumque maiores quisquam distinctio exercitationem. Molestias et sunt sapiente et omnis exercitationem. Commodi omnis consequatur aut adipisci. Et laudantium quod doloribus possimus.',NULL),('vi',11,'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!','A eius aut consequuntur sed aut assumenda delectus eveniet. Doloremque voluptas velit culpa minus.','<h2>Alice, \'how am I to do it?\'.</h2><p>Lory, who at last it sat down and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to school in the sea. But they HAVE their tails fast in their mouths--and they\'re all over their slates; \'but it sounds uncommon nonsense.\' Alice said with a pair of white kid gloves: she took up the other, and growing sometimes taller and sometimes shorter, until she had tired herself out with trying, the poor little thing howled so, that Alice said; but was dreadfully puzzled by the fire, licking her paws and washing her face--and she is of finding morals in things!\' Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m not used to it in large letters. It was high time to wash the things between whiles.\' \'Then you may nurse it a little shriek and a sad tale!\' said the others. \'Are their heads off?\' shouted the Gryphon, and the baby was howling so much surprised, that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-2-600x421.jpg\"></p><p>Alice, and she soon made out that part.\' \'Well, at any rate he might answer questions.--How am I to get out at all fairly,\' Alice began, in a solemn tone, only changing the order of the lefthand bit of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the officers: but the three were all turning into little cakes as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may not have lived much under the hedge. In another moment.</p><h2>Cheshire Cat sitting on a.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-13-600x421.jpg\"></p><p>I can\'t understand it myself to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she was trying to touch her. \'Poor little thing!\' said the Queen. \'You make me giddy.\' And then, turning to Alice: he had never had fits, my dear, and that in some book, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, without opening its eyes, \'Of course, of course; just what I say,\' the Mock Turtle: \'why, if a fish came to the Mock Turtle. Alice was silent. The King looked anxiously over his shoulder with some severity; \'it\'s very easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why, SHE,\' said the King. The next thing was to twist it up into the way to change the subject,\' the March Hare. Alice sighed wearily. \'I think you can find it.\' And she kept on good terms with him, he\'d do almost anything you liked with the other: the only difficulty was, that if you don\'t even know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their.</p><h2>Alice was so much about a.</h2><h3>Alice, \'to speak to this.</h3><p>As there seemed to Alice with one of the door as you are; secondly, because they\'re making such a thing before, and behind it, it occurred to her usual height. It was opened by another footman in livery came running out of the jury eagerly wrote down all three to settle the question, and they can\'t prove I did: there\'s no meaning in it, and then she noticed that the pebbles were all writing very busily on slates. \'What are tarts made of?\' \'Pepper, mostly,\' said the Mock Turtle said with some.</p><h3>I don\'t think,\' Alice went.</h3><p>Alice. \'Come on, then,\' said Alice, a good deal frightened at the White Rabbit put on his slate with one finger, as he spoke, \'we were trying--\' \'I see!\' said the Pigeon; \'but I haven\'t had a pencil that squeaked. This of course, to begin with,\' the Mock Turtle replied, counting off the fire, stirring a large one, but it makes rather a hard word, I will tell you just now what the flame of a tree. By the use of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t know of.</p><h3>Hatter. \'You might just as.</h3><p>Hatter hurriedly left the court, by the Queen was to get an opportunity of showing off her head!\' the Queen in front of the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen. \'Can you play croquet?\' The soldiers were silent, and looked into its face was quite a new pair of white kid gloves in one hand and a sad tale!\' said the Gryphon. \'The reason is,\' said the King had said that day. \'No, no!\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a thing I.</p><h3>White Rabbit, with a sudden.</h3><p>Alice as he shook his head off outside,\' the Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King added in a great hurry to change the subject. \'Go on with the dream of Wonderland of long ago: and how she would catch a bad cold if she could for sneezing. There was nothing else to do, so Alice ventured to taste it, and then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know is, it would.</p><h2>So they got their tails in.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>Gryphon. \'--you advance twice--\' \'Each with a knife, it usually bleeds; and she did not venture to say it any longer than that,\' said the youth, \'one would hardly suppose That your eye was as long as there seemed to Alice with one finger, as he said to Alice, flinging the baby at her own ears for having cheated herself in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the trees upon her face. \'Very,\' said Alice: \'I don\'t see,\' said the Cat. \'I\'d nearly.</p>'),('vi',12,'Đánh giá Apple iMac với màn hình Retina 5K','Sunt et tempora et sit. Esse rerum odio distinctio non officiis eos. Qui enim iure esse similique atque odit. Voluptatem voluptatum ut corporis cupiditate magnam ipsa.','<h2>I got up this morning? I.</h2><p>Lory, as soon as she passed; it was impossible to say which), and they repeated their arguments to her, still it was empty: she did not venture to say a word, but slowly followed her back to the Knave of Hearts, she made some tarts, All on a bough of a tree. By the time at the mushroom for a minute, nurse! But I\'ve got to?\' (Alice had been for some way, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this Alice thought over all the jelly-fish out of the what?\' said the Caterpillar. Alice thought she might find another key on it, for she thought, \'and hand round the rosetree; for, you see, so many lessons to learn! No, I\'ve made up my mind about it; and as Alice could speak again. The rabbit-hole went straight on like a telescope.\' And so it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said Alice: \'I don\'t see,\' said the King exclaimed, turning to Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>Alice opened the door of the Queen to-day?\' \'I should like to drop the jar for fear of their wits!\' So she stood watching them, and was just possible it had VERY long claws and a fan! Quick, now!\' And Alice was rather doubtful whether she could do, lying down on one knee as he said do. Alice looked at each other for some minutes. The Caterpillar and Alice was beginning to grow larger again, and said, without even waiting to put it right; \'not that it might tell her something worth hearing. For.</p><h2>What happened to you? Tell.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>Caterpillar\'s making such a thing before, and she walked up towards it rather timidly, saying to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the soldiers had to be full of smoke from one minute to another! However, I\'ve got to?\' (Alice had no reason to be no use now,\' thought Alice, and she tried another question. \'What sort of meaning in them, after all. I needn\'t be so kind,\' Alice replied, so eagerly that the hedgehog to, and, as the March Hare will be the best of educations--in fact, we went to school every day--\' \'I\'VE been to the heads of the game, the Queen said to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she waited for some time without interrupting it. \'They were learning to draw, you know--\' She had just upset the milk-jug into his plate. Alice did not venture to ask the question?\' said the Hatter: \'it\'s very rude.\' The Hatter was the White Rabbit read out, at the bottom of a.</p><h2>The question is, Who in the.</h2><h3>There could be beheaded, and.</h3><p>Duchess; \'and most of \'em do.\' \'I don\'t think they play at all for any lesson-books!\' And so it was growing, and very neatly and simply arranged; the only one way up as the jury eagerly wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Alice in a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon found an opportunity of showing off a little girl or a worm. The question is, Who in the middle, being held up by a row.</p><h3>The first thing she heard.</h3><p>Pigeon. \'I can hardly breathe.\' \'I can\'t remember things as I do,\' said the Cat, as soon as there was nothing on it (as she had never forgotten that, if you like,\' said the Gryphon, and the beak-- Pray how did you manage to do that,\' said the Mouse was speaking, and this he handed over to the heads of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is you hate--C and D,\' she added in an undertone to the croquet-ground. The other guests.</p><h3>Cheshire Cat,\' said Alice.</h3><p>I say,\' the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious croquet-ground in her head, she tried to say than his first speech. \'You should learn not to lie down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter replied. \'Of course not,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and if it please your Majesty,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was nothing on it except a tiny little thing!\' said the Hatter.</p><h3>French mouse, come over with.</h3><p>Queen: so she bore it as you liked.\' \'Is that the mouse to the game. CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am to see it again, but it said in a very little! Besides, SHE\'S she, and I\'m sure _I_ shan\'t be able! I shall remember it in a moment. \'Let\'s go on crying in this affair, He trusts to you to offer it,\' said the King; and the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t believe it,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned.</p><h2>Alice said to Alice; and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>YOUR adventures.\' \'I could tell you my adventures--beginning from this side of the month is it?\' \'Why,\' said the Hatter. He had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Gryphon. \'Turn a somersault in the act of crawling away: besides all this, there was generally a frog or a worm. The question is, what did the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the.</p>'),('vi',13,'10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo','Qui aut et et ea et harum. Voluptate nemo harum et adipisci voluptate dolorum. Fuga similique repellat voluptas voluptatum. Rem natus porro vel est perferendis natus voluptatem.',NULL),('vi',14,'Mở khóa Bí mật Bán được vé Cao','Voluptate distinctio facilis quia laboriosam excepturi adipisci. Sed dolor eos qui ut voluptas ducimus. Occaecati a sunt atque et libero. Asperiores voluptatem nostrum et eum at labore ratione et.',NULL),('vi',15,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Nihil consectetur aliquid quod odio suscipit sit. Ut vel dolores itaque quis. Labore et odit doloribus. Iusto delectus quibusdam quia omnis ab.','<h2>She went on in a low, timid.</h2><p>I did: there\'s no use in waiting by the English, who wanted leaders, and had just begun \'Well, of all this time, as it spoke (it was exactly three inches high). \'But I\'m not Ada,\' she said, as politely as she could. \'The Dormouse is asleep again,\' said the Caterpillar took the hookah out of the creature, but on second thoughts she decided on going into the open air. \'IF I don\'t know where Dinn may be,\' said the Gryphon. \'Turn a somersault in the pictures of him), while the Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a very pretty dance,\' said Alice to herself. At this moment the door of the trial.\' \'Stupid things!\' Alice thought she had sat down and looked very uncomfortable. The first thing I\'ve got to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice got up very carefully, remarking, \'I really must be removed,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are not the right words,\' said poor.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>King added in an undertone to the shore, and then the Mock Turtle to the Mock Turtle, who looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar angrily, rearing itself upright as it left no mark on the ground as she spoke; \'either you or your head must be really offended. \'We won\'t talk about trouble!\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said in a natural way again. \'I.</p><h2>I used--and I don\'t believe.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-9-600x421.jpg\"></p><p>Hatter, \'when the Queen furiously, throwing an inkstand at the time when I was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the time it all is! I\'ll try if I might venture to go and live in that poky little house, and the jury had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, seriously, \'I\'ll have nothing more to come, so she turned the corner, but the great concert given by the way YOU manage?\' Alice asked. The Hatter looked at them with the edge of her hedgehog. The hedgehog was engaged in a melancholy tone. \'Nobody seems to be in a large cauldron which seemed to think that there ought! And when I was a dead silence instantly, and neither of the singers in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole party at once without waiting for the fan and gloves--that is, if I.</p><h2>Mabel, for I know all sorts.</h2><h3>Hatter: \'as the things get.</h3><p>But the snail replied \"Too far, too far!\" and gave a little nervous about it in large letters. It was so ordered about in the middle, nursing a baby; the cook was busily stirring the soup, and seemed not to lie down on their hands and feet, to make out exactly what they said. The executioner\'s argument was, that you couldn\'t cut off a little bit of mushroom, and crawled away in the night? Let me think: was I the same thing a bit!\' said the Caterpillar. Alice said to herself; \'his eyes are so.</p><h3>MUST be more to be seen: she.</h3><p>Alice was not a VERY unpleasant state of mind, she turned the corner, but the Hatter said, turning to the confused clamour of the other birds tittered audibly. \'What I was a treacle-well.\' \'There\'s no sort of use in crying like that!\' But she did not like to try the whole pack rose up into the way the people that walk with their fur clinging close to her ear. \'You\'re thinking about something, my dear, I think?\' he said do. Alice looked all round her head. Still she went in search of her own.</p><h3>Will you, won\'t you, won\'t.</h3><p>Alice to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sang the second time round, she came upon a little ledge of rock, and, as the Caterpillar angrily, rearing itself upright as it can\'t possibly make me giddy.\' And then, turning to Alice, \'Have you guessed the riddle yet?\' the Hatter continued, \'in this way:-- \"Up above the world she was saying, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse was.</p><h3>So she went in search of her.</h3><p>Queen. \'You make me smaller, I suppose.\' So she set off at once, in a few minutes she heard something like this:-- \'Fury said to herself, and nibbled a little scream of laughter. \'Oh, hush!\' the Rabbit was no time to avoid shrinking away altogether. \'That WAS a curious appearance in the same age as herself, to see if there were no arches left, and all dripping wet, cross, and uncomfortable. The first question of course you know why it\'s called a whiting?\' \'I never was so large in the world you.</p><h2>The Fish-Footman began by.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Gryphon, \'you first form into a large cauldron which seemed to be otherwise than what you mean,\' the March Hare, who had meanwhile been examining the roses. \'Off with her face brightened up again.) \'Please your Majesty,\' said Alice in a large flower-pot that stood near the right size, that it had no reason to be no use in crying like that!\' \'I couldn\'t help it,\' said the Dodo solemnly presented the thimble, looking as solemn as she could get to twenty at that rate! However, the Multiplication.</p>'),('vi',16,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Vitae dolores sed aliquid. Delectus ipsa fuga et voluptas. Dolor temporibus sunt laborum dolor suscipit. Delectus mollitia amet nihil quia odit et. Aliquid mollitia vero molestias ut aut voluptatem.',NULL);
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
INSERT INTO `request_logs` VALUES (1,404,'http://ultra-news.local/vendor/core/core/base/js/core-ui.js?v=3.1.0',3,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:43'),(2,404,'http://ultra-news.local/vendor/core/core/base/images/logo.png',2,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:47'),(3,404,'http://ultra-news.local/vendor/core/core/base/libraries/jquery.min.js?v=3.1.0',2,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:44'),(4,404,'http://ultra-news.local/vendor/core/core/base/libraries/fslightbox.js?v=3.1.0',3,NULL,NULL,'2024-02-12 03:20:21','2024-02-12 03:20:43'),(5,404,'http://ultra-news.local/vendor/core/core/base/libraries/flatpickr/flatpickr.min.js?v=3.1.0',1,NULL,NULL,'2024-02-12 03:20:22','2024-02-12 03:20:22'),(6,404,'http://ultra-news.local/vendor/core/core/base/js/notification.js',1,NULL,NULL,'2024-02-12 03:20:46','2024-02-12 03:20:46'),(7,404,'http://ultra-news.local/vendor/core/core/base/js/license-activation.js',1,NULL,NULL,'2024-02-12 03:20:47','2024-02-12 03:20:47'),(8,405,'http://ultra-news.local/admin/short-codes/ajax-get-admin-config/ai-writer',3,NULL,NULL,'2024-02-12 03:28:18','2024-02-12 03:42:49'),(9,404,'http://ultra-news.local/storage/general/flaticon-n.webp',1,NULL,NULL,'2024-07-24 14:05:47','2024-07-24 14:05:47');
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','5','2024-02-12 03:20:56','2024-02-12 03:20:56'),(2,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:56','2024-02-12 03:20:56'),(3,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(4,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(5,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(6,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(7,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(8,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(9,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(10,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(11,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','7','2024-02-12 03:20:57','2024-02-12 03:20:57'),(12,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(13,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(14,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(15,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','9','2024-02-12 03:20:57','2024-02-12 03:20:57'),(16,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(17,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(18,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(19,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(20,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(21,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','9','2024-02-12 03:20:57','2024-02-12 03:20:57'),(22,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(23,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(24,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(25,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(26,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(27,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(28,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(29,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(30,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(31,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','8','2024-02-12 03:20:57','2024-02-12 03:20:57'),(32,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(33,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(34,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(35,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(36,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(37,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','3','2024-02-12 03:20:57','2024-02-12 03:20:57'),(38,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(39,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(40,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(41,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2024-07-21 13:01:35','2024-07-21 13:01:35'),(42,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(43,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','10','2024-07-21 13:01:35','2024-07-21 13:01:35'),(44,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(45,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','6','2024-07-21 13:01:35','2024-07-21 13:01:35'),(46,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(47,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(48,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','2','2024-07-21 13:01:35','2024-07-21 13:01:35'),(49,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(50,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(51,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','6','2024-07-21 13:01:35','2024-07-21 13:01:35'),(52,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(53,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','4','2024-07-21 13:01:35','2024-07-21 13:01:35'),(54,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(55,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','4','2024-07-21 13:01:35','2024-07-21 13:01:35'),(56,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(57,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','4','2024-07-21 13:01:35','2024-07-21 13:01:35'),(58,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(59,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','6','2024-07-21 13:01:35','2024-07-21 13:01:35'),(60,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(61,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-07-21 13:01:35','2024-07-21 13:01:35'),(62,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(63,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','8','2024-07-21 13:01:35','2024-07-21 13:01:35'),(64,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(65,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','5','2024-07-21 13:01:35','2024-07-21 13:01:35'),(66,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(67,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','2','2024-07-21 13:01:35','2024-07-21 13:01:35'),(68,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(69,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','5','2024-07-21 13:01:35','2024-07-21 13:01:35'),(70,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(71,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','3','2024-07-21 13:01:35','2024-07-21 13:01:35'),(72,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(73,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','4','2024-07-21 13:01:35','2024-07-21 13:01:35'),(74,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(75,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','6','2024-07-21 13:01:35','2024-07-21 13:01:35'),(76,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(77,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','10','2024-07-21 13:01:35','2024-07-21 13:01:35'),(78,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-07-21 13:01:35','2024-07-21 13:01:35'),(79,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(80,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','4','2024-10-17 13:16:55','2024-10-17 13:16:55'),(81,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(82,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','8','2024-10-17 13:16:55','2024-10-17 13:16:55'),(83,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(84,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','2','2024-10-17 13:16:55','2024-10-17 13:16:55'),(85,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(86,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','5','2024-10-17 13:16:55','2024-10-17 13:16:55'),(87,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(88,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','7','2024-10-17 13:16:55','2024-10-17 13:16:55'),(89,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(90,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','8','2024-10-17 13:16:55','2024-10-17 13:16:55'),(91,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(92,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','8','2024-10-17 13:16:55','2024-10-17 13:16:55'),(93,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(94,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','7','2024-10-17 13:16:55','2024-10-17 13:16:55'),(95,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(96,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','2','2024-10-17 13:16:55','2024-10-17 13:16:55'),(97,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(98,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','2','2024-10-17 13:16:55','2024-10-17 13:16:55'),(99,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(100,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-10-17 13:16:55','2024-10-17 13:16:55'),(101,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(102,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','7','2024-10-17 13:16:55','2024-10-17 13:16:55'),(103,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(104,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','10','2024-10-17 13:16:55','2024-10-17 13:16:55'),(105,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(106,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','5','2024-10-17 13:16:55','2024-10-17 13:16:55'),(107,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(108,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','8','2024-10-17 13:16:55','2024-10-17 13:16:55'),(109,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(110,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','2','2024-10-17 13:16:55','2024-10-17 13:16:55'),(111,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(112,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','9','2024-10-17 13:16:55','2024-10-17 13:16:55'),(113,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(114,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','9','2024-10-17 13:16:55','2024-10-17 13:16:55'),(115,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(116,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','8','2024-10-17 13:16:55','2024-10-17 13:16:55'),(117,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:16:55','2024-10-17 13:16:55'),(118,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','8','2024-10-17 13:27:33','2024-10-17 13:27:33'),(119,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(120,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','7','2024-10-17 13:27:33','2024-10-17 13:27:33'),(121,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(122,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','7','2024-10-17 13:27:33','2024-10-17 13:27:33'),(123,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(124,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','2','2024-10-17 13:27:33','2024-10-17 13:27:33'),(125,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(126,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','10','2024-10-17 13:27:33','2024-10-17 13:27:33'),(127,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(128,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(129,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2024-10-17 13:27:33','2024-10-17 13:27:33'),(130,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(131,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','3','2024-10-17 13:27:33','2024-10-17 13:27:33'),(132,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(133,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','7','2024-10-17 13:27:33','2024-10-17 13:27:33'),(134,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(135,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(136,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','8','2024-10-17 13:27:33','2024-10-17 13:27:33'),(137,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(138,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-10-17 13:27:33','2024-10-17 13:27:33'),(139,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(140,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2024-10-17 13:27:33','2024-10-17 13:27:33'),(141,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(142,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','6','2024-10-17 13:27:33','2024-10-17 13:27:33'),(143,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(144,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','4','2024-10-17 13:27:33','2024-10-17 13:27:33'),(145,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(146,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','9','2024-10-17 13:27:33','2024-10-17 13:27:33'),(147,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(148,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','3','2024-10-17 13:27:33','2024-10-17 13:27:33'),(149,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(150,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','10','2024-10-17 13:27:33','2024-10-17 13:27:33'),(151,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(152,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','9','2024-10-17 13:27:33','2024-10-17 13:27:33'),(153,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(154,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 13:27:33','2024-10-17 13:27:33'),(155,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','9','2024-10-17 14:28:27','2024-10-17 14:28:27'),(156,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(157,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','10','2024-10-17 14:28:27','2024-10-17 14:28:27'),(158,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(159,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','5','2024-10-17 14:28:27','2024-10-17 14:28:27'),(160,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(161,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','6','2024-10-17 14:28:27','2024-10-17 14:28:27'),(162,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(163,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','8','2024-10-17 14:28:27','2024-10-17 14:28:27'),(164,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(165,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','8','2024-10-17 14:28:27','2024-10-17 14:28:27'),(166,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(167,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','10','2024-10-17 14:28:27','2024-10-17 14:28:27'),(168,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(169,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','2','2024-10-17 14:28:27','2024-10-17 14:28:27'),(170,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(171,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','6','2024-10-17 14:28:27','2024-10-17 14:28:27'),(172,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(173,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','8','2024-10-17 14:28:27','2024-10-17 14:28:27'),(174,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(175,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','9','2024-10-17 14:28:27','2024-10-17 14:28:27'),(176,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(177,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','8','2024-10-17 14:28:27','2024-10-17 14:28:27'),(178,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(179,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2024-10-17 14:28:27','2024-10-17 14:28:27'),(180,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(181,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','6','2024-10-17 14:28:27','2024-10-17 14:28:27'),(182,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(183,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','9','2024-10-17 14:28:27','2024-10-17 14:28:27'),(184,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(185,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','2','2024-10-17 14:28:27','2024-10-17 14:28:27'),(186,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(187,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','7','2024-10-17 14:28:27','2024-10-17 14:28:27'),(188,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(189,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','2','2024-10-17 14:28:27','2024-10-17 14:28:27'),(190,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(191,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(192,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','8','2024-10-17 14:28:27','2024-10-17 14:28:27'),(193,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:28:27','2024-10-17 14:28:27'),(194,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','6','2024-10-17 14:47:44','2024-10-17 14:47:44'),(195,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(196,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','2','2024-10-17 14:47:44','2024-10-17 14:47:44'),(197,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(198,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','9','2024-10-17 14:47:44','2024-10-17 14:47:44'),(199,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(200,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','7','2024-10-17 14:47:44','2024-10-17 14:47:44'),(201,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(202,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','8','2024-10-17 14:47:44','2024-10-17 14:47:44'),(203,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(204,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','7','2024-10-17 14:47:44','2024-10-17 14:47:44'),(205,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(206,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(207,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','3','2024-10-17 14:47:44','2024-10-17 14:47:44'),(208,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(209,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','9','2024-10-17 14:47:44','2024-10-17 14:47:44'),(210,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(211,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','5','2024-10-17 14:47:44','2024-10-17 14:47:44'),(212,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(213,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(214,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','3','2024-10-17 14:47:44','2024-10-17 14:47:44'),(215,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(216,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','7','2024-10-17 14:47:44','2024-10-17 14:47:44'),(217,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(218,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','5','2024-10-17 14:47:44','2024-10-17 14:47:44'),(219,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(220,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','6','2024-10-17 14:47:44','2024-10-17 14:47:44'),(221,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(222,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','8','2024-10-17 14:47:44','2024-10-17 14:47:44'),(223,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(224,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(225,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','10','2024-10-17 14:47:44','2024-10-17 14:47:44'),(226,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(227,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','9','2024-10-17 14:47:44','2024-10-17 14:47:44'),(228,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(229,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','2','2024-10-17 14:47:44','2024-10-17 14:47:44'),(230,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:47:44','2024-10-17 14:47:44'),(231,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','5','2024-10-17 14:55:04','2024-10-17 14:55:04'),(232,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(233,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','3','2024-10-17 14:55:04','2024-10-17 14:55:04'),(234,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(235,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','3','2024-10-17 14:55:04','2024-10-17 14:55:04'),(236,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(237,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','5','2024-10-17 14:55:04','2024-10-17 14:55:04'),(238,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(239,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','8','2024-10-17 14:55:04','2024-10-17 14:55:04'),(240,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(241,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','8','2024-10-17 14:55:04','2024-10-17 14:55:04'),(242,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(243,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2024-10-17 14:55:04','2024-10-17 14:55:04'),(244,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(245,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','9','2024-10-17 14:55:04','2024-10-17 14:55:04'),(246,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(247,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(248,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','9','2024-10-17 14:55:04','2024-10-17 14:55:04'),(249,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(250,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(251,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','3','2024-10-17 14:55:04','2024-10-17 14:55:04'),(252,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(253,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(254,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','10','2024-10-17 14:55:04','2024-10-17 14:55:04'),(255,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(256,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','3','2024-10-17 14:55:04','2024-10-17 14:55:04'),(257,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(258,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','10','2024-10-17 14:55:04','2024-10-17 14:55:04'),(259,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(260,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','8','2024-10-17 14:55:04','2024-10-17 14:55:04'),(261,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(262,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','5','2024-10-17 14:55:04','2024-10-17 14:55:04'),(263,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(264,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','2','2024-10-17 14:55:04','2024-10-17 14:55:04'),(265,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(266,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','4','2024-10-17 14:55:04','2024-10-17 14:55:04'),(267,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 14:55:04','2024-10-17 14:55:04'),(268,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2024-10-17 15:02:35','2024-10-17 15:02:35'),(269,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(270,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','3','2024-10-17 15:02:35','2024-10-17 15:02:35'),(271,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(272,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','5','2024-10-17 15:02:35','2024-10-17 15:02:35'),(273,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(274,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','2','2024-10-17 15:02:35','2024-10-17 15:02:35'),(275,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(276,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','8','2024-10-17 15:02:35','2024-10-17 15:02:35'),(277,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(278,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(279,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(280,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','5','2024-10-17 15:02:35','2024-10-17 15:02:35'),(281,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(282,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(283,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','2','2024-10-17 15:02:35','2024-10-17 15:02:35'),(284,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(285,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','10','2024-10-17 15:02:35','2024-10-17 15:02:35'),(286,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(287,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-10-17 15:02:35','2024-10-17 15:02:35'),(288,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(289,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','9','2024-10-17 15:02:35','2024-10-17 15:02:35'),(290,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(291,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','6','2024-10-17 15:02:35','2024-10-17 15:02:35'),(292,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(293,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','3','2024-10-17 15:02:35','2024-10-17 15:02:35'),(294,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(295,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','2','2024-10-17 15:02:35','2024-10-17 15:02:35'),(296,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(297,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(298,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','2','2024-10-17 15:02:35','2024-10-17 15:02:35'),(299,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(300,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','5','2024-10-17 15:02:35','2024-10-17 15:02:35'),(301,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(302,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','3','2024-10-17 15:02:35','2024-10-17 15:02:35'),(303,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-10-17 15:02:35','2024-10-17 15:02:35'),(304,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2024-12-28 04:21:20','2024-12-28 04:21:20'),(305,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(306,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','3','2024-12-28 04:21:20','2024-12-28 04:21:20'),(307,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(308,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','7','2024-12-28 04:21:20','2024-12-28 04:21:20'),(309,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(310,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','8','2024-12-28 04:21:20','2024-12-28 04:21:20'),(311,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(312,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','4','2024-12-28 04:21:20','2024-12-28 04:21:20'),(313,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(314,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','4','2024-12-28 04:21:20','2024-12-28 04:21:20'),(315,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(316,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','5','2024-12-28 04:21:20','2024-12-28 04:21:20'),(317,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(318,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','7','2024-12-28 04:21:20','2024-12-28 04:21:20'),(319,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(320,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','5','2024-12-28 04:21:20','2024-12-28 04:21:20'),(321,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(322,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(323,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','7','2024-12-28 04:21:20','2024-12-28 04:21:20'),(324,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(325,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(326,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','10','2024-12-28 04:21:20','2024-12-28 04:21:20'),(327,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(328,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','10','2024-12-28 04:21:20','2024-12-28 04:21:20'),(329,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(330,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','5','2024-12-28 04:21:20','2024-12-28 04:21:20'),(331,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(332,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','4','2024-12-28 04:21:20','2024-12-28 04:21:20'),(333,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(334,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','6','2024-12-28 04:21:20','2024-12-28 04:21:20'),(335,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(336,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','8','2024-12-28 04:21:20','2024-12-28 04:21:20'),(337,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(338,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','9','2024-12-28 04:21:20','2024-12-28 04:21:20'),(339,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20'),(340,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','10','2024-12-28 04:21:20','2024-12-28 04:21:20'),(341,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-12-28 04:21:20','2024-12-28 04:21:20');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"comment.index\":true,\"comment.create\":true,\"comment.edit\":true,\"comment.destroy\":true,\"comment-user.index\":true,\"comment-user.create\":true,\"comment-user.edit\":true,\"comment-user.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"post-collection.index\":true,\"post-collection.create\":true,\"post-collection.edit\":true,\"post-collection.destroy\":true,\"pro-posts.index\":true,\"pro-posts.create\":true,\"pro-posts.edit\":true,\"pro-posts.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-12-28 04:21:13','2024-12-28 04:21:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-12-28 04:21:13'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"gallery\",\"member\",\"newsletter\",\"post-collection\",\"post-scheduler\",\"pro-posts\",\"request-log\",\"rss-feed\",\"social-login\",\"toc\",\"translation\"]',NULL,'2024-12-28 04:21:13'),(4,'theme','ultra',NULL,'2024-12-28 04:21:13'),(5,'show_admin_bar','1',NULL,'2024-12-28 04:21:13'),(6,'language_hide_default','1',NULL,NULL),(7,'language_switcher_display','dropdown',NULL,NULL),(8,'language_display','all',NULL,NULL),(9,'language_hide_languages','[]',NULL,NULL),(10,'admin_logo','general/logo-white.png',NULL,NULL),(11,'admin_favicon','general/favicon.png',NULL,NULL),(14,'theme-ultra-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-12-28 04:21:24','2024-12-28 04:21:24'),(15,'theme-ultra-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-12-28 04:21:24','2024-12-28 04:21:24'),(16,'theme-ultra-seo_og_image','general/screenshot.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(17,'theme-ultra-copyright','©2024 UltraNews - ','2024-12-28 04:21:24','2024-12-28 04:21:24'),(18,'theme-ultra-designed_by','| Design by AliThemes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(19,'theme-ultra-favicon','general/favicon.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(20,'theme-ultra-website','https://thesky9.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(21,'theme-ultra-contact_email','support@thesky9.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(22,'theme-ultra-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-12-28 04:21:24','2024-12-28 04:21:24'),(23,'theme-ultra-phone','+(123) 345-6789','2024-12-28 04:21:24','2024-12-28 04:21:24'),(24,'theme-ultra-email','contact@gmail.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(25,'theme-ultra-address','214 West Arnold St. New York, NY 10002','2024-12-28 04:21:24','2024-12-28 04:21:24'),(26,'theme-ultra-cookie_consent_message','Your experience on this site will be improved by allowing cookies ','2024-12-28 04:21:24','2024-12-28 04:21:24'),(27,'theme-ultra-cookie_consent_learn_more_url','http://localhost/cookie-policy','2024-12-28 04:21:24','2024-12-28 04:21:24'),(28,'theme-ultra-cookie_consent_learn_more_text','Cookie Policy','2024-12-28 04:21:24','2024-12-28 04:21:24'),(29,'theme-ultra-homepage_id','1','2024-12-28 04:21:24','2024-12-28 04:21:24'),(30,'theme-ultra-blog_page_id','4','2024-12-28 04:21:24','2024-12-28 04:21:24'),(31,'theme-ultra-single_layout','default','2024-12-28 04:21:24','2024-12-28 04:21:24'),(32,'theme-ultra-single_title_layout','top-full','2024-12-28 04:21:24','2024-12-28 04:21:24'),(33,'theme-ultra-action_title','All you need to build new site','2024-12-28 04:21:24','2024-12-28 04:21:24'),(34,'theme-ultra-action_button_text','Buy Now','2024-12-28 04:21:24','2024-12-28 04:21:24'),(35,'theme-ultra-action_button_url','https://codecanyon.net/user/thesky9','2024-12-28 04:21:24','2024-12-28 04:21:24'),(36,'theme-ultra-logo','general/logo.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(37,'theme-ultra-logo_mobile','general/logo-mobile.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(38,'theme-ultra-logo_tablet','general/logo-tablet.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(39,'theme-ultra-logo_white','general/logo-white.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(40,'theme-ultra-img_loading','general/img-loading.jpg','2024-12-28 04:21:24','2024-12-28 04:21:24'),(41,'theme-ultra-font_heading','Arimo','2024-12-28 04:21:24','2024-12-28 04:21:24'),(42,'theme-ultra-font_body','Roboto','2024-12-28 04:21:24','2024-12-28 04:21:24'),(43,'theme-ultra-color_primary','#87c6e3','2024-12-28 04:21:24','2024-12-28 04:21:24'),(44,'theme-ultra-color_secondary','#455265','2024-12-28 04:21:24','2024-12-28 04:21:24'),(45,'theme-ultra-color_success','#76e1c6','2024-12-28 04:21:24','2024-12-28 04:21:24'),(46,'theme-ultra-color_danger','#f0a9a9','2024-12-28 04:21:24','2024-12-28 04:21:24'),(47,'theme-ultra-color_warning','#e6bf7e','2024-12-28 04:21:24','2024-12-28 04:21:24'),(48,'theme-ultra-color_info','#58c1c8','2024-12-28 04:21:24','2024-12-28 04:21:24'),(49,'theme-ultra-color_light','#F3F3F3','2024-12-28 04:21:24','2024-12-28 04:21:24'),(50,'theme-ultra-color_dark','#111111','2024-12-28 04:21:24','2024-12-28 04:21:24'),(51,'theme-ultra-color_link','#222831','2024-12-28 04:21:24','2024-12-28 04:21:24'),(52,'theme-ultra-color_white','#FFFFFF','2024-12-28 04:21:24','2024-12-28 04:21:24'),(53,'theme-ultra-header_style','style-1','2024-12-28 04:21:24','2024-12-28 04:21:24'),(54,'theme-ultra-preloader_enabled','0','2024-12-28 04:21:24','2024-12-28 04:21:24'),(55,'theme-ultra-allow_account_login','yes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(56,'theme-ultra-comment_type_in_post','member','2024-12-28 04:21:24','2024-12-28 04:21:24'),(57,'theme-ultra-recently_viewed_posts_enable','yes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(58,'theme-ultra-vi-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-12-28 04:21:24','2024-12-28 04:21:24'),(59,'theme-ultra-vi-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-12-28 04:21:24','2024-12-28 04:21:24'),(60,'theme-ultra-vi-seo_og_image','general/screenshot.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(61,'theme-ultra-vi-copyright','©2024 Thiết kế bởi AliThemes ','2024-12-28 04:21:24','2024-12-28 04:21:24'),(62,'theme-ultra-vi-designed_by','| Design by AliThemes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(63,'theme-ultra-vi-favicon','general/favicon.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(64,'theme-ultra-vi-website','https://thesky9.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(65,'theme-ultra-vi-contact_email','support@thesky9.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(66,'theme-ultra-vi-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-12-28 04:21:24','2024-12-28 04:21:24'),(67,'theme-ultra-vi-phone','+(123) 345-6789','2024-12-28 04:21:24','2024-12-28 04:21:24'),(68,'theme-ultra-vi-email','contact@gmail.com','2024-12-28 04:21:24','2024-12-28 04:21:24'),(69,'theme-ultra-vi-address','214 West Arnold St. New York, NY 10002','2024-12-28 04:21:24','2024-12-28 04:21:24'),(70,'theme-ultra-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ','2024-12-28 04:21:24','2024-12-28 04:21:24'),(71,'theme-ultra-vi-cookie_consent_learn_more_url','http://localhost/cookie-policy','2024-12-28 04:21:24','2024-12-28 04:21:24'),(72,'theme-ultra-vi-cookie_consent_learn_more_text','Cookie Policy','2024-12-28 04:21:24','2024-12-28 04:21:24'),(73,'theme-ultra-vi-homepage_id','1','2024-12-28 04:21:24','2024-12-28 04:21:24'),(74,'theme-ultra-vi-blog_page_id','4','2024-12-28 04:21:24','2024-12-28 04:21:24'),(75,'theme-ultra-vi-single_layout','default','2024-12-28 04:21:24','2024-12-28 04:21:24'),(76,'theme-ultra-vi-single_title_layout','top-full','2024-12-28 04:21:24','2024-12-28 04:21:24'),(77,'theme-ultra-vi-logo','general/logo.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(78,'theme-ultra-vi-logo_mobile','general/logo-mobile.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(79,'theme-ultra-vi-logo_tablet','general/logo-tablet.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(80,'theme-ultra-vi-logo_white','general/logo-white.png','2024-12-28 04:21:24','2024-12-28 04:21:24'),(81,'theme-ultra-vi-action_title','Bạn cần tạo mới website','2024-12-28 04:21:24','2024-12-28 04:21:24'),(82,'theme-ultra-vi-action_button_text','Mua Ngay','2024-12-28 04:21:24','2024-12-28 04:21:24'),(83,'theme-ultra-vi-action_button_url','https://codecanyon.net/user/thesky9','2024-12-28 04:21:24','2024-12-28 04:21:24'),(84,'theme-ultra-vi-font_heading','Arimo','2024-12-28 04:21:24','2024-12-28 04:21:24'),(85,'theme-ultra-vi-font_body','Roboto','2024-12-28 04:21:24','2024-12-28 04:21:24'),(86,'theme-ultra-vi-color_brand_1','#ffcda3','2024-12-28 04:21:24','2024-12-28 04:21:24'),(87,'theme-ultra-vi-color_brand_2','#fce2ce','2024-12-28 04:21:24','2024-12-28 04:21:24'),(88,'theme-ultra-vi-color_brand_3','#ffede5','2024-12-28 04:21:24','2024-12-28 04:21:24'),(89,'theme-ultra-vi-color_brand_4','#fff5ef','2024-12-28 04:21:24','2024-12-28 04:21:24'),(90,'theme-ultra-vi-color_primary','#87c6e3','2024-12-28 04:21:24','2024-12-28 04:21:24'),(91,'theme-ultra-vi-color_secondary','#455265','2024-12-28 04:21:24','2024-12-28 04:21:24'),(92,'theme-ultra-vi-color_success','#76e1c6','2024-12-28 04:21:24','2024-12-28 04:21:24'),(93,'theme-ultra-vi-color_danger','#f0a9a9','2024-12-28 04:21:24','2024-12-28 04:21:24'),(94,'theme-ultra-vi-color_warning','#e6bf7e','2024-12-28 04:21:24','2024-12-28 04:21:24'),(95,'theme-ultra-vi-color_info','#58c1c8','2024-12-28 04:21:24','2024-12-28 04:21:24'),(96,'theme-ultra-vi-color_light','#F3F3F3','2024-12-28 04:21:24','2024-12-28 04:21:24'),(97,'theme-ultra-vi-color_dark','#111111','2024-12-28 04:21:24','2024-12-28 04:21:24'),(98,'theme-ultra-vi-color_link','#222831','2024-12-28 04:21:24','2024-12-28 04:21:24'),(99,'theme-ultra-vi-color_white','#FFFFFF','2024-12-28 04:21:24','2024-12-28 04:21:24'),(100,'theme-ultra-vi-header_style','style-1','2024-12-28 04:21:24','2024-12-28 04:21:24'),(101,'theme-ultra-vi-preloader_enabled','0','2024-12-28 04:21:24','2024-12-28 04:21:24'),(102,'theme-ultra-vi-allow_account_login','yes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(103,'theme-ultra-vi-comment_type_in_post','member','2024-12-28 04:21:24','2024-12-28 04:21:24'),(104,'theme-ultra-vi-recently_viewed_posts_enable','yes','2024-12-28 04:21:24','2024-12-28 04:21:24'),(105,'theme-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(106,'theme-vi-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(107,'media_random_hash','782923b8ac668f68bc882f24992e7008',NULL,NULL),(108,'comment_enable','1',NULL,NULL),(109,'comment_menu_enable','[\"Botble\\\\Blog\\\\Models\\\\Post\"]',NULL,NULL),(110,'plugin_comment_copyright','',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(2,'home-2',2,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(3,'home-3',3,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(4,'blog',4,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(5,'category-list',5,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(6,'category-grid',6,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(7,'category-metro',7,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(8,'contact',8,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(9,'about-us',9,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(10,'cookie-policy',10,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:13','2024-12-28 04:21:13'),(11,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(12,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(13,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(14,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(15,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(16,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-12-28 04:21:15','2024-12-28 04:21:15'),(17,'design',1,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(18,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(19,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(20,'healthy',4,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(21,'fashion',5,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(22,'hotel',6,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(23,'nature',7,'Botble\\Blog\\Models\\Category','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(24,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(25,'beauty',2,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(26,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(27,'lifestyle',4,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(28,'travel',5,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(29,'business',6,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(30,'health',7,'Botble\\Blog\\Models\\Tag','tag','2024-12-28 04:21:17','2024-12-28 04:21:17'),(31,'this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',1,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(32,'the-world-caters-to-average-people-and-mediocre-lifestyles',2,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(33,'not-a-bit-of-hesitation-you-better-think-twice',3,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(34,'we-got-a-right-to-pick-a-little-fight-bonanza',4,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(35,'my-entrance-exam-was-on-a-book-of-matches',5,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(36,'essential-qualities-of-highly-successful-music',6,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(37,'why-teamwork-really-makes-the-dream-work',7,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(38,'9-things-i-love-about-shaving-my-head-during-quarantine',8,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(39,'the-litigants-on-the-screen-are-not-actors',9,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(40,'imagine-losing-20-pounds-in-14-days',10,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:17','2024-12-28 04:21:17'),(41,'are-you-still-using-that-slow-old-typewriter',11,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(42,'a-skin-cream-thats-proven-to-work',12,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(43,'10-reasons-to-start-your-own-profitable-website',13,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(44,'level-up-your-live-streams-with-automated-captions-and-more',14,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(45,'simple-ways-to-reduce-your-unwanted-wrinkles',15,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(46,'apple-imac-with-retina-5k-display-review',16,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(47,'10000-web-site-visitors-in-one-monthguaranteed',17,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(48,'unlock-the-secrets-of-selling-high-ticket-items',18,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(49,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',19,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(50,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',20,'Botble\\Blog\\Models\\Post','','2024-12-28 04:21:18','2024-12-28 04:21:18'),(51,'smith',1,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:18','2024-12-28 04:21:24'),(52,'vandervort',2,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:18','2024-12-28 04:21:24'),(53,'rau',3,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:19','2024-12-28 04:21:24'),(54,'mclaughlin',4,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:19','2024-12-28 04:21:24'),(55,'quigley',5,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:19','2024-12-28 04:21:24'),(56,'leffler',6,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:19','2024-12-28 04:21:24'),(57,'bauch',7,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:20','2024-12-28 04:21:24'),(58,'christiansen',8,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:20','2024-12-28 04:21:24'),(59,'dare',9,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:20','2024-12-28 04:21:24'),(60,'quigley',10,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:20','2024-12-28 04:21:24'),(61,'weimann',11,'Botble\\Member\\Models\\Member','author','2024-12-28 04:21:20','2024-12-28 04:21:24'),(62,'editors-picked',1,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:23','2024-12-28 04:21:23'),(63,'recommended-posts',2,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:23','2024-12-28 04:21:23'),(64,'bai-viet-hay',3,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:23','2024-12-28 04:21:23'),(65,'recommended-posts',4,'Botble\\Page\\Models\\Page','','2024-12-28 04:21:23','2024-12-28 04:21:23'),(66,'editors-picked',1,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-12-28 04:21:24','2024-12-28 04:21:24'),(67,'recommended-posts',2,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-12-28 04:21:24','2024-12-28 04:21:24'),(68,'bai-viet-hay',3,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-12-28 04:21:24','2024-12-28 04:21:24'),(69,'recommended-posts',4,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-12-28 04:21:24','2024-12-28 04:21:24');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(2,'Beauty',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(4,'Lifestyle',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(5,'Travel',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(6,'Business',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17'),(7,'Health',1,'Botble\\ACL\\Models\\User','','published','2024-12-28 04:21:17','2024-12-28 04:21:17');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Làm đẹp',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Du lịch và ẩm thực',NULL),('vi',5,'Kinh doanh',NULL),('vi',6,'Sức khỏe',NULL),('vi',7,'Thời sự',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'brianne.reichel@murazik.com',NULL,'$2y$12$WbbjlEBv8DO.2TUnsyHB7.aPzqF8as/x.zfW7kjfOlkGlVtvltYBu',NULL,'2024-12-28 04:21:13','2024-12-28 04:21:13','Zoie','Reinger','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SocialsWidget','primary_sidebar','ultra',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(2,'AdsWidget','primary_sidebar','ultra',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(3,'CategoriesMenuWidget','primary_sidebar','ultra',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(4,'LastestPostsWidget','primary_sidebar','ultra',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"Lastest Post\",\"number_display\":6}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(5,'TagsWidget','primary_sidebar','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":10}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(6,'AdsWidget','primary_sidebar','ultra',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(7,'AboutWidget','footer_sidebar_1','ultra',1,'{\"id\":\"AboutWidget\",\"name\":\"About me\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(8,'PopularPostsWidget','footer_sidebar_2','ultra',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"Popular Posts\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(9,'CustomMenuWidget','footer_sidebar_3','ultra',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(10,'TagsWidget','footer_sidebar_3','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(11,'NewsletterWidget','footer_sidebar_4','ultra',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(12,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(13,'SocialsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(14,'AdsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(15,'CategoriesMenuWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(16,'LastestPostsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":6}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(17,'TagsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":10}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(18,'AdsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(19,'AboutWidget','footer_sidebar_1','ultra-vi',1,'{\"id\":\"AboutWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(20,'PopularPostsWidget','footer_sidebar_2','ultra-vi',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"N\\u1ed5i b\\u1eadt\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(21,'CustomMenuWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(22,'TagsWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(23,'NewsletterWidget','footer_sidebar_4','ultra-vi',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-12-28 04:21:23','2024-12-28 04:21:23'),(24,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra-vi',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-12-28 04:21:23','2024-12-28 04:21:23');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-28 11:59:17
