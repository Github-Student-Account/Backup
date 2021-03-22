-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wordpressdb
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mcloud_task`
--

DROP TABLE IF EXISTS `wp_mcloud_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mcloud_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tuid` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` bigint(20) DEFAULT NULL,
  `cli` int(11) NOT NULL DEFAULT 0,
  `shouldCancel` int(11) NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 0,
  `currentItem` int(11) NOT NULL DEFAULT 0,
  `totalItems` int(11) NOT NULL DEFAULT 0,
  `lastTime` float DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `lastRun` bigint(20) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `timePer` float DEFAULT NULL,
  `memoryPer` bigint(20) DEFAULT NULL,
  `currentItemID` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currentTitle` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currentFile` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currentThumb` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isIcon` int(11) NOT NULL DEFAULT 0,
  `errorMessage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mcloud_task`
--

LOCK TABLES `wp_mcloud_task` WRITE;
/*!40000 ALTER TABLE `wp_mcloud_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mcloud_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mcloud_task_data`
--

DROP TABLE IF EXISTS `wp_mcloud_task_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mcloud_task_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskId` bigint(20) NOT NULL,
  `current` int(11) NOT NULL DEFAULT 0,
  `complete` int(11) NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mcloud_task_data`
--

LOCK TABLES `wp_mcloud_task_data` WRITE;
/*!40000 ALTER TABLE `wp_mcloud_task_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mcloud_task_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mcloud_task_schedule`
--

DROP TABLE IF EXISTS `wp_mcloud_task_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mcloud_task_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tuid` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `lastRun` bigint(20) DEFAULT NULL,
  `nextRun` bigint(20) DEFAULT NULL,
  `schedule` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskType` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mcloud_task_schedule`
--

LOCK TABLES `wp_mcloud_task_schedule` WRITE;
/*!40000 ALTER TABLE `wp_mcloud_task_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mcloud_task_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mcloud_task_token`
--

DROP TABLE IF EXISTS `wp_mcloud_task_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mcloud_task_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mcloud_task_token`
--

LOCK TABLES `wp_mcloud_task_token` WRITE;
/*!40000 ALTER TABLE `wp_mcloud_task_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mcloud_task_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://192.168.50.206','yes'),(2,'home','http://192.168.50.206','yes'),(3,'blogname','Site-Web','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','wordpress@local.local','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:37:\"ilab-media-tools/ilab-media-tools.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentytwentyone','yes'),(41,'stylesheet','twentytwentyone','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1631725766','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'initial_db_version','49752','yes'),(99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"mcloud_heartbeat\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(100,'fresh_site','0','yes'),(101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(107,'cron','a:7:{i:1616410126;a:1:{s:16:\"mcloud_run_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"mcloud_batch_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1616411367;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616432967;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616432973;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616432974;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616864967;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'nonce_key','wgXV!RW0Wj5*zjw{B5dq<B_=D+>`;)xK[J/|)`@p(%N]djoiNt3/%t;iMtQCA&Gb','no'),(115,'nonce_salt','H+-$<?&cQJ Z&o[ ft]LLDg_aIsLRVC[p;CA(<rvM]WDZqv$#1#yhS9_d<aJ_|)l','no'),(116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(120,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616174381;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(123,'recovery_keys','a:0:{}','yes'),(124,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes'),(125,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616409581;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no'),(128,'logged_in_key','Bm_[M+DH5=NasE?b|wtO|.l7jPyCl!ro_65<02/GFNHTfl_~yykKFBc_04z~;h!_','no'),(129,'logged_in_salt',';6sOPcgEft,41>|x_n@ed:-lIM^rJ_;caMKDsae~pXP`|{Vw[)Jmbu#(<BH(|Z38','no'),(132,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616409583;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),(133,'auth_key','g0p.|6,A84%gxY^HB8) FiWP@+d~,V1?6TzW)L4]2sqJWR|1K6}97/aZ,r@n]5S(','no'),(134,'auth_salt','~gMWY;<qn)Ih2Tn#Y^0nbfF]`@r2{V(M$s/7B@`_RB:s8fdt`a!eX,`jK;3_0|J*','no'),(135,'_site_transient_timeout_browser_3a14fb823305e1c7b357f4490872b177','1616778574','no'),(136,'_site_transient_browser_3a14fb823305e1c7b357f4490872b177','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"86.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(137,'_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','1616778574','no'),(138,'_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(140,'can_compress_scripts','0','no'),(147,'finished_updating_comment_type','1','yes'),(148,'current_theme','Twenty Twenty-One','yes'),(149,'theme_mods_twentytwentyone','a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:0;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:81:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1.jpg\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:3:\"top\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:25:\"display_title_and_tagline\";b:1;s:21:\"background_attachment\";s:5:\"fixed\";s:28:\"display_excerpt_or_full_post\";s:7:\"excerpt\";s:16:\"background_color\";s:6:\"242823\";}','yes'),(150,'theme_switched','','yes'),(159,'_transient_health-check-site-status-result','{\"good\":\"14\",\"recommended\":\"5\",\"critical\":\"1\"}','yes'),(164,'recently_activated','a:4:{s:37:\"wp-media-storage-to-cloud/w2cloud.php\";i:1616409613;s:38:\"wp-s3-smart-upload/s3-smart-upload.php\";i:1616407510;s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";i:1616406890;s:43:\"upcasted-s3-offload/upcasted-s3-offload.php\";i:1616406841;}','yes'),(167,'category_children','a:0:{}','yes'),(172,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1616448880','no'),(173,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>','no'),(174,'_site_transient_timeout_community-events-8a409cf66b6719ab0c14837a204fc27e','1616448880','no'),(175,'_site_transient_community-events-8a409cf66b6719ab0c14837a204fc27e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"192.168.50.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:66:\"Demo + Discussion group: Intro to Publishing with the Block Editor\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/276945655/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-03-24 07:00:00\";s:8:\"end_date\";s:19:\"2021-03-24 08:00:00\";s:20:\"start_unix_timestamp\";i:1616594400;s:18:\"end_unix_timestamp\";i:1616598000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}}}','no'),(176,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1616416492','no'),(177,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4775;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4752;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2714;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2590;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1995;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1850;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1826;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1506;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1504;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1495;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1480;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1476;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1464;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1251;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1224;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1223;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1151;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1119;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1043;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:936;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:926;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:900;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:884;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:867;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:817;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:810;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:801;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:795;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:775;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:759;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:740;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:726;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:711;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:705;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:661;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:658;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:657;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:653;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:648;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:643;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:617;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:595;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:588;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:587;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:587;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:572;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:564;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:564;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:560;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:557;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:554;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:542;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:539;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:538;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:538;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:514;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:504;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:497;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:496;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:490;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:486;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:486;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:484;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:483;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:468;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:459;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:456;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:448;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:445;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:442;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:441;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:439;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:438;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:424;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:418;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:405;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:404;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:403;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:401;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:391;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:389;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:386;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:380;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:368;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:367;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:363;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:362;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:357;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:351;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:346;}}','no'),(180,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"ilab-media-tools/external/Freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1616409586;s:11:\"plugin_path\";s:37:\"ilab-media-tools/ilab-media-tools.php\";}}s:7:\"abspath\";s:24:\"/var/www/html/wordpress/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:37:\"ilab-media-tools/ilab-media-tools.php\";s:8:\"sdk_path\";s:34:\"ilab-media-tools/external/Freemius\";s:7:\"version\";s:5:\"2.4.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1616409586;}}','yes'),(181,'fs_debug_mode','','yes'),(182,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:2:{i:1431;a:3:{s:4:\"slug\";s:16:\"ilab-media-tools\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:37:\"ilab-media-tools/ilab-media-tools.php\";}i:6128;a:3:{s:4:\"slug\";s:19:\"upcasted-s3-offload\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:43:\"upcasted-s3-offload/upcasted-s3-offload.php\";}}s:11:\"plugin_data\";a:2:{s:16:\"ilab-media-tools\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:37:\"ilab-media-tools/ilab-media-tools.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1616405717;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.2.8\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"192.168.50.206\";s:9:\"server_ip\";s:14:\"192.168.50.219\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1616405717;s:7:\"version\";s:5:\"4.2.8\";}s:15:\"prev_is_premium\";b:0;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:1:\"A\";s:12:\"is_anonymous\";b:0;}s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1616409587;s:7:\"version\";s:5:\"4.2.8\";}}s:19:\"upcasted-s3-offload\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:43:\"upcasted-s3-offload/upcasted-s3-offload.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1616406753;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.1.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"192.168.50.206\";s:9:\"server_ip\";s:14:\"192.168.50.219\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1616406753;s:7:\"version\";s:5:\"2.1.2\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1616406755;s:7:\"version\";s:5:\"2.1.2\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:1:\"A\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:2:{s:37:\"ilab-media-tools/ilab-media-tools.php\";s:16:\"ilab-media-tools\";s:43:\"upcasted-s3-offload/upcasted-s3-offload.php\";s:19:\"upcasted-s3-offload\";}s:7:\"plugins\";a:2:{s:16:\"ilab-media-tools\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Media Cloud\";s:4:\"slug\";s:16:\"ilab-media-tools\";s:12:\"premium_slug\";s:24:\"ilab-media-tools-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:37:\"ilab-media-tools/ilab-media-tools.php\";s:7:\"version\";s:5:\"4.2.8\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_f20e8088bc078daafd3a20b6f653d\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1431\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:19:\"upcasted-s3-offload\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:38:\"AWS S3 for WordPress Plugin - Upcasted\";s:4:\"slug\";s:19:\"upcasted-s3-offload\";s:12:\"premium_slug\";s:23:\"upcasted-s3-offload-pro\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:43:\"upcasted-s3-offload/upcasted-s3-offload.php\";s:7:\"version\";s:5:\"2.1.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1fb61de9679c1069993d1ba9f2166\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"6128\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"fc6478da7919bb6a4bec56de50077d63\";s:13:\"admin_notices\";a:2:{s:16:\"ilab-media-tools\";a:0:{}s:19:\"upcasted-s3-offload\";a:0:{}}}','yes'),(183,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes'),(184,'fs_api_cache','a:0:{}','no'),(187,'mcloud-has-run','1','yes'),(188,'mcloud-pinned-tools','a:1:{s:7:\"storage\";i:1;}','yes'),(189,'mcloud_task_table_db_version','1.0.1','no'),(190,'mcloud_task_data_db_version','1.0.1','no'),(191,'mcloud_task_schedule_db_version','1.0.1','no'),(192,'mcloud_task_token_db_version','1.0.1','no'),(193,'mcloud-other-plugins-migrated','1','yes'),(196,'mcloud_last_cron','1616410071','no'),(197,'mcloud_last_heartbeat','1616410071.1699','no'),(201,'mcloud-storage-provider','s3','yes'),(202,'mcloud-storage-s3-bucket','wordpress-bucket-up','yes'),(203,'mcloud-storage-s3-access-key','AKIAT7XP6BXTPSOCAWP2','yes'),(204,'mcloud-storage-s3-secret','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','yes'),(205,'mcloud-storage-s3-region','eu-west-1','yes'),(206,'mcloud-storage-s3-endpoint','','yes'),(207,'mcloud-storage-s3-use-path-style-endpoint','1','yes'),(208,'mcloud-tool-enabled-storage','1','yes'),(230,'w2cloud_general_settings','{\"active_storage\":\"aws\",\"serve_from_bucket\":false,\"up_on_bucket\":true,\"delete_from_bucket\":false,\"erase_from_local\":false}','yes'),(232,'w2cloud_dashboard_option','1','yes'),(233,'wp-media-storage-to-cloud_allow_tracking','no','yes'),(235,'wp-media-storage-to-cloud_tracking_skipped','yes','yes'),(237,'aws_client_id','AKIAT7XP6BXTPSOCAWP2','yes'),(238,'aws_client_secret','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','yes'),(239,'aws_bucket','wordpress-bucket-up','yes'),(240,'aws_region','eu-west-1','yes'),(242,'_site_transient_timeout_theme_roots','1616411383','no'),(243,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no'),(244,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616409585;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:37:\"ilab-media-tools/ilab-media-tools.php\";s:5:\"4.2.8\";s:37:\"wp-media-storage-to-cloud/w2cloud.php\";s:5:\"2.2.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"ilab-media-tools/ilab-media-tools.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/ilab-media-tools\";s:4:\"slug\";s:16:\"ilab-media-tools\";s:6:\"plugin\";s:37:\"ilab-media-tools/ilab-media-tools.php\";s:11:\"new_version\";s:5:\"4.2.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/ilab-media-tools/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ilab-media-tools.4.2.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/ilab-media-tools/assets/icon-256x256.png?rev=2133581\";s:2:\"1x\";s:61:\"https://ps.w.org/ilab-media-tools/assets/icon.svg?rev=2133581\";s:3:\"svg\";s:61:\"https://ps.w.org/ilab-media-tools/assets/icon.svg?rev=2133581\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/ilab-media-tools/assets/banner-1544x500.png?rev=2133581\";s:2:\"1x\";s:71:\"https://ps.w.org/ilab-media-tools/assets/banner-772x250.png?rev=2133581\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-media-storage-to-cloud/w2cloud.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/wp-media-storage-to-cloud\";s:4:\"slug\";s:25:\"wp-media-storage-to-cloud\";s:6:\"plugin\";s:37:\"wp-media-storage-to-cloud/w2cloud.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/wp-media-storage-to-cloud/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/wp-media-storage-to-cloud.2.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/wp-media-storage-to-cloud/assets/icon-256x256.gif?rev=2479739\";s:2:\"1x\";s:78:\"https://ps.w.org/wp-media-storage-to-cloud/assets/icon-128x128.gif?rev=2479739\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/wp-media-storage-to-cloud/assets/banner-1544x500.png?rev=2405214\";s:2:\"1x\";s:80:\"https://ps.w.org/wp-media-storage-to-cloud/assets/banner-772x250.png?rev=2405214\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(254,'_site_transient_timeout_ilab-media-tools-extime-notice','1619001661','no'),(255,'_site_transient_ilab-media-tools-extime-notice','1619001661','no'),(256,'_site_transient_timeout_mcloud-no-mbstring','1619001662','no'),(257,'_site_transient_mcloud-no-mbstring','1619001662','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (11,10,'_wp_attached_file','2021/03/TEST2.jpg'),(12,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/03/TEST2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"TEST2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"TEST2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"TEST2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"TEST2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"TEST2-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"TEST2-1568x882.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(13,10,'_wp_attachment_is_custom_background','twentytwentyone'),(14,9,'_edit_lock','1616174650:1'),(15,9,'_wp_trash_meta_status','publish'),(16,9,'_wp_trash_meta_time','1616174662'),(35,1,'_edit_lock','1616174598:1'),(37,18,'_wp_trash_meta_status','publish'),(38,18,'_wp_trash_meta_time','1616175360'),(39,19,'_wp_attached_file','2021/03/TEST1.jpg'),(40,19,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/03/TEST1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"TEST1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:89:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1-300x169.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:34:\"2021/03/KBwK4jPG-TEST1-300x169.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"TEST1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:90:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1-1024x576.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:35:\"2021/03/KBwK4jPG-TEST1-1024x576.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"TEST1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:89:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1-150x150.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:34:\"2021/03/KBwK4jPG-TEST1-150x150.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"TEST1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:89:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1-768x432.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:34:\"2021/03/KBwK4jPG-TEST1-768x432.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:18:\"TEST1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:90:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1-1536x864.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:35:\"2021/03/KBwK4jPG-TEST1-1536x864.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:18:\"TEST1-1568x882.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:81:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST1-1568x882.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:26:\"2021/03/TEST1-1568x882.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:2:\"s3\";a:9:{s:3:\"url\";s:81:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:26:\"2021/03/KBwK4jPG-TEST1.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),(41,19,'_wp_attachment_is_custom_background','twentytwentyone'),(42,20,'_wp_trash_meta_status','publish'),(43,20,'_wp_trash_meta_time','1616405916'),(49,23,'_wp_attached_file','2021/03/TEST-TEST.jpg'),(50,23,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/03/TEST-TEST.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"TEST-TEST-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:84:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-300x169.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:29:\"2021/03/TEST-TEST-300x169.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"TEST-TEST-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:85:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-1024x576.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:30:\"2021/03/TEST-TEST-1024x576.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"TEST-TEST-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:84:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-150x150.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:29:\"2021/03/TEST-TEST-150x150.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"TEST-TEST-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:84:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-768x432.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:29:\"2021/03/TEST-TEST-768x432.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"TEST-TEST-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:85:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-1536x864.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:30:\"2021/03/TEST-TEST-1536x864.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"TEST-TEST-1568x882.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";s:2:\"s3\";a:9:{s:3:\"url\";s:85:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST-1568x882.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:30:\"2021/03/TEST-TEST-1568x882.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:2:\"s3\";a:9:{s:3:\"url\";s:76:\"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/TEST-TEST.jpg\";s:6:\"bucket\";s:19:\"wordpress-bucket-up\";s:7:\"privacy\";s:11:\"public-read\";s:3:\"key\";s:21:\"2021/03/TEST-TEST.jpg\";s:8:\"provider\";s:2:\"s3\";s:1:\"v\";s:5:\"4.0.2\";s:9:\"optimized\";b:0;s:7:\"options\";a:0:{}s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-03-19 17:09:27','2021-03-19 17:09:27','<!-- wp:list -->\n<ul><li>TEST</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','TEST - TEST','','publish','open','open','','hello-world','','','2021-03-19 17:25:41','2021-03-19 17:25:41','',0,'http://192.168.50.206/?p=1',0,'post','',0),(4,1,'2021-03-19 17:09:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-03-19 17:09:34','0000-00-00 00:00:00','',0,'http://192.168.50.206/?p=4',0,'post','',0),(9,1,'2021-03-19 17:24:22','2021-03-19 17:24:22','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:21:56\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.50.206/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:21:56\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:21:56\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"twentytwentyone::background_image\": {\n        \"value\": \"http://192.168.50.206/wp-content/uploads/2021/03/TEST2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"twentytwentyone::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"twentytwentyone::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"twentytwentyone::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"twentytwentyone::display_title_and_tagline\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:23:10\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"twentytwentyone::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"twentytwentyone::display_excerpt_or_full_post\": {\n        \"value\": \"excerpt\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:10\"\n    },\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#242823\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:24:22\"\n    }\n}','','','trash','closed','closed','','9f38204b-33cc-4344-ad44-3a2d5a85ed02','','','2021-03-19 17:24:22','2021-03-19 17:24:22','',0,'http://192.168.50.206/?p=9',0,'customize_changeset','',0),(10,1,'2021-03-19 17:22:51','2021-03-19 17:22:51','','TEST2','','inherit','open','closed','','test2','','','2021-03-19 17:22:51','2021-03-19 17:22:51','',0,'http://192.168.50.206/wp-content/uploads/2021/03/TEST2.jpg',0,'attachment','image/jpeg',0),(17,1,'2021-03-19 17:25:41','2021-03-19 17:25:41','<!-- wp:list -->\n<ul><li>TEST</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','TEST - TEST','','inherit','closed','closed','','1-revision-v1','','','2021-03-19 17:25:41','2021-03-19 17:25:41','',1,'http://192.168.50.206/?p=17',0,'revision','',0),(18,1,'2021-03-19 17:36:00','2021-03-19 17:36:00','{\n    \"twentytwentyone::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-19 17:36:00\"\n    }\n}','','','trash','closed','closed','','403b08f8-d3ca-4f7f-b57f-c21a82dc0d9b','','','2021-03-19 17:36:00','2021-03-19 17:36:00','',0,'http://192.168.50.206/index.php/2021/03/19/403b08f8-d3ca-4f7f-b57f-c21a82dc0d9b/',0,'customize_changeset','',0),(19,1,'2021-03-22 09:38:02','2021-03-22 09:38:02','','TEST1','','inherit','open','closed','','test1','','','2021-03-22 09:38:02','2021-03-22 09:38:02','',0,'http://192.168.50.206/wp-content/uploads/2021/03/TEST1.jpg',0,'attachment','image/jpeg',0),(20,1,'2021-03-22 09:38:36','2021-03-22 09:38:36','{\n    \"twentytwentyone::background_image\": {\n        \"value\": \"https://wordpress-bucket-up.s3.eu-west-1.amazonaws.com/2021/03/KBwK4jPG-TEST1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-22 09:38:36\"\n    }\n}','','','trash','closed','closed','','9942579f-d433-47fd-86b6-277cb677a148','','','2021-03-22 09:38:36','2021-03-22 09:38:36','',0,'http://192.168.50.206/index.php/2021/03/22/9942579f-d433-47fd-86b6-277cb677a148/',0,'customize_changeset','',0),(23,1,'2021-03-22 10:40:51','2021-03-22 10:40:51','','TEST-TEST','','inherit','open','closed','','test-test','','','2021-03-22 10:40:51','2021-03-22 10:40:51','',0,'http://192.168.50.206/wp-content/uploads/2021/03/TEST-TEST.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','wordpressuser'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','0'),(16,1,'session_tokens','a:2:{s:64:\"2770e614e7c3b612cc6686f4424721caa4bc55574063324f1b630b3dfa3c8e1f\";a:4:{s:10:\"expiration\";i:1616493745;s:2:\"ip\";s:14:\"192.168.50.219\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:86.0) Gecko/20100101 Firefox/86.0\";s:5:\"login\";i:1616320945;}s:64:\"5759451bc2b907b18fe9c976c916721698a31e16086fcd5a27c1a79708f3f3fe\";a:4:{s:10:\"expiration\";i:1616578479;s:2:\"ip\";s:14:\"192.168.50.219\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:86.0) Gecko/20100101 Firefox/86.0\";s:5:\"login\";i:1616405679;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.50.0\";}'),(19,1,'wp_user-settings','libraryContent=browse'),(20,1,'wp_user-settings-time','1616406557');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wordpressuser','$P$B3A4TpU4OToC2xy5X0kEsNQQ0KkeON1','wordpressuser','wordpress@local.local','http://192.168.50.206','2021-03-19 17:09:27','',0,'wordpressuser');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 11:48:21
