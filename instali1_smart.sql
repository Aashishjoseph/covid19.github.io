-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: instali1_smart
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `api_providers`
--

DROP TABLE IF EXISTS `api_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_providers`
--

LOCK TABLES `api_providers` WRITE;
/*!40000 ALTER TABLE `api_providers` DISABLE KEYS */;
INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES (1,'6c08835fc25dd0add2f1f6be7c828578',1,'HQ Smartpanel','https://hqsmartpanel.com/api/v1','JIyPCexcfKPOjsSGlcjHYV4n5yRsVgCE',NULL,NULL,'HQ SmartPanel - Services - The Best SMM Panel - Social Media Services for Resellers\r\n',1,'2019-04-09 11:36:34','2019-04-10 10:41:29');
/*!40000 ALTER TABLE `api_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `image` text,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `question` text,
  `answer` longtext,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_custom_page`
--

DROP TABLE IF EXISTS `general_custom_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `pid` int(1) DEFAULT '1',
  `position` int(1) DEFAULT '0',
  `name` text,
  `slug` text,
  `image` text,
  `description` longtext,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_custom_page`
--

LOCK TABLES `general_custom_page` WRITE;
/*!40000 ALTER TABLE `general_custom_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_custom_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_file_manager`
--

DROP TABLE IF EXISTS `general_file_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8mb4,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4,
  `file_type` text CHARACTER SET utf8mb4,
  `file_ext` text CHARACTER SET utf8mb4,
  `file_size` text CHARACTER SET utf8mb4,
  `is_image` text CHARACTER SET utf8mb4,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_file_manager`
--

LOCK TABLES `general_file_manager` WRITE;
/*!40000 ALTER TABLE `general_file_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_file_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_lang`
--

DROP TABLE IF EXISTS `general_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_lang`
--

LOCK TABLES `general_lang` WRITE;
/*!40000 ALTER TABLE `general_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_lang_list`
--

DROP TABLE IF EXISTS `general_lang_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_lang_list`
--

LOCK TABLES `general_lang_list` WRITE;
/*!40000 ALTER TABLE `general_lang_list` DISABLE KEYS */;
INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES (1,'214f440b0daaa52b0ef6a176649839fa','en','GB',1,1,'2020-03-21 05:29:54');
/*!40000 ALTER TABLE `general_lang_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_news`
--

DROP TABLE IF EXISTS `general_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_news`
--

LOCK TABLES `general_news` WRITE;
/*!40000 ALTER TABLE `general_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_options`
--

DROP TABLE IF EXISTS `general_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_options`
--

LOCK TABLES `general_options` WRITE;
/*!40000 ALTER TABLE `general_options` DISABLE KEYS */;
INSERT INTO `general_options` (`id`, `name`, `value`) VALUES (67,'enable_https','0'),(68,'enable_disable_homepage','0'),(69,'website_desc','SmartPanel - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services!'),(70,'website_keywords','smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel'),(71,'website_title','SmartPanel - SMM Panel Reseller Tool'),(72,'website_favicon','http://smartpanel.xtrembot.best/assets/images/favicon.png'),(73,'embed_head_javascript',''),(74,'website_logo','http://smartpanel.xtrembot.best/assets/images/logo.png'),(75,'website_logo_white','http://smartpanel.xtrembot.best/assets/images/logo-white.png'),(76,'enable_service_list_no_login',''),(77,'disable_signup_page',''),(78,'notification_popup_content',''),(79,'is_cookie_policy_page',''),(80,'enable_api_tab',''),(81,'contact_tel','+12345678'),(82,'contact_email','do-not-reply@smartpanel.com'),(83,'contact_work_hour','Mon - Sat 09 am - 10 pm'),(84,'social_facebook_link',''),(85,'social_twitter_link',''),(86,'social_instagram_link',''),(87,'social_pinterest_link',''),(88,'social_tumblr_link',''),(89,'social_youtube_link',''),(90,'copy_right_content','Copyright &copy; 2020 - SmartPanel'),(91,'embed_javascript',''),(92,'enable_notification_popup','0'),(93,'enable_goolge_recapcha',''),(94,'get_features_option','1'),(95,'currency_decimal_separator','dot'),(96,'currency_thousand_separator','comma'),(97,'currency_symbol','$'),(98,'currency_decimal','2'),(99,'default_header_skin','default'),(100,'enable_news_announcement',''),(101,'is_maintenance_mode','0'),(102,'website_name','SmartPanel'),(103,'payment_transaction_min','10'),(104,'payment_environment','sandbox'),(105,'is_active_paypal',''),(106,'paypal_chagre_fee','4'),(107,'paypal_client_id',''),(108,'paypal_client_secret',''),(109,'is_active_stripe',''),(110,'stripe_chagre_fee','4'),(111,'stripe_publishable_key',''),(112,'stripe_secret_key',''),(113,'is_active_2checkout',''),(114,'twocheckout_chagre_fee','4'),(115,'2checkout_publishable_key',''),(116,'2checkout_private_key',''),(117,'2checkout_seller_id',''),(118,'is_active_manual',''),(119,'manual_payment_content','You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.'),(120,'enable_explication_service_symbol',''),(121,'is_active_paytm','1'),(122,'paytm_payment_environment','PROD'),(123,'paytm_chagre_fee','0'),(124,'paytm_currency_rate_to_usd','1'),(125,'paytm_merchant_id','VyImQU96487611546652'),(126,'paytm_merchant_key','!%TBhUFWNZ@lV8lx'),(127,'default_limit_per_page','10'),(128,'paytm_payment_transaction_min',''),(129,'is_payment_notice_email',''),(130,'currency_code','USD');
/*!40000 ALTER TABLE `general_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_purchase`
--

DROP TABLE IF EXISTS `general_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `pid` text,
  `purchase_code` text,
  `version` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_purchase`
--

LOCK TABLES `general_purchase` WRITE;
/*!40000 ALTER TABLE `general_purchase` DISABLE KEYS */;
INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES (1,'8068ec7f79145fe55dea67dd63b012c3','23595718','BLACK DEVIL','3.2');
/*!40000 ALTER TABLE `general_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_sessions`
--

DROP TABLE IF EXISTS `general_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_sessions`
--

LOCK TABLES `general_sessions` WRITE;
/*!40000 ALTER TABLE `general_sessions` DISABLE KEYS */;
INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9adfd5bd483b023c0b8324f53286b05a18286a71','137.97.68.98',1584770843,'__ci_last_regenerate|i:1584768594;langCurrent|O:8:\"stdClass\":6:{s:3:\"ids\";s:32:\"214f440b0daaa52b0ef6a176649839fa\";s:4:\"code\";s:2:\"en\";s:12:\"country_code\";s:2:\"GB\";s:10:\"is_default\";i:1;s:6:\"status\";i:1;s:7:\"created\";s:19:\"2020-03-21 05:29:54\";}amount|d:10;'),('31c215d857218fe6a85fc1cbfc3873c255007491','49.44.83.105',1584769955,'__ci_last_regenerate|i:1584769953;langCurrent|O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"1\";s:3:\"ids\";s:32:\"214f440b0daaa52b0ef6a176649839fa\";s:4:\"code\";s:2:\"en\";s:12:\"country_code\";s:2:\"GB\";s:10:\"is_default\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2020-03-21 05:29:54\";}');
/*!40000 ALTER TABLE `general_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_subscribers`
--

DROP TABLE IF EXISTS `general_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `ip` text,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_subscribers`
--

LOCK TABLES `general_subscribers` WRITE;
/*!40000 ALTER TABLE `general_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_transaction_logs`
--

DROP TABLE IF EXISTS `general_transaction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_transaction_logs`
--

LOCK TABLES `general_transaction_logs` WRITE;
/*!40000 ALTER TABLE `general_transaction_logs` DISABLE KEYS */;
INSERT INTO `general_transaction_logs` (`id`, `ids`, `uid`, `type`, `transaction_id`, `amount`, `status`, `created`) VALUES (41,'325c4a417b723ce3de85deb6f14c5d4f',39,'paytm','20200321111212800110168342020385553',10,1,'2020-03-21 05:54:38');
/*!40000 ALTER TABLE `general_transaction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_users`
--

DROP TABLE IF EXISTS `general_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `password` text,
  `timezone` text,
  `more_information` text,
  `settings` longtext,
  `desc` longtext,
  `balance` decimal(15,4) DEFAULT '0.0000',
  `custom_rate` int(11) NOT NULL DEFAULT '0',
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text,
  `reset_key` text,
  `history_ip` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_users`
--

LOCK TABLES `general_users` WRITE;
/*!40000 ALTER TABLE `general_users` DISABLE KEYS */;
INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES (38,'e7ace76210625c6880498190c0af2d58','admin',NULL,'Buy','Digital Product','admin@buydigitalproduct.online','$2a$08$V/V746s2TRuOl37tewzLDeJlRkQuC11RAyP9J1VTmuHYsZ5Ykd1Qq','Africa/Abidjan',NULL,NULL,NULL,0.0000,0,NULL,NULL,'c4a78c5172c30e669bb05d9dse48d6f5','cd1f0ff61ee33c0ae949126bd11250e7','137.97.68.98',1,NULL,NULL),(39,'894d965c6a22d9d8af94dadc62893020','user',NULL,'User','User','user@buydigitalproduct.online','$2a$08$IcwIG/AjFBvOf2m5VnArWeCqtmxMuIHgcLYSLP7DqlPm41dPjKl.2','Pacific/Midway',NULL,NULL,'',10.0000,0,NULL,NULL,NULL,'92e92b53dbcc022d240546c9aa1177b2','137.97.68.98',1,'2020-03-21 05:52:35','2020-03-21 05:52:35');
/*!40000 ALTER TABLE `general_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT '0',
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci,
  `username` text COLLATE utf8mb4_unicode_ci,
  `hashtags` text COLLATE utf8mb4_unicode_ci,
  `hashtag` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `status` enum('completed','processing','inprogress','pending','partial','refunded','canceled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT '0',
  `runs` int(11) DEFAULT '0',
  `interval` int(2) DEFAULT '0',
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=389624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_messages_user_id_foreign` (`uid`),
  KEY `ticket_messages_ticket_id_foreign` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_messages`
--

LOCK TABLES `ticket_messages` WRITE;
/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'instali1_smart'
--

--
-- Dumping routines for database 'instali1_smart'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-21 11:47:10
