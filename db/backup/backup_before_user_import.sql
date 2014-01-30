-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: xtranet
-- ------------------------------------------------------
-- Server version	5.1.69

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
INSERT INTO `active_admin_comments` VALUES (1,'admin','Testing','1','AdminUser',1,'AdminUser','2013-11-11 14:49:55','2013-11-11 14:49:55');
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'xnet.angostura@gmail.com','$2a$10$XzCtLZMoRSypTofE8jhyg.UFEQ2Czf3Nqak8zdaNobLx/g2iJpWqC',NULL,NULL,NULL,82,'2014-01-23 21:31:47','2014-01-23 20:07:12','190.213.8.123','190.213.8.123','2013-11-07 20:54:27','2014-01-23 22:02:49'),(2,'dion.santana@gmail.com','$2a$10$ppkgjtJ0aREi2x787Kx2heXlnP3Jdproaj3bg6d8Wy4Aav9k0vVPq',NULL,NULL,NULL,3,'2014-01-14 20:15:52','2014-01-14 17:28:40','190.213.75.201','190.213.75.201','2014-01-14 15:51:35','2014-01-14 20:15:52');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles`
--

DROP TABLE IF EXISTS `admin_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users_roles` (
  `admin_user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  UNIQUE KEY `admin_users_roles_index` (`admin_user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles`
--

LOCK TABLES `admin_users_roles` WRITE;
/*!40000 ALTER TABLE `admin_users_roles` DISABLE KEYS */;
INSERT INTO `admin_users_roles` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `admin_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `post_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (15,'Global Sale Mechanics','Global_Sales_Promo_Mechanics.pdf',NULL,29,'2014-01-07 21:11:02','2014-01-07 21:11:02'),(16,'Angostura Rum Masters','ANGOSTURA_-_RUM_MASTERS.zip',NULL,31,'2014-01-08 16:54:53','2014-01-08 16:54:53'),(17,'San Fran Comp','San_Fran_Comp_Medals.zip',NULL,31,'2014-01-08 16:54:53','2014-01-08 16:54:53'),(19,'Rum Awards','Rum_awards__Adv.pdf',NULL,32,'2014-01-08 17:15:16','2014-01-08 17:15:16'),(20,'Ukraine Advetorial','Ukraine_Adv.pdf',NULL,33,'2014-01-08 17:17:27','2014-01-08 17:17:27'),(21,'Angosture Vive 1919 PDF','Angostura_Vive_1919__Adv.pdf',NULL,34,'2014-01-08 17:23:36','2014-01-08 17:23:36'),(22,'NY Rum Launch','NY_Rum_Launch_Adv.pdf',NULL,35,'2014-01-08 17:28:44','2014-01-08 17:28:44'),(23,'Angostura Global Cocktail Challenge Map','Angostura_GCC_ad_1_-_map.pdf',NULL,36,'2014-01-08 17:39:36','2014-01-08 17:39:36'),(24,'Trinidad Recipes','Trinidad_Recipes_01.pdf',NULL,37,'2014-01-08 17:52:31','2014-01-08 17:52:31'),(25,'Other Recipes','Other_Recipes_01.pdf',NULL,37,'2014-01-08 17:52:31','2014-01-08 17:52:31'),(26,'Angostura Bitters Enhancing Logos pdf','Angostura_Bitters_ENhancing_Logos_11_Vector.pdf',NULL,38,'2014-01-08 18:00:12','2014-01-08 18:00:12'),(27,'Angostura Bitters Enhancing Logos jpg','Angostura_Bitters_ENhancing_Logos_11.jpg',NULL,38,'2014-01-08 18:00:12','2014-01-08 18:00:12'),(28,'ANGOSTURA1revised PSD','ANGOSTURA1revised.psd',NULL,39,'2014-01-08 18:37:42','2014-01-08 18:37:42'),(29,'1824 Carton Strut','1824_Carton_strut.jpg',NULL,40,'2014-01-08 18:46:18','2014-01-08 18:46:18'),(30,'1919 Carton Strut','1919_Carton_strut.jpg',NULL,41,'2014-01-08 18:50:48','2014-01-08 18:50:48'),(31,'Low res video for emails','Angostura_low_res_for_emails.mov',NULL,42,'2014-01-08 18:57:49','2014-01-08 18:57:49'),(32,'Australia Angostura Rum Distributor Best Practice Trinidad Feb 2012','Australia_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:19:08','2014-01-08 19:19:08'),(33,'Baltic Angostura Rum Distributor Best Practice Trinidad Feb 2012','Baltics_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:19:08','2014-01-08 19:19:08'),(34,'France Angostura Rum Distributor Best Practice Trinidad Feb 2012','France_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:19:08','2014-01-08 19:19:08'),(35,'Russia Angostura Rum Distributor Best Practice Trinidad Feb 2012','Russia_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:19:08','2014-01-08 19:19:08'),(36,'Taiwan Angostura Rum Distributor Best Practice Trinidad Feb 2012','Taiwan_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:19:08','2014-01-08 19:23:37'),(37,'UK Angostura Rum Distributor Best Practice Trinidad Feb 2012','UK_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:23:37','2014-01-08 19:23:37'),(38,'USA Angostura Rum Distributor Best Practice Trinidad Feb 2012','USA_-_Angostura_Rum_Distributor_Best_Practice_Trinidad_Feb_2012.pdf',NULL,43,'2014-01-08 19:23:37','2014-01-08 19:23:37'),(39,'Media Mailer','Media_Mailer_Pack.pdf',NULL,44,'2014-01-08 19:37:21','2014-01-08 19:37:21'),(40,'Timeline Spreadsheet','22._Timeline.xls',NULL,45,'2014-01-08 19:48:46','2014-01-08 19:48:46');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Brand Guidelines','Download the Brand Guidelines for our Bitters and Rum ranges to help us ensure that all marketing, sales and communications materials customised and created in the field maintain brand consistency.','Download the Brand Guidelines for our Bitters and Rum ranges to help us ensure that all marketing, sales and communications materials customised and created in the field maintain brand consistency.','2013-11-29 20:48:11','2014-01-07 20:52:27','Angostura_logo_big_regular_regular.png'),(3,'Brand Education','This is without an image','Testing without an image','2013-11-29 20:51:59','2013-11-29 20:56:22',NULL),(4,'Downloads','','','2013-12-02 15:38:03','2013-12-02 15:38:03',NULL),(5,'On Trade Promos','','','2013-12-02 15:38:33','2013-12-02 15:38:33',NULL),(6,'Off Trade Promos','','','2013-12-02 15:38:55','2013-12-02 15:38:55',NULL),(7,'Press Releases','','','2013-12-02 15:41:05','2013-12-02 15:41:05',NULL),(8,'Presentations','','','2013-12-02 15:42:21','2013-12-02 15:42:21',NULL),(9,'Toolkits','','','2013-12-02 15:42:45','2013-12-02 15:42:45',NULL),(10,'Production Techniques','','','2013-12-02 16:04:33','2013-12-02 16:04:33',NULL),(11,'Technical Specifications','','','2013-12-02 16:04:58','2013-12-02 16:04:58',NULL),(12,'Brand History','','<a href=\"http://www.angostura.com/OurBusiness/History\" target=\"_blank\">View brand history on public angostura site </a>','2013-12-30 01:21:14','2013-12-30 01:54:48',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks`
--

DROP TABLE IF EXISTS `cms_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cms_blocks_on_page_id_and_identifier` (`page_id`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks`
--

LOCK TABLES `cms_blocks` WRITE;
/*!40000 ALTER TABLE `cms_blocks` DISABLE KEYS */;
INSERT INTO `cms_blocks` VALUES (1,1,'content','<div class=\"welcome\">\r\n					<p class=\"welcome_header\" >\r\n  						Welcome\r\n					</p><!-- .welcome_header -->\r\n                    <p class=\"welcome_text\" >Welcome to the Angostura Extranet. This site has been developed to provide its users with an easy to use one-stop shop for all Angostura brand information. The menu on the left navigates information about our products and team, ranging from Brand Guidelines and Technical Specs to details on POS and Promotions. Search the Downloads section to find approved logos and images to use in your activities. Keep checking our site for all the latest Angostura news, product information and activities.\r\n      				<br><br>\r\n \r\n					If there is anything you cannot find or would like to see on this site please let us know.\r\n   					<br><br>\r\n					Alison & Brian</p><!-- .welcome_header -->\r\n                    <br /><br />\r\n        			<div class=\"whats_new\">\r\n                    	WHAT\'S NEW\r\n                    </div>\r\n                </div> <!-- .welcome -->\r\n                <div id=\"home_tabs\" >\r\n					  <ul>\r\n    						<li><a href=\"#tabs-1\">POS</a></li>\r\n    						<li><a href=\"#tabs-2\">PR</a></li>\r\n    						<li><a href=\"#tabs-3\">Downloads</a></li>\r\n  					  </ul>\r\n  					  <div id=\"tabs-1\">\r\n    						<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>\r\n  					   </div>\r\n  					   <div id=\"tabs-2\">\r\n    						<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>\r\n  					  </div>\r\n  					  <div id=\"tabs-3\">\r\n    						<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>\r\n    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>\r\n  					   </div>\r\n				</div><!-- #home_tabs -->','2013-11-11 15:18:36','2013-11-21 23:14:50'),(2,2,'content','','2013-11-11 18:30:46','2013-11-11 18:30:46'),(3,3,'content','','2013-11-11 18:32:46','2013-11-11 18:32:46'),(4,4,'content','','2013-11-11 18:33:29','2013-11-11 18:33:29'),(5,5,'content','','2013-11-11 18:34:45','2013-11-11 18:34:45'),(6,6,'content','','2013-11-11 18:36:21','2013-11-11 18:36:21'),(7,7,'content','','2013-11-11 18:37:36','2013-11-11 18:37:36'),(9,9,'content','','2013-11-29 18:44:50','2013-11-29 18:44:50');
/*!40000 ALTER TABLE `cms_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_categories`
--

DROP TABLE IF EXISTS `cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorized_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_cms_categories_on_site_id_and_categorized_type_and_label` (`site_id`,`categorized_type`,`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_categories`
--

LOCK TABLES `cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_categorizations`
--

DROP TABLE IF EXISTS `cms_categorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_categorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `categorized_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorized_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_cms_categorizations_on_cat_id_and_catd_type_and_catd_id` (`category_id`,`categorized_type`,`categorized_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_categorizations`
--

LOCK TABLES `cms_categorizations` WRITE;
/*!40000 ALTER TABLE `cms_categorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_categorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_files`
--

DROP TABLE IF EXISTS `cms_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `block_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_file_size` int(11) NOT NULL,
  `description` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cms_files_on_site_id_and_block_id` (`site_id`,`block_id`),
  KEY `index_cms_files_on_site_id_and_file_file_name` (`site_id`,`file_file_name`),
  KEY `index_cms_files_on_site_id_and_label` (`site_id`,`label`),
  KEY `index_cms_files_on_site_id_and_position` (`site_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_files`
--

LOCK TABLES `cms_files` WRITE;
/*!40000 ALTER TABLE `cms_files` DISABLE KEYS */;
INSERT INTO `cms_files` VALUES (9,1,NULL,'History Map Regular Regular','history_map_regular_regular.jpg','image/jpeg',179393,NULL,0,'2013-11-28 21:59:36','2013-11-28 21:59:36');
/*!40000 ALTER TABLE `cms_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_layouts`
--

DROP TABLE IF EXISTS `cms_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `app_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `css` mediumtext COLLATE utf8_unicode_ci,
  `js` mediumtext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `is_shared` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_cms_layouts_on_site_id_and_identifier` (`site_id`,`identifier`),
  KEY `index_cms_layouts_on_parent_id_and_position` (`parent_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_layouts`
--

LOCK TABLES `cms_layouts` WRITE;
/*!40000 ALTER TABLE `cms_layouts` DISABLE KEYS */;
INSERT INTO `cms_layouts` VALUES (1,1,NULL,'application','Monster','monster','				{{ cms:page:content:rich_text }}\r\n      	   ','','',0,0,'2013-11-11 15:18:21','2013-11-29 14:20:45');
/*!40000 ALTER TABLE `cms_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `target_page_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `children_count` int(11) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `is_shared` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cms_pages_on_parent_id_and_position` (`parent_id`,`position`),
  KEY `index_cms_pages_on_site_id_and_full_path` (`site_id`,`full_path`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages`
--

LOCK TABLES `cms_pages` WRITE;
/*!40000 ALTER TABLE `cms_pages` DISABLE KEYS */;
INSERT INTO `cms_pages` VALUES (1,1,1,NULL,NULL,'Home',NULL,'/','				<div class=\"welcome\">\r\n					<p class=\"welcome_header\" >\r\n  						Welcome\r\n					</p><!-- .welcome_header -->\r\n                    <p class=\"welcome_text\" >Welcome to the Angostura Extranet. This site has been developed to provide its users with an easy to use one-stop shop for all Angostura brand information. The menu on the left navigates information about our products and team, ranging from Brand Guidelines and Technical Specs to details on POS and Promotions. Search the Downloads section to find approved logos and images to use in your activities. Keep checking our site for all the latest Angostura news, product information and activities.\r\n      				<br><br>\r\n \r\n					If there is anything you cannot find or would like to see on this site please let us know.\r\n   					<br><br>\r\n					Alison & Brian</p><!-- .welcome_header -->\r\n                    <br /><br />\r\n        			<div class=\"whats_new\">\r\n                    	WHAT\'S NEW\r\n                    </div>\r\n                </div> <!-- .welcome -->\r\n                <div id=\"home_tabs\" >\r\n					  <ul>\r\n    						<li><a href=\"#tabs-1\">POS</a></li>\r\n    						<li><a href=\"#tabs-2\">PR</a></li>\r\n    						<li><a href=\"#tabs-3\">Downloads</a></li>\r\n  					  </ul>\r\n  					  <div id=\"tabs-1\">\r\n    						<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>\r\n  					   </div>\r\n  					   <div id=\"tabs-2\">\r\n    						<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>\r\n  					  </div>\r\n  					  <div id=\"tabs-3\">\r\n    						<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>\r\n    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>\r\n  					   </div>\r\n				</div><!-- #home_tabs -->\r\n      	   ',0,6,1,0,'2013-11-11 15:18:36','2013-11-21 23:14:50'),(2,1,1,1,NULL,'Brands','brands','/brands',NULL,0,1,1,0,'2013-11-11 18:30:45','2013-11-11 18:30:45'),(3,1,1,1,NULL,'A&P','ap','/ap',NULL,1,0,1,0,'2013-11-11 18:32:46','2013-11-11 18:32:46'),(4,1,1,1,NULL,'Products','products','/products',NULL,2,0,1,0,'2013-11-11 18:33:29','2013-11-11 18:33:29'),(5,1,1,1,NULL,'Resources','resources','/resources',NULL,3,0,1,0,'2013-11-11 18:34:45','2013-11-11 18:34:45'),(6,1,1,1,NULL,'Events','events','/events',NULL,4,0,1,0,'2013-11-11 18:36:21','2013-11-11 18:36:21'),(7,1,1,1,NULL,'POS &Merchandise','pos','/pos',NULL,5,0,1,0,'2013-11-11 18:37:36','2013-11-11 18:37:36'),(9,1,1,2,NULL,'Test','test','/brands/test','				\r\n      	   ',0,0,1,0,'2013-11-29 18:44:50','2013-11-29 18:44:50');
/*!40000 ALTER TABLE `cms_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_revisions`
--

DROP TABLE IF EXISTS `cms_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cms_revisions_on_rtype_and_rid_and_created_at` (`record_type`,`record_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_revisions`
--

LOCK TABLES `cms_revisions` WRITE;
/*!40000 ALTER TABLE `cms_revisions` DISABLE KEYS */;
INSERT INTO `cms_revisions` VALUES (13,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                    \\t<input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\" value=\\\"\\\"\n  class=\\\"search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n                <span\n  class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Site Admin\n  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n            </span>\\r\\n\\t\n  \\  </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n             <li><a href=\\\"about.asp\\\">POS\n  & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 17:14:56'),(14,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                    \\t<input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\" value=\\\"\\\"\n  class=\\\"monster_search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n\n  \\               <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 17:22:27'),(15,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" size=\\\"35\\\" maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"\\\" class=\\\"monster_search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n\n  \\               <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 17:25:01'),(16,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" size=\\\"20\\\" maxlength=\\\"20\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"\\\" class=\\\"monster_search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n\n  \\               <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 17:42:32'),(17,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" size=\\\"20\\\" maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"\\\" class=\\\"monster_search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n\n  \\               <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 17:54:28'),(18,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input class=\\\"search_textfield\\\" type=\\\"text\\\"\n  name=\\\"dsearch\\\" size=\\\"20\\\" maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"Search\\\" class=\\\"monster_search_button\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                </span>\\r\\n\n  \\               <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 18:04:57'),(19,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input type=\\\"text\\\" name=\\\"dsearch\\\" size=\\\"20\\\"\n  maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\" value=\\\"Search\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n\n  \\               </span>\\r\\n                <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 18:14:41'),(20,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input type=\\\"text\\\" name=\\\"dsearch\\\" size=\\\"20\\\"\n  maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\" value=\\\"Go\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n\n  \\               </span>\\r\\n                <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 18:18:47'),(21,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input type=\\\"text\\\" name=\\\"dsearch\\\" size=\\\"20\\\"\n  maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t  <button type=\\\"submit\\\">submit</button>\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n\n  \\               </span>\\r\\n                <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n\\t\\t\\t<li><a\n  href=\\\"default.asp\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"news.asp\\\">BRANDS</a></li>\\r\\n\\t\\t\\t<li><a\n  href=\\\"contact.asp\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"about.asp\\\">PRODUCTS</a></li>\\r\\n\n  \\           <li><a href=\\\"about.asp\\\">RESOURCES</a></li>\\r\\n            <li><a href=\\\"about.asp\\\">EVENTS</a></li>\\r\\n\n  \\            <li><a href=\\\"about.asp\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 18:36:38'),(22,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input type=\\\"text\\\" name=\\\"dsearch\\\" size=\\\"20\\\"\n  maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t  <button type=\\\"submit\\\">submit</button>\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n\n  \\               </span>\\r\\n                <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n         \\t<li><a\n  href=\\\"/\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"/brands\\\">BRANDS</a></li>\\r\\n         \\t<li><a\n  href=\\\"/ap\\\">A&amp;P</a></li>\\r\\n         \\t<li><a href=\\\"/products\\\">PRODUCTS</a></li>\\r\\n\n  \\        \\t<li><a href=\\\"/resources\\\">RESOURCES</a></li>\\r\\n         \\t<li><a href=/\\\"events\\\">EVENTS</a></li>\\r\\n\n  \\        \\t<li><a href=/\\\"pos\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-11 18:38:24'),(23,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \'\'\n','2013-11-11 18:44:40'),(24,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<div id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 18:48:18'),(25,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<script>\\r\\n  $(function() {\\r\\n    $( \\\"#tabs\\\" ).tabs();\\r\\n  });\\r\\n</script>\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 19:05:54'),(26,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<div id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\\r\\n<script>\\r\\n  $(function() {\\r\\n\n    \\   $( \\\"#tabs\\\" ).tabs();\\r\\n  });\\r\\n</script>\"\n','2013-11-11 19:20:54'),(30,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n  </head>\\r\\n  <body>\\r\\n\\r\\n\\t{{ cms:snippet:header\n  }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:26:27'),(31,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{\n  cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:29:28'),(32,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head><link rel=\\\"stylesheet\\\" \\\"/system/cms/files/files/000/000/008/original/monster.css\\\"\n  />\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:30:57'),(33,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link rel=\\\"stylesheet\\\" \\\"http://localhost:3000/system/cms/files/files/000/000/008/original/monster.css\\\"\n  />\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:32:15'),(34,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link rel=\\\"stylesheet\\\" \\\"/system/cms/files/files/000/000/008/original/monster.css\\\"\n  />\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:34:11'),(35,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link rel=\\\"stylesheet\\\" href=\\\"/system/cms/files/files/000/000/008/original/monster.css\\\"\n  />\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:37:10'),(36,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/monster.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header\n  }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:38:47'),(37,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/monster.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\n  \\ </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:39:43'),(38,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/monster.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\n  \\   <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n\n  \\ </script>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:41:28'),(39,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/monster.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\n  \\   <script data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.js?body=1\\\"></script>\\r\\n\n  \\   <script data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery_ujs.js?body=1\\\"></script>\\r\\n\n  \\   <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n\n  \\ </script>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 19:48:30'),(40,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<div id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:02:09'),(41,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\nWelcome\\r\\n\\r\\n<p>Welcome to the Angostura Extranet. This\n    site has been developed to provide its users with an easy to use one-stop shop\n    for all Angostura brand information. The menu on the left navigates information\n    about our products and team, ranging from Brand Guidelines and Technical Specs\n    to details on POS and Promotions. Search the Downloads section to find approved\n    logos and images to use in your activities. Keep checking our site for all the\n    latest Angostura news, product information and activities.\\r\\n \\r\\nIf there is\n    anything you cannot find or would like to see on this site please let us know.\\r\\n\n    \\r\\nAlison & Brian\\r\\n</p>\\r\\n\\r\\n\\r\\n<div id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a\n    href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n    <li><a href=\\\"#tabs-2\\\">Proin\n    dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean lacinia</a></li>\\r\\n  </ul>\\r\\n\n    \\ <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu, rutrum commodo, vehicula tempus,\n    commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam\n    elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus\n    lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula\n    eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla.\n    Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut\n    dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>\\r\\n\n    \\ </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi tincidunt, dui sit amet facilisis\n    feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque\n    molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie\n    lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse\n    sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing\n    adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus.\n    Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas\n    feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare\n    leo nisi vel felis. Mauris consectetur tortor et purus.</p>\\r\\n  </div>\\r\\n  <div\n    id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse\n    potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat,\n    eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu\n    ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales.\n    Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula\n    tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>\\r\\n\n    \\   <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at,\n    magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent\n    blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra\n    blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque.\n    Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat\n    porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum\n    rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero\n    vitae lectus hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:04:38'),(42,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<p class=\\\"welcome-header\\\" >\\r\\n  Welcome\\r\\n</p>\\r\\n\\r\\n<p\n    class=\\\"welcome-text\\\" >Welcome to the Angostura Extranet. This site has been\n    developed to provide its users with an easy to use one-stop shop for all Angostura\n    brand information. The menu on the left navigates information about our products\n    and team, ranging from Brand Guidelines and Technical Specs to details on POS\n    and Promotions. Search the Downloads section to find approved logos and images\n    to use in your activities. Keep checking our site for all the latest Angostura\n    news, product information and activities.\\r\\n \\r\\nIf there is anything you cannot\n    find or would like to see on this site please let us know.\\r\\n \\r\\nAlison & Brian\\r\\n</p>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:07:05'),(43,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<p class=\\\"welcome-header\\\" >\\r\\n  Welcome\\r\\n</p>\\r\\n\\r\\n<p\n    class=\\\"welcome-text\\\" >Welcome to the Angostura Extranet. This site has been\n    developed to provide its users with an easy to use one-stop shop for all Angostura\n    brand information. The menu on the left navigates information about our products\n    and team, ranging from Brand Guidelines and Technical Specs to details on POS\n    and Promotions. Search the Downloads section to find approved logos and images\n    to use in your activities. Keep checking our site for all the latest Angostura\n    news, product information and activities.\\r\\n \\r\\nIf there is anything you cannot\n    find or would like to see on this site please let us know.\\r\\n \\r\\nAlison & Brian\\r\\n</p>\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:10:56'),(44,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<p class=\\\"welcome_header\\\" >\\r\\n  Welcome\\r\\n</p>\\r\\n\\r\\n<p\n    class=\\\"welcome-text\\\" >Welcome to the Angostura Extranet. This site has been\n    developed to provide its users with an easy to use one-stop shop for all Angostura\n    brand information. The menu on the left navigates information about our products\n    and team, ranging from Brand Guidelines and Technical Specs to details on POS\n    and Promotions. Search the Downloads section to find approved logos and images\n    to use in your activities. Keep checking our site for all the latest Angostura\n    news, product information and activities.\\r\\n \\r\\nIf there is anything you cannot\n    find or would like to see on this site please let us know.\\r\\n \\r\\nAlison & Brian\\r\\n</p>\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:14:38'),(45,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<p class=\\\"welcome_header\\\" >\\r\\n  Welcome\\r\\n</p>\\r\\n\\r\\n<p\n    class=\\\"welcome_text\\\" >Welcome to the Angostura Extranet. This site has been\n    developed to provide its users with an easy to use one-stop shop for all Angostura\n    brand information. The menu on the left navigates information about our products\n    and team, ranging from Brand Guidelines and Technical Specs to details on POS\n    and Promotions. Search the Downloads section to find approved logos and images\n    to use in your activities. Keep checking our site for all the latest Angostura\n    news, product information and activities.\\r\\n \\r\\nIf there is anything you cannot\n    find or would like to see on this site please let us know.\\r\\n \\r\\nAlison & Brian\\r\\n</p>\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:19:27'),(46,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\r\\nIf there is anything you cannot find or would like to see on this site please\n    let us know.\\r\\n \\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\">\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:20:47'),(47,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\r\\nIf there is anything you cannot find or would like to see on this site please\n    let us know.\\r\\n \\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\" width=800px >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:21:27'),(48,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\     <br><br>\\r\\n \\r\\nIf there is anything you cannot find or would like to see\n    on this site please let us know.\\r\\n   <br><br>\\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"tabs\\\" width=800px >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-11 20:31:14'),(49,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    \\r\\n    \\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/monster.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\"\n  rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.alerts/jquery.alerts.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.theme.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.datepicker.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.menu.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.autocomplete.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.powertip.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.core.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\r\\n\n  \\   \\r\\n    <script data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery_ujs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/turbolinks.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.core.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.widget.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.accordion.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.position.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.menu.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.autocomplete.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.button.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.datepicker.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.mouse.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.draggable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.resizable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.dialog.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.droppable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-blind.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-bounce.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-clip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-drop.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-explode.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fade.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fold.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-highlight.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-pulsate.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-scale.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-shake.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-slide.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-transfer.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.progressbar.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.selectable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.slider.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.sortable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.spinner.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tabs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tooltip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.all.js?body=1\\\"></script>\\r\\n\n  \\   <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n\n  \\   </script>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 20:31:38'),(50,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    \\r\\n    \\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/monster.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\"\n  rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.alerts/jquery.alerts.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.theme.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.datepicker.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.menu.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.autocomplete.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.powertip.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.core.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\r\\n\n  \\   \\r\\n    <script data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery_ujs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/turbolinks.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.core.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.widget.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.accordion.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.position.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.menu.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.autocomplete.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.button.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.datepicker.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.mouse.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.draggable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.resizable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.dialog.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.droppable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-blind.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-bounce.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-clip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-drop.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-explode.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fade.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fold.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-highlight.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-pulsate.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-scale.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-shake.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-slide.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-transfer.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.progressbar.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.selectable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.slider.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.sortable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.spinner.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tabs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tooltip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.all.js?body=1\\\"></script>\\r\\n\n  \\   <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#tabs\\\" ).home_tabs();\\r\\n  \\t\n  \\ });\\r\\n    </script>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{\n  cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 20:32:10'),(51,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    \\r\\n    \\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/monster.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\"\n  rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.alerts/jquery.alerts.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.theme.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.datepicker.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.menu.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.autocomplete.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.powertip.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.core.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\r\\n\n  \\   \\r\\n    <script data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery_ujs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/turbolinks.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.core.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.widget.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.accordion.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.position.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.menu.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.autocomplete.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.button.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.datepicker.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.mouse.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.draggable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.resizable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.dialog.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.droppable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-blind.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-bounce.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-clip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-drop.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-explode.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fade.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-fold.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-highlight.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-pulsate.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-scale.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-shake.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-slide.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.effect-transfer.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.progressbar.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.selectable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.slider.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.sortable.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.spinner.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tabs.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.tooltip.js?body=1\\\"></script>\\r\\n\\t<script\n  data-turbolinks-track=\\\"true\\\" src=\\\"/assets/jquery.ui.all.js?body=1\\\"></script>\\r\\n\n  \\   <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#home_tabs\\\" ).tabs();\\r\\n  \\t\n  \\ });\\r\\n    </script>\\r\\n  </head>\\r\\n  <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{\n  cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-11 20:33:41'),(52,'Cms::Layout',1,'---\ncontent: \"<html>\\r\\n  <head>\\r\\n    \\r\\n    \\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.tabs.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\n  \\   <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.alerts/jquery.alerts.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.theme.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link\n  data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.datepicker.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.menu.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.ui.autocomplete.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\\t<link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/jquery.powertip.css?body=1\\\"\n  media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n    <link data-turbolinks-track=\\\"true\\\"\n  href=\\\"/assets/jquery.ui.core.css?body=1\\\" media=\\\"all\\\" rel=\\\"stylesheet\\\" />\\r\\n\n  \\   <link data-turbolinks-track=\\\"true\\\" href=\\\"/assets/monster.css?body=1\\\" media=\\\"all\\\"\n  rel=\\\"stylesheet\\\" />\\r\\n\\r\\n    \\r\\n    <script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery_ujs.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/turbolinks.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.core.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.widget.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.accordion.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.position.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.menu.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.autocomplete.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.button.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.datepicker.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.mouse.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.draggable.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.resizable.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.dialog.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.droppable.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-blind.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-bounce.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-clip.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-drop.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-explode.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-fade.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-fold.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-highlight.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-pulsate.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-scale.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-shake.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-slide.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.effect-transfer.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.progressbar.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.selectable.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.slider.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.sortable.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.spinner.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.tabs.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.tooltip.js?body=1\\\"></script>\\r\\n\\t<script data-turbolinks-track=\\\"true\\\"\n  src=\\\"/assets/jquery.ui.all.js?body=1\\\"></script>\\r\\n    <script>\\r\\n\\t  $(function()\n  {\\r\\n\\t    $( \\\"#home_tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n    </script>\\r\\n  </head>\\r\\n\n  \\ <body>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n  </body>\\r\\n</html>\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-15 14:18:27'),(53,'Cms::Layout',1,'---\ncontent: \"    <script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#home_tabs\\\" ).tabs();\\r\\n\n  \\ \\t  });\\r\\n    </script>\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-15 14:20:36'),(54,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\     <br><br>\\r\\n \\r\\nIf there is anything you cannot find or would like to see\n    on this site please let us know.\\r\\n   <br><br>\\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"home_tabs\\\" >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-15 14:21:10'),(55,'Cms::Layout',1,'---\ncontent: \"\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-15 14:33:34'),(56,'Cms::Layout',1,'---\ncontent: \"\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n\"\ncss: \'\'\njs: \"<script>\\r\\n\\t  $(function() {\\r\\n\\t    $( \\\"#home_tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n</script>\"\n','2013-11-15 14:34:56'),(57,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"header\\\">\\r\\n\\t   \\t\\t<span class=\\\"header_left\\\">\\r\\n       \\t\\t\\t<span\n  class=\\\"logo\\\"><img src=\\\"/system/cms/files/files/000/000/002/original/logo.png\\\"\n  width=\\\"161\\\" height=\\\"56\\\" /></span>\\r\\n\\t   \\t\\t\\t<span class=\\\"tagline\\\">Please\n  Enjoy Responsibly </span>\\r\\n            </span>\\r\\n      \\r\\n\\t  \\t\\t<span class=\\\"header_right\\\">\\r\\n\n  \\           \\t<span class=\\\"search\\\">\\r\\n                \\t<form action=\\\"nada\\\"\n  method=\\\"get\\\">\\r\\n                      <input type=\\\"text\\\" name=\\\"dsearch\\\" size=\\\"20\\\"\n  maxlength=\\\"80\\\"/>\\r\\n\\t    \\t\\t\\t  <button type=\\\"submit\\\">submit</button>\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n\n  \\               </span>\\r\\n                <span class=\\\"topmenu\\\">Help &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n  Site Admin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logout  </span>\\r\\n\n  \\           </span>\\r\\n\\t   </div> \\r\\n       <div class=\\\"mainmenu\\\"><ul>\\r\\n         \\t<li><a\n  href=\\\"/\\\">HOME</a></li>\\r\\n\\t\\t\\t<li><a href=\\\"/brands\\\">BRANDS</a></li>\\r\\n         \\t<li><a\n  href=\\\"/ap\\\">A&amp;P</a></li>\\r\\n         \\t<li><a href=\\\"/products\\\">PRODUCTS</a></li>\\r\\n\n  \\        \\t<li><a href=\\\"/resources\\\">RESOURCES</a></li>\\r\\n         <li><a href=\\\"/events\\\">EVENTS</a></li>\\r\\n\n  \\        <li><a href=\\\"/pos\\\">POS & MERCHANDISE</a></li>\\r\\n\\t</ul></div>\"\n','2013-11-15 14:51:21'),(58,'Cms::Layout',1,'---\ncontent: \"\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text }}\\r\\n\"\ncss: \'\'\njs: \'\'\n','2013-11-15 14:53:26'),(59,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\     <br><br>\\r\\n \\r\\nIf there is anything you cannot find or would like to see\n    on this site please let us know.\\r\\n   <br><br>\\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"home_tabs\\\" >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\\r\\n\\r\\n    <script>\\r\\n\\t  $(function()\n    {\\r\\n\\t    $( \\\"#home_tabs\\\" ).tabs();\\r\\n  \\t  });\\r\\n    </script>\"\n','2013-11-15 14:57:25'),(60,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                    \\tLogo\\r\\n                    </div>\\r\\n                \\t<div\n  id=\\\"tagline\\\" class=\\\"header_item float_left\\\">\\r\\n                    \\tTagline\\r\\n\n  \\                   </div>\\r\\n                </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n\n  \\               \\t<div id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\       \\r\\n        <div class=\\\"background\\\">    \\r\\n      \\t  <div class=\\\"navigation\\\">\\r\\n\n  \\         \\t<ul class=\\\"nav_ul float_left_clear_both\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       </div>\"\n','2013-11-15 15:20:30'),(61,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\       \\r\\n        <div class=\\\"background\\\">    \\r\\n      \\t  <div class=\\\"navigation\\\">\\r\\n\n  \\         \\t<ul class=\\\"nav_ul float_left_clear_both\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       </div>\"\n','2013-11-15 15:29:52'),(62,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\       \\r\\n        <div id=\\\"nav_background\\\" class=\\\"background\\\">    \\r\\n      \\t\n  \\ <div class=\\\"navigation\\\">\\r\\n          \\t<ul class=\\\"nav_ul float_left_clear_both\\\">\\r\\n\n  \\       \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test1</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n\n  \\       \\t</ul>\\r\\n          </div>\\r\\n        </div>\"\n','2013-11-15 15:42:09'),(63,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\           \\r\\n      \\t  <div class=\\\"navigation\\\">\\r\\n          \\t<ul class=\\\"nav_ul\n  float_left_clear_both\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n            \\t<li><a\n  href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       \"\n','2013-11-15 15:47:51'),(64,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\           \\r\\n      \\t  <div id=\\\"navigation\\\" class=\\\"background\\\">\\r\\n          \\t<ul\n  class=\\\"nav_ul float_left_clear_both\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       \"\n','2013-11-15 16:08:56'),(65,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div id=\\\"he class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\           \\r\\n      \\t  <div id=\\\"navigation\\\" class=\\\"background\\\">\\r\\n          \\t<ul\n  class=\\\"nav_ul\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n            \\t<li><a\n  href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       \"\n','2013-11-15 16:10:02'),(66,'Cms::Snippet',1,'---\ncontent: \"    \\t<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n\n  \\           \\t<div class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo\n  float_left\\\">\\r\\n                      <img src=\\\"system/cms/files/files/000/000/002/original/logo.png\\\"/>\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tTagline\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\tTop\n  Menu\\r\\n                    </div>\\r\\n                \\t<div id=\\\"search_box\\\" class=\\\"header_item\n  float_right\\\">\\r\\n                    \\tSearch\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n    \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\n  \\           \\r\\n      \\t  <div id=\\\"navigation\\\" class=\\\"background\\\">\\r\\n          \\t<ul\n  class=\\\"nav_ul\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">Test</a></li>\\r\\n            \\t<li><a\n  href=\\\"#\\\">Test1</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test2</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test3</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test4</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test5</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">Test6</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">Test7</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n\n  \\       \"\n','2013-11-15 17:58:20'),(67,'Cms::Layout',1,'---\ncontent: \"<div id=\\\"container\\\">\\r\\n\\t{{ cms:snippet:header }}\\r\\n\\t{{ cms:page:content:text\n  }}\\r\\n</div>\"\ncss: \'\'\njs: \'\'\n','2013-11-15 18:01:04'),(68,'Cms::Snippet',1,'---\ncontent: \"\\t  <div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n            \\t<div\n  class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo float_left\\\">\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tPlease Enjoy Responsibly\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\t<ul\n  class=\\\"topnav_ul\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a href=\\\"#\\\">Help</a></li>\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">Logout</a></li>\\r\\n                        </ul>\\r\\n                    </div>\\r\\n\n  \\               \\t<div id=\\\"search_box\\\" class=\\\"header_item float_right\\\">\\r\\n\n  \\                   <form action=\\\"nada\\\" method=\\\"get\\\">\\r\\n                    \\t<input\n  type=\\\"text\\\" name=\\\"dsearch\\\" maxlength=\\\"80\\\" />\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"search\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                    </div>\\r\\n                </div>\\r\\n\n  \\   \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n        \"\n','2013-11-15 18:03:13'),(69,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\     <br><br>\\r\\n \\r\\nIf there is anything you cannot find or would like to see\n    on this site please let us know.\\r\\n   <br><br>\\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"home_tabs\\\" >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-15 18:11:15'),(70,'Cms::Snippet',1,'---\ncontent: \"\\t  <div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n            \\t<div\n  class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo float_left\\\">\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tPlease Enjoy Responsibly\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\t<ul\n  class=\\\"topnav_ul\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a href=\\\"#\\\">Help</a></li>\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">Logout</a></li>\\r\\n                        </ul>\\r\\n                    </div>\\r\\n\n  \\               \\t<div id=\\\"search_box\\\" class=\\\"header_item float_right\\\">\\r\\n\n  \\                   <form action=\\\"nada\\\" method=\\\"get\\\">\\r\\n                    \\t<input\n  type=\\\"text\\\" name=\\\"dsearch\\\" maxlength=\\\"80\\\" />\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"search\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                    </div>\\r\\n                </div>\\r\\n\n  \\   \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n\\r\\n\\t    <div class=\\\"background\\\">\n  \\   \\r\\n      \\t  <div class=\\\"navigation\\\">\\r\\n          \\t<ul class=\\\"nav_ul float_left_clear_both\\\">\\r\\n\n  \\       \\t\\t<li><a href=\\\"#\\\">HOME</a></li>\\r\\n\\t\\t\\t\\t<li><a href=\\\"#\\\">BRANDS</a></li>\\r\\n\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t\\t<li><a href=\\\"#\\\">PRODUCTS</a></li>\\r\\n            \\t<li><a\n  href=\\\"#\\\">RESOURCES</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">EVENTS</a></li>\\r\\n\n  \\            \\t<li><a href=\\\"#\\\">POS & MERCHANDISE</a></li>\\r\\n        \\t</ul>\\r\\n\n  \\         </div>\\r\\n        </div>\\r\\n        \"\n','2013-11-15 18:11:45'),(71,'Cms::Layout',1,'---\ncontent: \"<div id=\\\"container\\\">\\r\\n  <div class=\\\"background main\\\">\\r\\n \\t       <div\n  class=\\\"content\\\">\\r\\n\\t\\t\\t\\t{{ cms:snippet:header }}\\r\\n\\t\\t\\t\\t{{ cms:page:content:text\n  }}\\r\\n           </div>\\r\\n  </div>\\r\\n</div>\"\ncss: \'\'\njs: \'\'\n','2013-11-15 18:12:53'),(72,'Cms::Snippet',1,'---\ncontent: \"\\r\\n        \"\n','2013-11-15 18:14:49'),(73,'Cms::Layout',1,'---\ncontent: \"<div id=\\\"container\\\">\\r\\n \\r\\n\\t\\t\\t\\t{{ cms:snippet:header }}\\r\\n\\t\\t\\t\\t{{\n  cms:page:content:text }}\\r\\n</div>\"\ncss: \'\'\njs: \'\'\n','2013-11-15 18:18:31'),(74,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \'\'\n','2013-11-15 18:35:42'),(75,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<br><br>\\r\\n<div class=\\\"welcome\\\">\\r\\n  \\t<p class=\\\"welcome_header\\\"\n    >\\r\\n  \\t\\tWelcome\\r\\n\\t</p>\\r\\n\\r\\n\\t<p class=\\\"welcome_text\\\" >Welcome to the\n    Angostura Extranet. This site has been developed to provide its users with an\n    easy to use one-stop shop for all Angostura brand information. The menu on the\n    left navigates information about our products and team, ranging from Brand Guidelines\n    and Technical Specs to details on POS and Promotions. Search the Downloads section\n    to find approved logos and images to use in your activities. Keep checking our\n    site for all the latest Angostura news, product information and activities.\\r\\n\n    \\     <br><br>\\r\\n \\r\\nIf there is anything you cannot find or would like to see\n    on this site please let us know.\\r\\n   <br><br>\\r\\nAlison & Brian</p>\\r\\n  \\r\\n</div>\\r\\n\\r\\n\\r\\n<br><br><br>\\r\\n\\r\\n\\r\\n<div\n    id=\\\"home_tabs\\\" >\\r\\n  <ul>\\r\\n    <li><a href=\\\"#tabs-1\\\">Nunc tincidunt</a></li>\\r\\n\n    \\   <li><a href=\\\"#tabs-2\\\">Proin dolor</a></li>\\r\\n    <li><a href=\\\"#tabs-3\\\">Aenean\n    lacinia</a></li>\\r\\n  </ul>\\r\\n  <div id=\\\"tabs-1\\\">\\r\\n    <p>Proin elit arcu,\n    rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin\n    mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et\n    lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus\n    sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae\n    ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius\n    sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc\n    tristique tempus lectus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-2\\\">\\r\\n    <p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  </div>\\r\\n  <div id=\\\"tabs-3\\\">\\r\\n    <p>Mauris eleifend est\n    et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula\n    accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non\n    ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque.\n    Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium\n    nec, feugiat nec, luctus a, lacus.</p>\\r\\n    <p>Duis cursus. Maecenas ligula\n    eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi.\n    Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse\n    potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros,\n    id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla\n    mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac,\n    tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas\n    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus\n    hendrerit hendrerit.</p>\\r\\n  </div>\\r\\n</div>\"\n','2013-11-20 20:56:29'),(76,'Cms::Snippet',1,'---\ncontent: \"<div class=\\\"background\\\">\\r\\n        \\t<div class=\\\"header\\\">\\r\\n            \\t<div\n  class=\\\"float_left\\\">\\r\\n                    <div class=\\\"logo float_left\\\">\\r\\n\n  \\                   </div>\\r\\n                \\t<div id=\\\"tagline\\\" class=\\\"header_item\n  float_left\\\">\\r\\n                    \\tPlease Enjoy Responsibly\\r\\n                    </div>\\r\\n\n  \\               </div>\\r\\n                <div class=\\\"float_right\\\">\\r\\n                \\t<div\n  id=\\\"top_menu\\\" class=\\\"header_item float_right\\\">\\r\\n                    \\t<ul\n  class=\\\"topnav_ul\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a href=\\\"#\\\">Help</a></li>\\r\\n\\t\\t\\t\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">Logout</a></li>\\r\\n                        </ul>\\r\\n                    </div>\\r\\n\n  \\               \\t<div id=\\\"search_box\\\" class=\\\"header_item float_right\\\">\\r\\n\n  \\                   <form action=\\\"nada\\\" method=\\\"get\\\">\\r\\n                    \\t<input\n  type=\\\"text\\\" name=\\\"dsearch\\\" maxlength=\\\"80\\\" />\\r\\n\\t    \\t\\t\\t\\t<input type=\\\"submit\\\"\n  value=\\\"search\\\" />\\r\\n\\t\\t\\t\\t\\t</form>\\r\\n                    </div>\\r\\n                </div>\\r\\n\n  \\   \\t\\t</div>\\r\\n        </div><!-- .background -->\\r\\n        \\r\\n        <div\n  class=\\\"background\\\">    \\r\\n      \\t  <div class=\\\"navigation\\\">\\r\\n          \\t<ul\n  class=\\\"nav_ul float_left_clear_both\\\">\\r\\n        \\t\\t<li><a href=\\\"#\\\">HOME</a></li>\\r\\n\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">BRANDS</a></li>\\r\\n\\t\\t\\t\\t<li><a href=\\\"#\\\">A&amp;P</a></li>\\r\\n\\t\\t\\t\\t<li><a\n  href=\\\"#\\\">PRODUCTS</a></li>\\r\\n            \\t<li><a href=\\\"#\\\">RESOURCES</a></li>\\r\\n\n  \\           \\t<li><a href=\\\"#\\\">EVENTS</a></li>\\r\\n             \\t<li><a href=\\\"#\\\">POS\n  & MERCHANDISE</a></li>\\r\\n        \\t</ul>\\r\\n          </div>\\r\\n        </div>\\r\\n\n  \\       \"\n','2013-11-20 21:12:16'),(77,'Cms::Snippet',1,'---\ncontent: \'\'\n','2013-11-20 21:25:36'),(78,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \'\'\n','2013-11-20 21:28:15'),(79,'Cms::Layout',1,'---\ncontent: \"<div id=\\\"container\\\">\\r\\n    {{ cms:snippet:header }}\\r\\n\\t<div class=\\\"background\n  main\\\">\\r\\n \\t       <div class=\\\"content\\\">\\t\\t\\t\\r\\n\\t\\t\\t\\t{{ cms:page:content:text\n  }}\\r\\n      \\t   </div>\\r\\n    </div>\\r\\n</div>\"\ncss: \'\'\njs: \'\'\n','2013-11-21 21:39:56'),(80,'Cms::Page',1,'---\nblocks_attributes:\n- :identifier: content\n  :content: \"<div class=\\\"welcome\\\">\\r\\n                \\t<br /><br />\\r\\n\\t\\t\\t\\t\\t<p\n    class=\\\"welcome_header\\\" >\\r\\n  \\t\\t\\t\\t\\t\\tWelcome\\r\\n\\t\\t\\t\\t\\t</p><!-- .welcome_header\n    -->\\r\\n                    <p class=\\\"welcome_text\\\" >Welcome to the Angostura\n    Extranet. This site has been developed to provide its users with an easy to use\n    one-stop shop for all Angostura brand information. The menu on the left navigates\n    information about our products and team, ranging from Brand Guidelines and Technical\n    Specs to details on POS and Promotions. Search the Downloads section to find approved\n    logos and images to use in your activities. Keep checking our site for all the\n    latest Angostura news, product information and activities.\\r\\n      \\t\\t\\t\\t<br><br>\\r\\n\n    \\r\\n\\t\\t\\t\\t\\tIf there is anything you cannot find or would like to see on this\n    site please let us know.\\r\\n   \\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\tAlison & Brian</p><!--\n    .welcome_header -->\\r\\n                    <br /><br />\\r\\n        \\t\\t\\t<div\n    class=\\\"whats_new\\\">\\r\\n                    \\tWHAT\'S NEW\\r\\n                    </div>\\r\\n\n    \\               </div> <!-- .welcome -->\\r\\n                <div id=\\\"home_tabs\\\"\n    >\\r\\n\\t\\t\\t\\t\\t  <ul>\\r\\n    \\t\\t\\t\\t\\t\\t<li><a href=\\\"#tabs-1\\\">POS</a></li>\\r\\n\n    \\   \\t\\t\\t\\t\\t\\t<li><a href=\\\"#tabs-2\\\">PR</a></li>\\r\\n    \\t\\t\\t\\t\\t\\t<li><a\n    href=\\\"#tabs-3\\\">Downloads</a></li>\\r\\n  \\t\\t\\t\\t\\t  </ul>\\r\\n  \\t\\t\\t\\t\\t  <div\n    id=\\\"tabs-1\\\">\\r\\n    \\t\\t\\t\\t\\t\\t<p>Proin elit arcu, rutrum commodo, vehicula\n    tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris.\n    Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus\n    lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula\n    eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla.\n    Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut\n    dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>\\r\\n\n    \\ \\t\\t\\t\\t\\t   </div>\\r\\n  \\t\\t\\t\\t\\t   <div id=\\\"tabs-2\\\">\\r\\n    \\t\\t\\t\\t\\t\\t<p>Morbi\n    tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra\n    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget\n    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean\n    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent\n    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare\n    consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat.\n    Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere,\n    felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor\n    et purus.</p>\\r\\n  \\t\\t\\t\\t\\t  </div>\\r\\n  \\t\\t\\t\\t\\t  <div id=\\\"tabs-3\\\">\\r\\n\n    \\   \\t\\t\\t\\t\\t\\t<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti.\n    Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue\n    orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora\n    torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu\n    urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus\n    pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>\\r\\n\n    \\   <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at,\n    magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent\n    blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra\n    blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque.\n    Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat\n    porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum\n    rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero\n    vitae lectus hendrerit hendrerit.</p>\\r\\n  \\t\\t\\t\\t\\t   </div>\\r\\n\\t\\t\\t\\t</div><!--\n    #home_tabs -->\"\n','2013-11-21 23:14:50'),(81,'Cms::Layout',1,'---\ncontent: \"\\t\\t\\t\\t{{ cms:page:content:text }}\\r\\n      \\t   \"\ncss: \'\'\njs: \'\'\n','2013-11-25 19:19:32'),(86,'Cms::Layout',1,'---\ncontent: \"\\t\\t\\t\\t{{ cms:page:content:rich_text }}\\r\\n      \\t   \"\ncss: \'\'\njs: \'\'\n','2013-11-29 14:15:06'),(87,'Cms::Layout',1,'---\ncontent: \"\\t\\t\\t\\t{{ cms:page:content:text }}\\r\\n      \\t   \"\ncss: \'\'\njs: \'\'\n','2013-11-29 14:20:45');
/*!40000 ALTER TABLE `cms_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_sites`
--

DROP TABLE IF EXISTS `cms_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `is_mirrored` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_cms_sites_on_hostname` (`hostname`),
  KEY `index_cms_sites_on_is_mirrored` (`is_mirrored`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_sites`
--

LOCK TABLES `cms_sites` WRITE;
/*!40000 ALTER TABLE `cms_sites` DISABLE KEYS */;
INSERT INTO `cms_sites` VALUES (1,'Angostura Extranet','angostura-extranet','localhost','','en',0);
/*!40000 ALTER TABLE `cms_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_snippets`
--

DROP TABLE IF EXISTS `cms_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `is_shared` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_cms_snippets_on_site_id_and_identifier` (`site_id`,`identifier`),
  KEY `index_cms_snippets_on_site_id_and_position` (`site_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_snippets`
--

LOCK TABLES `cms_snippets` WRITE;
/*!40000 ALTER TABLE `cms_snippets` DISABLE KEYS */;
INSERT INTO `cms_snippets` VALUES (1,1,'Header','header','<div id=\"container\">\r\n    	<div class=\"background\" id=\"header_grey_background\">\r\n        <div class=\"background\" id=\"header_gradient_background\">\r\n        	<div class=\"header\">\r\n            	<div class=\"float_left\">\r\n                    <div class=\"logo float_left\"></div>\r\n                	<div id=\"tagline\" class=\"header_item float_left\">\r\n                    	Please Enjoy Responsibly\r\n                    </div>\r\n                </div>\r\n                <div class=\"float_right\">\r\n                	<div id=\"top_menu\" class=\"header_item float_right\">\r\n                    	<ul class=\"topnav_ul\">\r\n							<li><a href=\"#\">Help</a></li>\r\n							<li><a href=\"#\">Logout</a></li>\r\n                        </ul>\r\n                    </div>\r\n                	<div id=\"search_box\" class=\"header_item float_right\">\r\n                    <form action=\"nada\" method=\"get\">\r\n                    	<input type=\"text\" name=\"dsearch\" maxlength=\"80\" />\r\n	    				<input type=\"submit\" value=\"search\" />\r\n					</form>\r\n                    </div>\r\n                </div>\r\n                <div class=\"clear\"><!-- --></div>\r\n    		</div>\r\n        </div><!-- #header_gradient_background -->    \r\n        </div><!-- #header_grey_background -->\r\n        \r\n        <div class=\"background\" id=\"navigation_red_background\">\r\n        <div class=\"background\" id=\"navigation_glow_background\">\r\n      	  <div class=\"navigation\">\r\n          	<ul id=\"menu\" class=\"float_left_clear_both\">\r\n        		<li><a href=\"#\">HOME</a>\r\n                </li>\r\n				<li>\r\n                	<a href=\"#\">BRANDS</a>\r\n                    <ul class=\"sub-menu\">\r\n			            <li>\r\n			                <a href=\"#\">Brand Education</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Brand Guidelines</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Brand History</a>\r\n 			           </li>\r\n			           <li>\r\n			                <a href=\"#\">Brand Team</a>\r\n 			           </li>\r\n			        </ul>\r\n                </li>\r\n				<li><a href=\"#\">A&amp;P</a></li>\r\n				<li><a href=\"#\">PRODUCTS</a>\r\n                	<ul class=\"sub-menu\">\r\n			            <li>\r\n			                <a href=\"SomeWhere\">Product Range</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Production Techniques</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Technical Specs</a>\r\n 			           </li>\r\n			        </ul>\r\n                </li>\r\n            	<li><a href=\"#\">RESOURCES</a>\r\n                	<ul class=\"sub-menu\">\r\n			            <li>\r\n			                <a href=\"#\">Downloads</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">On trade promos</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Off trade promos</a>\r\n 			           </li>\r\n			           <li>\r\n			                <a href=\"#\">PR</a>\r\n 			           </li>\r\n                       <li>\r\n			                <a href=\"#\">Presentations</a>\r\n 			           </li>\r\n                       <li>\r\n			                <a href=\"#\">Toolkits</a>\r\n 			           </li>                       \r\n			        </ul>\r\n                </li>\r\n            	<li><a href=\"#\">EVENTS</a>\r\n                	<ul class=\"sub-menu\">\r\n			            <li>\r\n			                <a href=\"#\">Events Diary</a>\r\n			            </li>\r\n			            <li>\r\n			                <a href=\"#\">Events Gallery</a>\r\n			            </li>\r\n			        </ul>\r\n                </li>\r\n             	<li><a href=\"#\">POS & MERCHANDISE</a></li>\r\n        	</ul>\r\n          </div>\r\n        </div>\r\n        </div>',0,0,'2013-11-11 16:31:30','2013-11-20 21:25:36');
/*!40000 ALTER TABLE `cms_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_documents_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (2,'ok','autorun.inf','2014-01-17 16:07:22','2014-01-17 16:07:22',5),(3,'',NULL,'2014-01-17 19:02:44','2014-01-17 19:02:44',6),(4,'','22._Timeline.xls','2014-01-17 19:04:30','2014-01-17 19:04:30',7),(5,'ummmm','22._Timeline.xls','2014-01-17 19:37:10','2014-01-17 19:37:10',8),(6,'',NULL,'2014-01-20 17:22:22','2014-01-20 17:22:22',4),(7,'',NULL,'2014-01-20 17:41:45','2014-01-20 17:41:45',9),(8,'',NULL,'2014-01-20 17:42:16','2014-01-20 17:42:16',10),(9,'',NULL,'2014-01-20 17:43:33','2014-01-20 17:43:33',11),(10,'yeah','22._Timeline.xls','2014-01-20 17:47:48','2014-01-20 17:47:48',12);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `text` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'d event','2013-12-27 00:00:00','2011_gcc.jpg','dis da ting','da ting is',1,'2013-12-11 17:03:16','2013-12-11 17:46:54'),(5,'yup','2013-12-18 00:00:00','enhancing_the_cocktail.jpg','uh ','huh',2,'2013-12-13 15:31:55','2013-12-13 15:31:55'),(6,'ok','2013-10-13 00:00:00','BBC_Good_Food_Show_Birmingham_November2010_003.jpg','sonny','boy',2,'2013-12-13 15:37:04','2013-12-13 15:37:04'),(7,'d event for d test','2013-12-27 00:00:00','Sacred_lotus_Nelumbo_nucifera.jpg','event description','event text',2,'2013-12-13 18:10:19','2013-12-24 21:15:03'),(8,'what','2013-12-26 00:00:00','5216_1135951171012_5485784_n.jpg','then','ok',2,'2013-12-25 06:14:49','2013-12-25 06:14:49'),(9,'testing with auth','2013-12-28 00:00:00','67858_10200522848665760_1774765984_n.jpg','ok','then',2,'2013-12-25 06:21:29','2013-12-25 06:21:29'),(10,'test','2014-01-02 00:00:00',NULL,'test','test',2,'2013-12-31 21:45:13','2013-12-31 21:45:13'),(11,'testetetes','2013-12-31 00:00:00',NULL,'ewtwet ew','tt wtewt',2,'2013-12-31 21:45:38','2013-12-31 21:45:38'),(12,'Carnival Cooler','2014-02-03 00:00:00',NULL,'test','test',2,'2014-01-09 18:11:40','2014-01-09 18:11:40');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_country_id` (`country_id`),
  KEY `index_galleries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (5,'testr','test','test','2013-12-09 17:23:51','2013-12-09 17:23:51',NULL,2),(7,'hot','hot','paratha','2013-12-13 14:34:11','2013-12-13 14:34:11',NULL,2),(9,'gggllll','ggg','gggg','2013-12-13 18:13:26','2013-12-13 18:14:36',NULL,2);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_gallery_images_on_gallery_id` (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_images`
--

LOCK TABLES `gallery_images` WRITE;
/*!40000 ALTER TABLE `gallery_images` DISABLE KEYS */;
INSERT INTO `gallery_images` VALUES (3,5,'what','hu huh','jillian.jpg','nada','2013-12-09 18:54:02','2013-12-09 18:58:30'),(5,5,'huh ','huh ','history_map_regular_regular.jpg','what','2013-12-09 19:50:05','2013-12-09 19:50:05'),(19,5,'yuh think ','yuh bright','BBC_Good_Food_Show_Birmingham_November2010_003.jpg','ok then','2013-12-10 21:31:21','2013-12-10 21:31:40'),(26,5,'ok ','ok','enhancing_the_cocktail.jpg','test','2013-12-10 23:12:07','2013-12-10 23:12:07'),(27,NULL,'ok','ok then','2011_gcc.jpg','right','2013-12-13 15:03:00','2013-12-13 15:03:14'),(28,NULL,'ok','lets do this','ror_ringer.jpeg','yup','2013-12-13 15:04:11','2013-12-13 15:04:26'),(29,9,'\'\'','lk','Angostura_logo_big_regular_regular.jpg','ll','2013-12-13 18:14:00','2013-12-13 18:14:00');
/*!40000 ALTER TABLE `gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `product_range_id` int(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_posts_on_category_id` (`category_id`),
  KEY `index_posts_on_product_range_id` (`product_range_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (5,'Angostura ® LLB','','2013-11-26 21:08:29','2014-01-07 20:31:31','llb.jpg','',2,6,NULL),(12,'Angostura ® Aromatic Bitters','','2013-12-24 21:02:05','2014-01-07 20:48:43','bitters.png','',2,5,NULL),(14,'Angostura ® Orange Bitters','','2014-01-07 14:37:56','2014-01-07 20:33:23','bitters.png','',2,7,'2009-01-01'),(16,'Angostura ® 1824','','2014-01-07 15:23:16','2014-01-07 15:23:16','ANGOSTURA_12yrs_RUM_1824_750ml.jpg','',2,9,NULL),(17,'Angostura ® 1919','','2014-01-07 15:28:21','2014-01-07 15:28:21','1919.jpg','',2,10,NULL),(18,'Angostura ® 5 Years','','2014-01-07 15:31:57','2014-01-07 15:31:57','5_years.jpg','',2,11,NULL),(19,'Angostura ® 7 Years','','2014-01-07 15:36:31','2014-01-07 15:36:31','angostura-7-year.jpg','',2,12,NULL),(20,'Angostura ® Reserva','','2014-01-07 15:40:16','2014-01-07 15:40:16','AngosturaReserva.jpg','',2,13,NULL),(21,'Angostura ® Aromatic Bitters','','2014-01-07 19:13:14','2014-01-07 20:47:53','bitters.png','',11,5,NULL),(22,'Angostura ® LLB','','2014-01-07 19:14:43','2014-01-07 20:28:23','llb.jpg','',11,6,NULL),(23,'Angostura ® Orange Bitters','','2014-01-07 19:16:21','2014-01-07 20:32:47','bitters.png','',11,7,NULL),(24,'Angostura ® 1824','','2014-01-07 19:19:06','2014-01-07 19:19:06','ANGOSTURA_12yrs_RUM_1824_750ml.jpg','',11,9,NULL),(25,'Angostura ® 1919','','2014-01-07 19:20:30','2014-01-07 19:20:30','1919.jpg','',11,10,NULL),(26,'Angostura ® 5 Year old','','2014-01-07 19:21:55','2014-01-07 19:21:55','5_years.jpg','',11,11,NULL),(27,'Angostura ® 7 Year Old','','2014-01-07 19:23:01','2014-01-07 19:23:01','angostura-7-year.jpg','',11,12,NULL),(28,'Angostura ® Reserva','','2014-01-07 19:23:59','2014-01-07 19:23:59','product_reserva.png','',11,13,NULL),(29,'\'Discover Angostura\' - Global Sales Promotion','<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">How it Works:</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">The promotion is as smooth as the rum we sell.</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">1) Buy X* Angostura Rums (*the choice is yours).&nbsp;</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">2) The consumer then receives a promotional key with premium Angostura key ring (to keep)</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">3) Use the key to open the box</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">4) If the box opens, the consumer wins one of the premiums inside the box.</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Running the \'Discover Angostura\' promotion could not be simpler in your market.&nbsp; It\'s a 4 step process.</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Details and costs of all POS and display items and suggested promotional artwork is available for download and adaption in your market.</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Contact.... Michelle McPherson, Angostura Brand Manager if you want to find out more.</p>','2014-01-07 21:11:02','2014-01-08 17:32:08','Angostura_Promo_Sheet_V2_thumb.jpg','<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">How it Works:</p>\r\n<p style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">The promotion is as smooth as the rum we sell.</p>',5,14,'2014-01-01'),(30,'Angostura Neck Tag ','<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\"><span style=\"font-family: \'Century Gothic\', sans-serif; font-size: 10pt;\">To engage consumers&nbsp;in an off-trade environment, we have develoepd some&nbsp;artwork for an Angostura Bottle Neck Tag.</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\"><span style=\"font-family: \'Century Gothic\', sans-serif; font-size: 10pt;\">Please note this&nbsp;artwork is for&nbsp;visual purposes only and if you are keen to&nbsp;execute in your market we can organise to send you a&nbsp;disc with all the high res relevant files and fonts&nbsp;for you to&nbsp;go ahead.</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\"><span style=\"font-family: \'Century Gothic\', sans-serif; font-size: 10pt;\">Contact Michelle<a style=\"color: #666666;\" href=\"mailto:michelle.mcpherson@angostura.eu\">michelle.mcpherson@angostura.eu</a></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc; margin: 0cm 0cm 0pt;\">&nbsp;</p>','2014-01-07 21:15:50','2014-01-08 17:32:58','Angostura_Neck_Tag_thumb.jpg','<p><span style=\"font-family: \'Century Gothic\', sans-serif; font-size: 13px; line-height: 16px; background-color: #eedfcc;\">To engage consumers&nbsp;in an off-trade environment, we have develoepd some&nbsp;artwork for an Angostura Bottle Neck Tag.</span></p>',6,14,'2014-01-01'),(31,'Awards Artwork 2012','<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura has won the following awards at the San Francisco World Spirits and Rum Masters Competitions 2012.</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><strong><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Rum Masters</span></span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><em><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Gold</span></span></em></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 7yrs</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura Reserva</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 5yrs</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 1919</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 1824</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><strong><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Rum Masters Design</span></span></strong></p>\r\n<p><em style=\"font-family: \'Times New Roman\'; font-size: medium; line-height: 16px; background-color: #dddddd;\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Gold</span></span></em><span style=\"font-family: \'Times New Roman\'; font-size: medium; line-height: 16px; background-color: #dddddd;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 1919</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 1824</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><strong><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">San Francisco Competition</span></span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><em><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Double Gold</span></span></em></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 1824</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><em><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Gold</span></span></em></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Angostura 7yrs</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #dddddd; margin: 0cm 0cm 0pt;\" align=\"left\"><span style=\"color: windowtext; font-size: 10pt;\"><span style=\"font-family: Arial;\">Please find attached medal artwork for download.</span></span></p>','2014-01-08 16:54:53','2014-01-08 16:59:08','S12DBLGOLD_thumb.png','<p><span style=\"font-family: Arial; font-size: 13px; line-height: 16px; background-color: #dddddd;\">Angostura has won the following awards at the San Francisco World Spirits and Rum Masters Competitions 2012.</span></p>',7,14,NULL),(32,'Angostura has the World\'s Most Awarded Rum Range','','2014-01-08 17:05:40','2014-01-08 17:05:40','ad_7_-Rum_awards_thumb.jpg','',7,14,NULL),(33,'Ukraine Savours 1919!','','2014-01-08 17:17:27','2014-01-08 17:31:17','Ukraine_Advertorial_July_2011_thumb.jpg','',7,10,NULL),(34,'Vive Angostura 1919!','','2014-01-08 17:22:20','2014-01-08 17:30:55','Angostura_Vive_1919_thumb.jpg','',7,10,NULL),(35,'Angostura Rums Take New York by Storm','','2014-01-08 17:28:44','2014-01-08 17:28:44','ad_6_-NY_Rum_Launch_thumb.jpg','',7,14,NULL),(36,'Angostura Global Cocktail Challenge Map','','2014-01-08 17:39:36','2014-01-08 17:39:36','GCC_Map_thumb.jpg','',7,5,NULL),(37,'Cocktail Recipes 2013 ','','2014-01-08 17:52:31','2014-01-08 17:52:31','Other_Recipes_01_Page_01_thumb.jpg','',4,5,NULL),(38,'Angostura Bitters Enhancing Cocktails Logo ','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Angostura Bitters&nbsp;</span><em style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Enhancing</em><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Cocktails Logo Creative 2011.</span></p>\r\n<div style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">&nbsp;</div>\r\n<div style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\"><em>Versions available:</em><br />\r\n<div>&nbsp;</div>\r\n<div>Multiple colour guidelines &nbsp;- &nbsp;PDF Vector &nbsp;- &nbsp;JPEG</div>\r\n</div>','2014-01-08 18:00:12','2014-01-08 18:00:12','preview_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Angostura Bitters&nbsp;</span><em style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Enhancing</em><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">Cocktails Logo Creative 2011.</span></p>',4,5,NULL),(39,'Vintage Artwork','','2014-01-08 18:37:42','2014-01-08 18:37:42','POSTER1_thumb.jpg','',4,5,NULL),(40,'1824 Premium Carton','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">1824 Premium Carton Beauty Shot</span></p>','2014-01-08 18:46:18','2014-01-08 18:46:18','1824_Carton_strut_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">1824 Premium Carton Beauty Shot</span></p>',4,9,NULL),(41,'1919 Premium Carton','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">1919 Premium Carton Beauty Shot</span></p>','2014-01-08 18:50:48','2014-01-08 18:51:49','1919_Carton_strut_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">1919 Premium Carton Beauty Shot</span></p>',4,10,NULL),(42,'Legacy Video','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">High Resoultion files are available via&nbsp;</span><a style=\"color: #666666; font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\" href=\"mailto:elizabeth.teape@burnstewart.com\">elizabeth.teape@burnstewart.com</a></p>','2014-01-08 18:57:49','2014-01-08 18:57:49','Legacy_box_3_final_rgb_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">High Resoultion files are available via&nbsp;</span><a style=\"color: #666666; font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\" href=\"mailto:elizabeth.teape@burnstewart.com\">elizabeth.teape@burnstewart.com</a></p>',4,14,NULL),(43,'Presentations & Brand Plans: Angostura Rum Distributor Best Practice Trinidad Feb 2012','','2014-01-08 19:19:08','2014-01-08 19:19:08','USA_thumb.jpg','',8,14,NULL),(44,'Media Mailer','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">This is a photo of the mailer that you can send to media. You cannot download it from here. &nbsp;To request full editable artwork please contact Nik Robinson nik@cabanaboys.com.au</span></p>','2014-01-08 19:37:21','2014-01-08 19:37:45','mailer_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">This is a photo of the mailer that you can send to media.&nbsp;</span></p>',9,14,NULL),(45,'Timeline','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">A timeline template to help plan your launch</span></p>','2014-01-08 19:48:46','2014-01-08 19:48:46','24_thumb.jpg','<p><span style=\"font-family: verdana, arial, helvetica, sans-serif; line-height: 16px; background-color: #eedfcc;\">A timeline template to help plan your launch</span></p>',9,14,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_ranges_users`
--

DROP TABLE IF EXISTS `product_ranges_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_ranges_users` (
  `taxonomy_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_ranges_users`
--

LOCK TABLES `product_ranges_users` WRITE;
/*!40000 ALTER TABLE `product_ranges_users` DISABLE KEYS */;
INSERT INTO `product_ranges_users` VALUES (5,2),(6,2),(7,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(5,1),(6,1),(7,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(5,21),(6,21),(7,21),(9,21),(10,21),(11,21),(12,21),(13,21),(14,21);
/*!40000 ALTER TABLE `product_ranges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_categories`
--

DROP TABLE IF EXISTS `promotion_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_categories`
--

LOCK TABLES `promotion_categories` WRITE;
/*!40000 ALTER TABLE `promotion_categories` DISABLE KEYS */;
INSERT INTO `promotion_categories` VALUES (1,'Signage','','2014-01-16 15:25:11','2014-01-16 15:25:11');
/*!40000 ALTER TABLE `promotion_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_payment_statuses`
--

DROP TABLE IF EXISTS `promotion_payment_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_payment_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_payment_statuses`
--

LOCK TABLES `promotion_payment_statuses` WRITE;
/*!40000 ALTER TABLE `promotion_payment_statuses` DISABLE KEYS */;
INSERT INTO `promotion_payment_statuses` VALUES (1,'Completed','','2014-01-16 15:24:33','2014-01-16 15:24:33'),(2,'Processing','','2014-01-16 15:24:51','2014-01-16 15:24:51');
/*!40000 ALTER TABLE `promotion_payment_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `promotion_category_id` int(11) DEFAULT NULL,
  `budget_amount` decimal(10,0) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_requested` decimal(10,0) DEFAULT NULL,
  `split` int(11) DEFAULT NULL,
  `amount_reimbursed` decimal(10,0) DEFAULT NULL,
  `promotion_payment_status_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sales_volume` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotions_on_region_id` (`region_id`),
  KEY `index_promotions_on_brand_id` (`brand_id`),
  KEY `index_promotions_on_promotion_category_id` (`promotion_category_id`),
  KEY `index_promotions_on_user_id` (`user_id`),
  KEY `index_promotions_on_currency` (`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (12,1,5,1,'23','usd','45',NULL,NULL,NULL,NULL,NULL,'2014-01-01','2014-01-31',NULL,'2014-01-20 17:47:48','2014-01-20 17:47:48','ok',1);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Root','','2014-01-14 15:49:54','2014-01-14 15:49:54'),(2,'Admin','','2014-01-14 16:05:58','2014-01-14 16:05:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131107194051'),('20131107205138'),('20131107205143'),('20131107214701'),('20131107214702'),('20131107214703'),('20131107214704'),('20131107214705'),('20131107214706'),('20131107214707'),('20131107214708'),('20131107214709'),('20131107214710'),('20131107214711'),('20131107214712'),('20131107214713'),('20131107214714'),('20131107214715'),('20131107214716'),('20131107214717'),('20131107214718'),('20131107214719'),('20131107214720'),('20131107214721'),('20131107214722'),('20131107214723'),('20131107214724'),('20131107214725'),('20131107214726'),('20131107214727'),('20131107214728'),('20131107214729'),('20131107214730'),('20131107214731'),('20131107214732'),('20131107214733'),('20131107214734'),('20131107214735'),('20131107214736'),('20131107214737'),('20131107214738'),('20131107214739'),('20131107214740'),('20131107214741'),('20131107214742'),('20131107214743'),('20131107214744'),('20131107214745'),('20131107214746'),('20131107214747'),('20131107214748'),('20131107214749'),('20131107214750'),('20131107214751'),('20131107214752'),('20131107214753'),('20131107214754'),('20131107214755'),('20131107214756'),('20131107214757'),('20131107214758'),('20131107214759'),('20131107214760'),('20131107214761'),('20131107214762'),('20131107214763'),('20131107214764'),('20131107214765'),('20131107214766'),('20131107214767'),('20131107214768'),('20131107214769'),('20131107214770'),('20131107214771'),('20131107214772'),('20131107214773'),('20131107214774'),('20131107214775'),('20131107214776'),('20131107214777'),('20131107214778'),('20131107214779'),('20131107214780'),('20131107214781'),('20131107214782'),('20131107214783'),('20131107214784'),('20131107214785'),('20131107214786'),('20131107214787'),('20131107214788'),('20131107214789'),('20131107214790'),('20131107214791'),('20131107214792'),('20131107214793'),('20131111145116'),('20131112183835'),('20131114205030'),('20131126183621'),('20131127174549'),('20131127191349'),('20131129154558'),('20131129160113'),('20131129163706'),('20131129194017'),('20131202174933'),('20131203194055'),('20131203203034'),('20131209142755'),('20131209143300'),('20131209145516'),('20131209175054'),('20131209175429'),('20131209182211'),('20131211162400'),('20131216184625'),('20131219155905'),('20140113170601'),('20140113172520'),('20140115204826'),('20140116134254'),('20140116135433'),('20140116172641'),('20140116174519'),('20140116214935'),('20140116215414'),('20140117174938'),('20140117175031'),('20140120144704'),('20140121192053');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Onie','Stark','8954 Gregg Land','Suite 138','Rogahnport','16804','591.973.1863',NULL,NULL,NULL,48,49,'2013-11-07 21:48:35','2013-11-07 21:48:35'),(2,'Desiree','Lockman','22545 Gleason Parkway','Apt. 632','Keenanton','16804','1-703-051-9693 x1608',NULL,NULL,NULL,48,49,'2013-11-07 21:48:35','2013-11-07 21:48:35'),(3,'Dion','Santana','blah','blah','blah','123456','18684829601','Arima',NULL,NULL,NULL,125,'2013-12-03 14:53:21','2013-12-03 14:53:21'),(4,'Dion','Santana','blah','blah','blah','123456','18684829601','Arima',NULL,NULL,NULL,125,'2013-12-03 14:53:21','2013-12-03 14:53:21'),(5,'Dion','Santana','blah','blah','blah','123456','18684829601','Arima',NULL,NULL,NULL,125,'2013-12-03 14:53:31','2013-12-03 14:53:31'),(6,'Dion','Santana','blah','blah','blah','123456','18684829601','Arima',NULL,NULL,NULL,125,'2013-12-03 14:53:31','2013-12-03 14:53:31'),(7,'Dion','Santana','Test','','Test','12345','8684829601',NULL,NULL,NULL,39,49,'2013-12-03 14:59:33','2013-12-03 14:59:33'),(8,'Dion','Santana','Test','','Test','12345','8684829601',NULL,NULL,NULL,39,49,'2013-12-03 14:59:33','2013-12-03 14:59:33'),(9,'What','Why','you keep ','','making me','12345','8684829601',NULL,NULL,NULL,50,49,'2013-12-03 15:24:50','2013-12-03 15:24:50'),(10,'Diosan','Why','you keep ','','making me huh','12345','8684829601',NULL,'','',50,49,'2013-12-03 15:24:50','2013-12-03 20:00:24'),(11,'Dion','Santana','bada','','nada','12345','5555555',NULL,'','',1,49,'2013-12-03 23:37:02','2013-12-03 23:37:02'),(12,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:25','2013-12-05 16:11:25'),(13,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:25','2013-12-05 16:11:25'),(14,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:30','2013-12-05 16:11:30'),(15,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:30','2013-12-05 16:11:30'),(16,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:34','2013-12-05 16:11:34'),(17,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:34','2013-12-05 16:11:34'),(18,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:46','2013-12-05 16:11:46'),(19,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:11:46','2013-12-05 16:11:46'),(20,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:12:17','2013-12-05 16:12:17'),(21,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 16:12:17','2013-12-05 16:12:17'),(22,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 16:14:18','2013-12-05 16:14:18'),(23,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 16:14:18','2013-12-05 16:14:18'),(24,'Dion','Santana','stressy','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 16:14:37','2013-12-05 16:14:37'),(25,'Dion','Santana','stressy','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 16:14:37','2013-12-05 16:14:37'),(26,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,'','',55,125,'2013-12-05 16:42:04','2014-01-15 15:38:25'),(27,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:47:56','2013-12-05 16:47:56'),(28,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:47:56','2013-12-05 16:47:56'),(29,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:48:06','2013-12-05 16:48:06'),(30,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:48:06','2013-12-05 16:48:06'),(31,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:49:45','2013-12-05 16:49:45'),(32,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 16:49:45','2013-12-05 16:49:45'),(33,'Dion','Santana','stressy','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 17:50:41','2013-12-05 17:50:41'),(34,'Dion','Santana','stressy','','nada','12345','5555555',NULL,NULL,NULL,NULL,51,'2013-12-05 17:50:41','2013-12-05 17:50:41'),(35,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 17:53:50','2013-12-05 17:53:50'),(36,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 17:53:50','2013-12-05 17:53:50'),(37,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 17:53:53','2013-12-05 17:53:53'),(38,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 17:53:53','2013-12-05 17:53:53'),(39,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:03:21','2013-12-05 18:03:21'),(40,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:03:21','2013-12-05 18:03:21'),(41,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:09:09','2013-12-05 18:09:09'),(42,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:09:09','2013-12-05 18:09:09'),(43,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:09:34','2013-12-05 18:09:34'),(44,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:09:34','2013-12-05 18:09:34'),(45,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:09:50','2013-12-05 18:09:50'),(46,'Diosan','Xaquerry','Las Lomas','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:09:50','2013-12-05 18:09:50'),(47,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:19:38','2013-12-05 18:19:38'),(48,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:19:38','2013-12-05 18:19:38'),(49,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:19:42','2013-12-05 18:19:42'),(50,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:19:42','2013-12-05 18:19:42'),(51,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:20:57','2013-12-05 18:20:57'),(52,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:20:57','2013-12-05 18:20:57'),(53,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,49,'2013-12-05 18:21:09','2013-12-05 18:21:09'),(54,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,49,'2013-12-05 18:21:09','2013-12-05 18:21:09'),(55,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:24:07','2013-12-05 18:24:07'),(56,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:24:07','2013-12-05 18:24:07'),(57,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:24:55','2013-12-05 18:24:55'),(58,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-05 18:24:55','2013-12-05 18:24:55'),(59,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,49,'2013-12-05 18:25:02','2013-12-05 18:25:02'),(60,'Blah','blah','blah','','blah','12345','5555555',NULL,NULL,NULL,NULL,49,'2013-12-05 18:25:02','2013-12-05 18:25:02'),(61,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:34:19','2013-12-05 18:34:19'),(62,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:34:19','2013-12-05 18:34:19'),(63,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:35:49','2013-12-05 18:35:49'),(64,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:35:49','2013-12-05 18:35:49'),(65,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:42:33','2013-12-05 18:42:33'),(66,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:42:33','2013-12-05 18:42:33'),(67,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:42:48','2013-12-05 18:42:48'),(68,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-05 18:42:48','2013-12-05 18:42:48'),(69,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:44:38','2013-12-05 18:44:38'),(70,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-05 18:44:38','2013-12-05 18:44:38'),(71,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:46:54','2013-12-05 18:46:54'),(72,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:46:54','2013-12-05 18:46:54'),(73,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','ok then',NULL,NULL,NULL,125,'2013-12-05 18:47:01','2013-12-05 18:47:01'),(74,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','ok then',NULL,NULL,NULL,125,'2013-12-05 18:47:01','2013-12-05 18:47:01'),(75,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:47:49','2013-12-05 18:47:49'),(76,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:47:49','2013-12-05 18:47:49'),(77,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:50:39','2013-12-05 18:50:39'),(78,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:50:39','2013-12-05 18:50:39'),(79,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:51:05','2013-12-05 18:51:05'),(80,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-05 18:51:05','2013-12-05 18:51:05'),(81,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:51:34','2013-12-05 18:51:34'),(82,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:51:34','2013-12-05 18:51:34'),(83,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','uh huh',NULL,NULL,NULL,106,'2013-12-05 18:52:41','2013-12-05 18:52:41'),(84,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','uh huh',NULL,NULL,NULL,106,'2013-12-05 18:52:41','2013-12-05 18:52:41'),(85,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','uh huh',NULL,NULL,NULL,125,'2013-12-05 18:52:57','2013-12-05 18:52:57'),(86,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','uh huh',NULL,NULL,NULL,125,'2013-12-05 18:52:57','2013-12-05 18:52:57'),(87,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:53:14','2013-12-05 18:53:14'),(88,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-05 18:53:14','2013-12-05 18:53:14'),(89,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-05 21:28:52','2013-12-05 21:28:52'),(90,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-05 21:28:52','2013-12-05 21:28:52'),(91,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:24','2013-12-06 17:44:24'),(92,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:24','2013-12-06 17:44:24'),(93,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:32','2013-12-06 17:44:32'),(94,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:32','2013-12-06 17:44:32'),(95,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:59','2013-12-06 17:44:59'),(96,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','Testing',NULL,NULL,NULL,125,'2013-12-06 17:44:59','2013-12-06 17:44:59'),(97,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-06 17:45:29','2013-12-06 17:45:29'),(98,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-06 17:45:29','2013-12-06 17:45:29'),(99,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:45:49','2013-12-19 18:45:49'),(100,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:45:49','2013-12-19 18:45:49'),(101,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:47:17','2013-12-19 18:47:17'),(102,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:47:17','2013-12-19 18:47:17'),(103,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 18:55:21','2013-12-19 18:55:21'),(104,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 18:55:21','2013-12-19 18:55:21'),(105,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:55:29','2013-12-19 18:55:29'),(106,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','',NULL,NULL,NULL,125,'2013-12-19 18:55:29','2013-12-19 18:55:29'),(107,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 18:58:36','2013-12-19 18:58:36'),(108,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 18:58:36','2013-12-19 18:58:36'),(109,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:04:49','2013-12-19 19:04:49'),(110,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:04:49','2013-12-19 19:04:49'),(111,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:17:58','2013-12-19 19:17:58'),(112,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:17:58','2013-12-19 19:17:58'),(113,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:18:03','2013-12-19 19:18:03'),(114,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 19:18:03','2013-12-19 19:18:03'),(115,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:21:40','2013-12-19 19:21:40'),(116,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:21:40','2013-12-19 19:21:40'),(117,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:23:11','2013-12-19 19:23:11'),(118,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:23:11','2013-12-19 19:23:11'),(119,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:29:15','2013-12-19 19:29:15'),(120,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:29:15','2013-12-19 19:29:15'),(121,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:34:32','2013-12-19 19:34:32'),(122,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601','something man',NULL,NULL,NULL,125,'2013-12-19 19:34:32','2013-12-19 19:34:32'),(123,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-19 19:34:53','2013-12-19 19:34:53'),(124,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,23,49,'2013-12-19 19:34:53','2013-12-19 19:34:53'),(125,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:46:27','2013-12-19 19:46:27'),(126,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:46:27','2013-12-19 19:46:27'),(127,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:48:44','2013-12-19 19:48:44'),(128,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:48:44','2013-12-19 19:48:44'),(129,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:49:52','2013-12-19 19:49:52'),(130,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:49:52','2013-12-19 19:49:52'),(131,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:52:21','2013-12-19 19:52:21'),(132,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:52:21','2013-12-19 19:52:21'),(133,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:53:38','2013-12-19 19:53:38'),(134,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 19:53:38','2013-12-19 19:53:38'),(135,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,103,49,'2013-12-19 19:53:58','2013-12-19 19:53:58'),(136,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,103,49,'2013-12-19 19:53:58','2013-12-19 19:53:58'),(137,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,55,1,'2013-12-19 20:24:05','2013-12-19 20:24:05'),(138,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,55,1,'2013-12-19 20:24:05','2013-12-19 20:24:05'),(139,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,48,49,'2013-12-19 20:24:35','2013-12-19 20:24:35'),(140,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,48,49,'2013-12-19 20:24:35','2013-12-19 20:24:35'),(141,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,48,49,'2013-12-19 20:25:48','2013-12-19 20:25:48'),(142,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,48,49,'2013-12-19 20:25:48','2013-12-19 20:25:48'),(143,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 20:26:23','2013-12-19 20:26:23'),(144,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 20:26:23','2013-12-19 20:26:23'),(145,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 20:28:17','2013-12-19 20:28:17'),(146,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 20:28:17','2013-12-19 20:28:17'),(147,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,175,121,'2013-12-19 20:28:46','2013-12-19 20:28:46'),(148,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,175,121,'2013-12-19 20:28:46','2013-12-19 20:28:46'),(149,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-19 20:31:02','2013-12-19 20:31:02'),(150,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,39,49,'2013-12-19 20:31:02','2013-12-19 20:31:02'),(151,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,55,1,'2013-12-19 20:36:27','2013-12-19 20:36:27'),(152,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,55,1,'2013-12-19 20:36:27','2013-12-19 20:36:27'),(153,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,269,215,'2013-12-19 20:36:48','2013-12-19 20:36:48'),(154,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,269,215,'2013-12-19 20:36:48','2013-12-19 20:36:48'),(155,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,1,'2013-12-19 20:42:55','2013-12-19 20:42:55'),(156,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,1,'2013-12-19 20:42:55','2013-12-19 20:42:55'),(157,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,54,'2013-12-19 20:43:31','2013-12-19 20:43:31'),(158,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,54,'2013-12-19 20:43:31','2013-12-19 20:43:31'),(159,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-19 20:43:38','2013-12-19 20:43:38'),(160,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-19 20:43:38','2013-12-19 20:43:38'),(161,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 20:49:40','2013-12-19 20:49:40'),(162,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-19 20:49:40','2013-12-19 20:49:40'),(163,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-19 20:49:50','2013-12-19 20:49:50'),(164,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,49,'2013-12-19 20:49:50','2013-12-19 20:49:50'),(165,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,204,'2013-12-19 20:56:50','2013-12-19 20:56:50'),(166,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,204,'2013-12-19 20:56:50','2013-12-19 20:56:50'),(167,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,258,204,'2013-12-19 21:06:43','2013-12-19 21:06:43'),(168,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,258,204,'2013-12-19 21:06:43','2013-12-19 21:06:43'),(169,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,258,125,'2013-12-19 21:07:16','2013-12-19 21:07:16'),(170,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,258,125,'2013-12-19 21:07:16','2013-12-19 21:07:16'),(171,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 21:07:25','2013-12-19 21:07:25'),(172,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,179,125,'2013-12-19 21:07:25','2013-12-19 21:07:25'),(173,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 21:28:10','2013-12-23 21:28:10'),(174,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 21:28:10','2013-12-23 21:28:10'),(175,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 21:33:01','2013-12-23 21:33:01'),(176,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 21:33:01','2013-12-23 21:33:01'),(177,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:40:22','2013-12-23 21:40:22'),(178,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:40:22','2013-12-23 21:40:22'),(179,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:51:39','2013-12-23 21:51:39'),(180,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:51:39','2013-12-23 21:51:39'),(181,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:56:36','2013-12-23 21:56:36'),(182,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:56:36','2013-12-23 21:56:36'),(183,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:59:34','2013-12-23 21:59:34'),(184,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-23 21:59:34','2013-12-23 21:59:34'),(185,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 22:03:39','2013-12-23 22:03:39'),(186,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 22:03:39','2013-12-23 22:03:39'),(187,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 22:55:47','2013-12-23 22:55:47'),(188,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 22:55:47','2013-12-23 22:55:47'),(189,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:29:35','2013-12-23 23:29:35'),(190,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:29:35','2013-12-23 23:29:35'),(191,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:34:21','2013-12-23 23:34:21'),(192,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:34:21','2013-12-23 23:34:21'),(193,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:41:47','2013-12-23 23:41:47'),(194,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:41:47','2013-12-23 23:41:47'),(195,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:49:26','2013-12-23 23:49:26'),(196,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:49:26','2013-12-23 23:49:26'),(197,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:56:27','2013-12-23 23:56:27'),(198,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-23 23:56:27','2013-12-23 23:56:27'),(199,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 00:02:19','2013-12-24 00:02:19'),(200,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 00:02:19','2013-12-24 00:02:19'),(201,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 00:34:55','2013-12-24 00:34:55'),(202,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 00:34:55','2013-12-24 00:34:55'),(203,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 15:37:49','2013-12-24 15:37:49'),(204,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 15:37:49','2013-12-24 15:37:49'),(205,'Dion','Santana','bada','1','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:29:59','2013-12-24 20:29:59'),(206,'Dion','Santana','bada','1','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:29:59','2013-12-24 20:29:59'),(207,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:32:50','2013-12-24 20:32:50'),(208,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:32:50','2013-12-24 20:32:50'),(209,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 20:39:15','2013-12-24 20:39:15'),(210,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 20:39:15','2013-12-24 20:39:15'),(211,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 20:39:32','2013-12-24 20:39:32'),(212,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:42:41','2013-12-24 20:42:41'),(213,'Dion','Santana','bada','','nada','12345','5555555',NULL,NULL,NULL,NULL,125,'2013-12-24 20:42:41','2013-12-24 20:42:41'),(214,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 20:52:12','2013-12-24 20:52:12'),(215,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-24 20:52:12','2013-12-24 20:52:12'),(216,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-26 05:14:23','2013-12-26 05:14:23'),(217,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-26 05:14:23','2013-12-26 05:14:23'),(218,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-26 15:28:14','2013-12-26 15:28:14'),(219,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-26 15:28:14','2013-12-26 15:28:14'),(220,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:02:00','2013-12-28 01:02:00'),(221,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:02:00','2013-12-28 01:02:00'),(222,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:30:27','2013-12-28 01:30:27'),(223,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:30:27','2013-12-28 01:30:27'),(224,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:32:40','2013-12-28 01:32:40'),(225,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 01:32:40','2013-12-28 01:32:40'),(226,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 02:32:21','2013-12-28 02:32:21'),(227,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 02:32:21','2013-12-28 02:32:21'),(228,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 02:35:11','2013-12-28 02:35:11'),(229,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 23:13:31','2013-12-28 23:13:31'),(230,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 23:15:45','2013-12-28 23:15:45'),(231,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 23:47:40','2013-12-28 23:47:40'),(232,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-28 23:54:15','2013-12-28 23:54:15'),(233,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:05:54','2013-12-29 01:05:54'),(234,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:14:00','2013-12-29 01:14:00'),(235,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:23:50','2013-12-29 01:23:50'),(236,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:27:56','2013-12-29 01:27:56'),(237,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:36:34','2013-12-29 01:36:34'),(238,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 01:50:30','2013-12-29 01:50:30'),(239,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 02:06:42','2013-12-29 02:06:42'),(240,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 02:11:00','2013-12-29 02:11:00'),(241,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 02:15:22','2013-12-29 02:15:22'),(242,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 02:25:29','2013-12-29 02:25:29'),(243,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 02:40:50','2013-12-29 02:40:50'),(244,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 03:00:11','2013-12-29 03:00:11'),(245,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 03:01:39','2013-12-29 03:01:39'),(246,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 03:41:17','2013-12-29 03:41:17'),(247,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 03:50:34','2013-12-29 03:50:34'),(248,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 04:05:31','2013-12-29 04:05:31'),(249,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 04:09:40','2013-12-29 04:09:40'),(250,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-29 15:51:18','2013-12-29 15:51:18'),(251,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2013-12-31 21:49:10','2013-12-31 21:49:10'),(252,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-08 22:06:06','2014-01-08 22:06:06'),(253,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-08 22:19:00','2014-01-08 22:19:00'),(254,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-08 23:01:50','2014-01-08 23:01:50'),(255,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-08 23:14:40','2014-01-08 23:14:40'),(256,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 15:14:57','2014-01-09 15:14:57'),(257,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 16:05:55','2014-01-09 16:05:55'),(258,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 16:36:24','2014-01-09 16:36:24'),(259,'Diosan','Xaquerry','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 16:36:24','2014-01-09 16:36:24'),(260,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 17:24:14','2014-01-09 17:24:14'),(261,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 17:24:14','2014-01-09 17:24:14'),(262,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 18:25:40','2014-01-09 18:25:40'),(263,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 18:25:40','2014-01-09 18:25:40'),(264,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 21:53:09','2014-01-09 21:53:09'),(265,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 21:53:09','2014-01-09 21:53:09'),(266,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 21:58:30','2014-01-09 21:58:30'),(267,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-09 21:58:30','2014-01-09 21:58:30'),(268,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-10 17:52:35','2014-01-10 17:52:35'),(269,'John','Doe','Corner Caroni South Branch Road and Soriah Branch Trace','','Arima','12345','18684829601',NULL,NULL,NULL,NULL,125,'2014-01-10 17:52:35','2014-01-10 17:52:35');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (1,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate','0.80','North America 5.0%',0,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','closed'),(2,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate','1.15','North America 5.0%',0,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','closed'),(3,1,'Spree::Shipment',1,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','open'),(4,2,'Spree::Shipment',2,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','open'),(5,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate','0.00','Tax',1,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','open'),(6,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate','0.00','Tax',1,1,'2013-11-07 21:48:35','2013-11-07 21:48:35','open'),(7,1,'Spree::Order',1,'Spree::Order',1,'Spree::ShippingMethod','0.00','Shipping',1,1,'2013-11-07 21:48:36','2013-11-07 21:48:36','finalized'),(8,2,'Spree::Order',2,'Spree::Order',1,'Spree::ShippingMethod','0.00','Shipping',1,1,'2013-11-07 21:48:36','2013-11-07 21:48:36','finalized'),(9,3,'Spree::Shipment',4,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-03 14:59:33','2013-12-03 14:59:33','closed'),(10,4,'Spree::Order',4,'Spree::Order',1,'Spree::TaxRate','1.00','North America 5.0%',0,1,'2013-12-03 14:59:33','2013-12-03 14:59:33','closed'),(11,5,'Spree::Shipment',7,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-03 15:24:51','2013-12-03 15:24:51','closed'),(12,7,'Spree::Order',7,'Spree::Order',1,'Spree::TaxRate','1.00','North America 5.0%',0,1,'2013-12-03 15:24:51','2013-12-03 15:24:51','closed'),(15,7,'Spree::Shipment',17,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:09:50','2013-12-05 18:09:50','closed'),(16,17,'Spree::Order',17,'Spree::Order',1,'Spree::TaxRate','0.80','North America 5.0%',0,1,'2013-12-05 18:09:50','2013-12-05 18:09:50','closed'),(20,9,'Spree::Shipment',18,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:25:02','2013-12-05 18:25:02','closed'),(21,18,'Spree::Order',18,'Spree::Order',1,'Spree::TaxRate','3.00','North America 5.0%',0,1,'2013-12-05 18:25:02','2013-12-05 18:25:02','closed'),(22,10,'Spree::Shipment',19,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:35:49','2013-12-05 18:35:49','closed'),(23,19,'Spree::Order',19,'Spree::Order',1,'Spree::TaxRate','1.00','North America 5.0%',0,1,'2013-12-05 18:35:49','2013-12-05 18:35:49','closed'),(24,11,'Spree::Shipment',20,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:42:49','2013-12-05 18:42:49','closed'),(25,20,'Spree::Order',20,'Spree::Order',1,'Spree::TaxRate','2.00','North America 5.0%',0,1,'2013-12-05 18:42:49','2013-12-05 18:42:49','closed'),(26,12,'Spree::Shipment',21,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:47:50','2013-12-05 18:47:50','closed'),(27,21,'Spree::Order',21,'Spree::Order',1,'Spree::TaxRate','2.00','North America 5.0%',0,1,'2013-12-05 18:47:50','2013-12-05 18:47:50','closed'),(30,14,'Spree::Shipment',22,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-05 18:53:14','2013-12-05 18:53:14','closed'),(31,22,'Spree::Order',22,'Spree::Order',1,'Spree::TaxRate','1.00','North America 5.0%',0,1,'2013-12-05 18:53:14','2013-12-05 18:53:14','closed'),(70,33,'Spree::Shipment',39,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 21:33:01','2013-12-23 21:33:01','closed'),(71,34,'Spree::Shipment',41,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 21:40:22','2013-12-23 21:40:22','closed'),(72,35,'Spree::Shipment',42,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 21:51:39','2013-12-23 21:51:39','closed'),(73,36,'Spree::Shipment',43,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 21:56:36','2013-12-23 21:56:36','closed'),(74,37,'Spree::Shipment',44,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 21:59:34','2013-12-23 21:59:34','closed'),(75,38,'Spree::Shipment',46,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 22:03:39','2013-12-23 22:03:39','closed'),(76,39,'Spree::Shipment',49,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 22:55:47','2013-12-23 22:55:47','closed'),(77,40,'Spree::Shipment',49,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 22:55:47','2013-12-23 22:55:47','closed'),(78,41,'Spree::Shipment',51,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:29:35','2013-12-23 23:29:35','closed'),(79,42,'Spree::Shipment',52,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:34:22','2013-12-23 23:34:22','closed'),(80,43,'Spree::Shipment',54,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:41:47','2013-12-23 23:41:47','closed'),(81,44,'Spree::Shipment',57,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:49:26','2013-12-23 23:49:26','closed'),(82,45,'Spree::Shipment',60,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:56:28','2013-12-23 23:56:28','closed'),(83,46,'Spree::Shipment',60,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-23 23:56:28','2013-12-23 23:56:28','closed'),(84,47,'Spree::Shipment',63,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 00:02:19','2013-12-24 00:02:19','closed'),(91,54,'Spree::Shipment',62,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:29:59','2013-12-24 20:29:59','closed'),(92,55,'Spree::Shipment',62,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:29:59','2013-12-24 20:29:59','closed'),(93,56,'Spree::Shipment',82,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:32:51','2013-12-24 20:32:51','closed'),(95,58,'Spree::Shipment',85,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:39:32','2013-12-24 20:39:32','closed'),(96,59,'Spree::Shipment',86,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:42:41','2013-12-24 20:42:41','closed'),(97,60,'Spree::Shipment',87,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-24 20:52:12','2013-12-24 20:52:12','closed'),(98,61,'Spree::Shipment',100,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-26 05:14:23','2013-12-26 05:14:23','closed'),(99,62,'Spree::Shipment',103,'Spree::Order',1,'Spree::ShippingMethod','5.00','Shipping',1,1,'2013-12-26 15:28:15','2013-12-26 15:28:15','open'),(101,64,'Spree::Shipment',83,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2013-12-28 01:30:28','2013-12-28 01:30:28','closed'),(103,66,'Spree::Shipment',105,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2013-12-28 02:32:21','2013-12-28 02:32:21','closed'),(104,67,'Spree::Shipment',105,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2013-12-28 02:32:22','2013-12-28 02:32:22','closed'),(105,68,'Spree::Shipment',144,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2014-01-09 16:36:25','2014-01-09 16:36:25','closed'),(106,69,'Spree::Shipment',145,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2014-01-09 17:24:14','2014-01-09 17:24:14','closed'),(107,70,'Spree::Shipment',146,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2014-01-09 18:25:41','2014-01-09 18:25:41','open'),(108,71,'Spree::Shipment',147,'Spree::Order',5,'Spree::ShippingMethod','0.00','Shipping',1,1,'2014-01-09 21:53:10','2014-01-09 21:53:10','closed');
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (48,28,'Spree::Variant',125,180,18476,1,'image/jpeg','Glencairn_Glassjpg_thumb.jpg','Spree::Image','2014-01-08 20:33:35',''),(49,31,'Spree::Variant',180,136,18374,1,'image/jpeg','New_fashioned_Kit_thumb.jpg','Spree::Image','2014-01-08 21:02:38',''),(50,32,'Spree::Variant',500,500,26346,1,'image/jpeg','angostura_1824_12yo_2.jpg','Spree::Image','2014-01-08 21:10:46','Angostura 1824 with carton'),(51,33,'Spree::Variant',180,146,17157,1,'image/jpeg','Angostura_serving_kits_thumb.jpg','Spree::Image','2014-01-08 21:25:05','(Icebucket, tongs, bar blade, tray)');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::FlatRate',1,'Spree::ShippingMethod','2013-11-07 21:48:08','2013-11-07 21:48:08'),(2,'Spree::Calculator::FlatRate',2,'Spree::ShippingMethod','2013-11-07 21:48:08','2013-11-07 21:48:08'),(3,'Spree::Calculator::FlatRate',3,'Spree::ShippingMethod','2013-11-07 21:48:08','2013-11-07 21:48:08'),(4,'Spree::Calculator::FlatRate',4,'Spree::ShippingMethod','2013-11-07 21:48:08','2013-11-07 21:48:08'),(5,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2013-11-07 21:48:09','2013-11-07 21:48:09'),(6,'Spree::Calculator::Shipping::FlatRate',5,'Spree::ShippingMethod','2013-12-28 00:07:08','2013-12-28 00:07:08');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHAD','TD','TCD','Chad',148,1,'2013-11-07 21:47:16'),(2,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,1,'2013-11-07 21:47:16'),(3,'INDIA','IN','IND','India',356,1,'2013-11-07 21:47:16'),(4,'NICARAGUA','NI','NIC','Nicaragua',558,1,'2013-11-07 21:47:16'),(5,'SAINT LUCIA','LC','LCA','Saint Lucia',662,1,'2013-11-07 21:47:16'),(6,'FIJI','FJ','FJI','Fiji',242,1,'2013-11-07 21:47:16'),(7,'INDONESIA','ID','IDN','Indonesia',360,1,'2013-11-07 21:47:16'),(8,'NIGER','NE','NER','Niger',562,1,'2013-11-07 21:47:16'),(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,1,'2013-11-07 21:47:16'),(10,'FINLAND','FI','FIN','Finland',246,1,'2013-11-07 21:47:16'),(11,'NIGERIA','NG','NGA','Nigeria',566,1,'2013-11-07 21:47:16'),(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1,'2013-11-07 21:47:16'),(13,'FRANCE','FR','FRA','France',250,1,'2013-11-07 21:47:16'),(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1,'2013-11-07 21:47:16'),(15,'NIUE','NU','NIU','Niue',570,1,'2013-11-07 21:47:16'),(16,'SAMOA','WS','WSM','Samoa',882,1,'2013-11-07 21:47:16'),(17,'FRENCH GUIANA','GF','GUF','French Guiana',254,1,'2013-11-07 21:47:16'),(18,'IRAQ','IQ','IRQ','Iraq',368,1,'2013-11-07 21:47:16'),(19,'SAN MARINO','SM','SMR','San Marino',674,1,'2013-11-07 21:47:16'),(20,'IRELAND','IE','IRL','Ireland',372,1,'2013-11-07 21:47:16'),(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1,'2013-11-07 21:47:16'),(22,'ISRAEL','IL','ISR','Israel',376,1,'2013-11-07 21:47:16'),(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1,'2013-11-07 21:47:16'),(24,'ITALY','IT','ITA','Italy',380,1,'2013-11-07 21:47:16'),(25,'SENEGAL','SN','SEN','Senegal',686,1,'2013-11-07 21:47:16'),(26,'JAMAICA','JM','JAM','Jamaica',388,1,'2013-11-07 21:47:16'),(27,'JAPAN','JP','JPN','Japan',392,1,'2013-11-07 21:47:16'),(28,'JORDAN','JO','JOR','Jordan',400,1,'2013-11-07 21:47:16'),(29,'BELGIUM','BE','BEL','Belgium',56,1,'2013-11-07 21:47:16'),(30,'BELIZE','BZ','BLZ','Belize',84,1,'2013-11-07 21:47:16'),(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1,'2013-11-07 21:47:16'),(32,'UGANDA','UG','UGA','Uganda',800,1,'2013-11-07 21:47:16'),(33,'BENIN','BJ','BEN','Benin',204,1,'2013-11-07 21:47:16'),(34,'KENYA','KE','KEN','Kenya',404,1,'2013-11-07 21:47:16'),(35,'UKRAINE','UA','UKR','Ukraine',804,1,'2013-11-07 21:47:16'),(36,'BERMUDA','BM','BMU','Bermuda',60,1,'2013-11-07 21:47:16'),(37,'KIRIBATI','KI','KIR','Kiribati',296,1,'2013-11-07 21:47:16'),(38,'MEXICO','MX','MEX','Mexico',484,1,'2013-11-07 21:47:16'),(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,'2013-11-07 21:47:16'),(40,'BHUTAN','BT','BTN','Bhutan',64,1,'2013-11-07 21:47:16'),(41,'CUBA','CU','CUB','Cuba',192,1,'2013-11-07 21:47:16'),(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,1,'2013-11-07 21:47:16'),(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,'2013-11-07 21:47:16'),(44,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1,'2013-11-07 21:47:16'),(45,'BOLIVIA','BO','BOL','Bolivia',68,1,'2013-11-07 21:47:16'),(46,'CYPRUS','CY','CYP','Cyprus',196,1,'2013-11-07 21:47:16'),(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,1,'2013-11-07 21:47:16'),(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1,'2013-11-07 21:47:16'),(49,'UNITED STATES','US','USA','United States',840,1,'2013-11-07 21:47:16'),(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,'2013-11-07 21:47:16'),(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,1,'2013-11-07 21:47:16'),(52,'KUWAIT','KW','KWT','Kuwait',414,1,'2013-11-07 21:47:16'),(53,'MONACO','MC','MCO','Monaco',492,1,'2013-11-07 21:47:17'),(54,'URUGUAY','UY','URY','Uruguay',858,1,'2013-11-07 21:47:17'),(55,'BOTSWANA','BW','BWA','Botswana',72,1,'2013-11-07 21:47:17'),(56,'DENMARK','DK','DNK','Denmark',208,1,'2013-11-07 21:47:17'),(57,'GUADELOUPE','GP','GLP','Guadeloupe',312,1,'2013-11-07 21:47:17'),(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1,'2013-11-07 21:47:17'),(59,'MONGOLIA','MN','MNG','Mongolia',496,1,'2013-11-07 21:47:17'),(60,'PHILIPPINES','PH','PHL','Philippines',608,1,'2013-11-07 21:47:17'),(61,'BRAZIL','BR','BRA','Brazil',76,1,'2013-11-07 21:47:17'),(62,'DJIBOUTI','DJ','DJI','Djibouti',262,1,'2013-11-07 21:47:17'),(63,'GUAM','GU','GUM','Guam',316,1,'2013-11-07 21:47:17'),(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1,'2013-11-07 21:47:17'),(65,'MONTSERRAT','MS','MSR','Montserrat',500,1,'2013-11-07 21:47:17'),(66,'PITCAIRN','PN','PCN','Pitcairn',612,1,'2013-11-07 21:47:17'),(67,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1,'2013-11-07 21:47:17'),(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1,'2013-11-07 21:47:17'),(69,'DOMINICA','DM','DMA','Dominica',212,1,'2013-11-07 21:47:17'),(70,'GUATEMALA','GT','GTM','Guatemala',320,1,'2013-11-07 21:47:17'),(71,'MOROCCO','MA','MAR','Morocco',504,1,'2013-11-07 21:47:17'),(72,'POLAND','PL','POL','Poland',616,1,'2013-11-07 21:47:17'),(73,'VANUATU','VU','VUT','Vanuatu',548,1,'2013-11-07 21:47:17'),(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1,'2013-11-07 21:47:17'),(75,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1,'2013-11-07 21:47:17'),(76,'PORTUGAL','PT','PRT','Portugal',620,1,'2013-11-07 21:47:17'),(77,'SUDAN','SD','SDN','Sudan',736,1,'2013-11-07 21:47:17'),(78,'VENEZUELA','VE','VEN','Venezuela',862,1,'2013-11-07 21:47:17'),(79,'ECUADOR','EC','ECU','Ecuador',218,1,'2013-11-07 21:47:17'),(80,'GUINEA','GN','GIN','Guinea',324,1,'2013-11-07 21:47:17'),(81,'MYANMAR','MM','MMR','Myanmar',104,1,'2013-11-07 21:47:17'),(82,'PUERTO RICO','PR','PRI','Puerto Rico',630,1,'2013-11-07 21:47:17'),(83,'SURINAME','SR','SUR','Suriname',740,1,'2013-11-07 21:47:17'),(84,'VIET NAM','VN','VNM','Viet Nam',704,1,'2013-11-07 21:47:17'),(85,'EGYPT','EG','EGY','Egypt',818,1,'2013-11-07 21:47:17'),(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1,'2013-11-07 21:47:17'),(87,'NAMIBIA','NA','NAM','Namibia',516,1,'2013-11-07 21:47:17'),(88,'QATAR','QA','QAT','Qatar',634,1,'2013-11-07 21:47:17'),(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,1,'2013-11-07 21:47:17'),(90,'EL SALVADOR','SV','SLV','El Salvador',222,1,'2013-11-07 21:47:17'),(91,'GUYANA','GY','GUY','Guyana',328,1,'2013-11-07 21:47:17'),(92,'REUNION','RE','REU','Reunion',638,1,'2013-11-07 21:47:17'),(93,'HAITI','HT','HTI','Haiti',332,1,'2013-11-07 21:47:17'),(94,'ROMANIA','RO','ROM','Romania',642,1,'2013-11-07 21:47:17'),(95,'SWAZILAND','SZ','SWZ','Swaziland',748,1,'2013-11-07 21:47:17'),(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,1,'2013-11-07 21:47:17'),(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,'2013-11-07 21:47:17'),(98,'SWEDEN','SE','SWE','Sweden',752,1,'2013-11-07 21:47:17'),(99,'HONDURAS','HN','HND','Honduras',340,1,'2013-11-07 21:47:17'),(100,'RWANDA','RW','RWA','Rwanda',646,1,'2013-11-07 21:47:17'),(101,'SWITZERLAND','CH','CHE','Switzerland',756,1,'2013-11-07 21:47:17'),(102,'HONG KONG','HK','HKG','Hong Kong',344,1,'2013-11-07 21:47:17'),(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1,'2013-11-07 21:47:17'),(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,1,'2013-11-07 21:47:17'),(105,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1,'2013-11-07 21:47:17'),(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1,'2013-11-07 21:47:17'),(107,'ARMENIA','AM','ARM','Armenia',51,1,'2013-11-07 21:47:17'),(108,'ARUBA','AW','ABW','Aruba',533,1,'2013-11-07 21:47:17'),(109,'AUSTRALIA','AU','AUS','Australia',36,1,'2013-11-07 21:47:17'),(110,'THAILAND','TH','THA','Thailand',764,1,'2013-11-07 21:47:17'),(111,'AUSTRIA','AT','AUT','Austria',40,1,'2013-11-07 21:47:17'),(112,'MADAGASCAR','MG','MDG','Madagascar',450,1,'2013-11-07 21:47:17'),(113,'TOGO','TG','TGO','Togo',768,1,'2013-11-07 21:47:17'),(114,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1,'2013-11-07 21:47:17'),(115,'CHILE','CL','CHL','Chile',152,1,'2013-11-07 21:47:17'),(116,'MALAWI','MW','MWI','Malawi',454,1,'2013-11-07 21:47:17'),(117,'TOKELAU','TK','TKL','Tokelau',772,1,'2013-11-07 21:47:17'),(118,'BAHAMAS','BS','BHS','Bahamas',44,1,'2013-11-07 21:47:17'),(119,'CHINA','CN','CHN','China',156,1,'2013-11-07 21:47:17'),(120,'MALAYSIA','MY','MYS','Malaysia',458,1,'2013-11-07 21:47:17'),(121,'TONGA','TO','TON','Tonga',776,1,'2013-11-07 21:47:17'),(122,'BAHRAIN','BH','BHR','Bahrain',48,1,'2013-11-07 21:47:17'),(123,'COLOMBIA','CO','COL','Colombia',170,1,'2013-11-07 21:47:17'),(124,'MALDIVES','MV','MDV','Maldives',462,1,'2013-11-07 21:47:17'),(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,0,'2013-11-07 21:47:17'),(126,'BANGLADESH','BD','BGD','Bangladesh',50,1,'2013-11-07 21:47:17'),(127,'COMOROS','KM','COM','Comoros',174,1,'2013-11-07 21:47:17'),(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,1,'2013-11-07 21:47:17'),(129,'MALI','ML','MLI','Mali',466,1,'2013-11-07 21:47:17'),(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,1,'2013-11-07 21:47:17'),(131,'TUNISIA','TN','TUN','Tunisia',788,1,'2013-11-07 21:47:17'),(132,'BARBADOS','BB','BRB','Barbados',52,1,'2013-11-07 21:47:17'),(133,'CONGO','CG','COG','Congo',178,1,'2013-11-07 21:47:17'),(134,'GABON','GA','GAB','Gabon',266,1,'2013-11-07 21:47:18'),(135,'MALTA','MT','MLT','Malta',470,1,'2013-11-07 21:47:18'),(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,1,'2013-11-07 21:47:18'),(137,'TURKEY','TR','TUR','Turkey',792,1,'2013-11-07 21:47:18'),(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,1,'2013-11-07 21:47:18'),(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1,'2013-11-07 21:47:18'),(140,'NORWAY','NO','NOR','Norway',578,1,'2013-11-07 21:47:18'),(141,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1,'2013-11-07 21:47:18'),(142,'BELARUS','BY','BLR','Belarus',112,1,'2013-11-07 21:47:18'),(143,'COOK ISLANDS','CK','COK','Cook Islands',184,1,'2013-11-07 21:47:18'),(144,'GAMBIA','GM','GMB','Gambia',270,1,'2013-11-07 21:47:18'),(145,'MARTINIQUE','MQ','MTQ','Martinique',474,1,'2013-11-07 21:47:18'),(146,'OMAN','OM','OMN','Oman',512,1,'2013-11-07 21:47:18'),(147,'SEYCHELLES','SC','SYC','Seychelles',690,1,'2013-11-07 21:47:18'),(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,1,'2013-11-07 21:47:18'),(149,'GEORGIA','GE','GEO','Georgia',268,1,'2013-11-07 21:47:18'),(150,'MAURITANIA','MR','MRT','Mauritania',478,1,'2013-11-07 21:47:18'),(151,'PAKISTAN','PK','PAK','Pakistan',586,1,'2013-11-07 21:47:18'),(152,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1,'2013-11-07 21:47:18'),(153,'TUVALU','TV','TUV','Tuvalu',798,1,'2013-11-07 21:47:18'),(154,'COSTA RICA','CR','CRI','Costa Rica',188,1,'2013-11-07 21:47:18'),(155,'GERMANY','DE','DEU','Germany',276,1,'2013-11-07 21:47:18'),(156,'MAURITIUS','MU','MUS','Mauritius',480,1,'2013-11-07 21:47:18'),(157,'PALAU','PW','PLW','Palau',585,1,'2013-11-07 21:47:18'),(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,1,'2013-11-07 21:47:18'),(159,'PANAMA','PA','PAN','Panama',591,1,'2013-11-07 21:47:18'),(160,'SINGAPORE','SG','SGP','Singapore',702,1,'2013-11-07 21:47:18'),(161,'CROATIA','HR','HRV','Croatia',191,1,'2013-11-07 21:47:18'),(162,'GHANA','GH','GHA','Ghana',288,1,'2013-11-07 21:47:18'),(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1,'2013-11-07 21:47:18'),(164,'SLOVAKIA','SK','SVK','Slovakia',703,1,'2013-11-07 21:47:18'),(165,'GIBRALTAR','GI','GIB','Gibraltar',292,1,'2013-11-07 21:47:18'),(166,'PARAGUAY','PY','PRY','Paraguay',600,1,'2013-11-07 21:47:18'),(167,'SLOVENIA','SI','SVN','Slovenia',705,1,'2013-11-07 21:47:18'),(168,'GREECE','GR','GRC','Greece',300,1,'2013-11-07 21:47:18'),(169,'PERU','PE','PER','Peru',604,1,'2013-11-07 21:47:18'),(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1,'2013-11-07 21:47:18'),(171,'GREENLAND','GL','GRL','Greenland',304,1,'2013-11-07 21:47:18'),(172,'SOMALIA','SO','SOM','Somalia',706,1,'2013-11-07 21:47:18'),(173,'GRENADA','GD','GRD','Grenada',308,1,'2013-11-07 21:47:18'),(174,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1,'2013-11-07 21:47:18'),(175,'SPAIN','ES','ESP','Spain',724,1,'2013-11-07 21:47:18'),(176,'SRI LANKA','LK','LKA','Sri Lanka',144,1,'2013-11-07 21:47:18'),(177,'AFGHANISTAN','AF','AFG','Afghanistan',4,1,'2013-11-07 21:47:18'),(178,'ALBANIA','AL','ALB','Albania',8,1,'2013-11-07 21:47:18'),(179,'ALGERIA','DZ','DZA','Algeria',12,1,'2013-11-07 21:47:18'),(180,'LATVIA','LV','LVA','Latvia',428,1,'2013-11-07 21:47:18'),(181,'AMERICAN SAMOA','AS','ASM','American Samoa',16,1,'2013-11-07 21:47:18'),(182,'BULGARIA','BG','BGR','Bulgaria',100,1,'2013-11-07 21:47:18'),(183,'LEBANON','LB','LBN','Lebanon',422,1,'2013-11-07 21:47:18'),(184,'ANDORRA','AD','AND','Andorra',20,1,'2013-11-07 21:47:18'),(185,'BURKINA FASO','BF','BFA','Burkina Faso',854,1,'2013-11-07 21:47:18'),(186,'LESOTHO','LS','LSO','Lesotho',426,1,'2013-11-07 21:47:18'),(187,'ANGOLA','AO','AGO','Angola',24,1,'2013-11-07 21:47:18'),(188,'BURUNDI','BI','BDI','Burundi',108,1,'2013-11-07 21:47:18'),(189,'LIBERIA','LR','LBR','Liberia',430,1,'2013-11-07 21:47:18'),(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,1,'2013-11-07 21:47:18'),(191,'ANGUILLA','AI','AIA','Anguilla',660,1,'2013-11-07 21:47:18'),(192,'CAMBODIA','KH','KHM','Cambodia',116,1,'2013-11-07 21:47:18'),(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1,'2013-11-07 21:47:18'),(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,1,'2013-11-07 21:47:18'),(195,'NAURU','NR','NRU','Nauru',520,1,'2013-11-07 21:47:18'),(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,1,'2013-11-07 21:47:18'),(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1,'2013-11-07 21:47:18'),(198,'CAMEROON','CM','CMR','Cameroon',120,1,'2013-11-07 21:47:18'),(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1,'2013-11-07 21:47:18'),(200,'NEPAL','NP','NPL','Nepal',524,1,'2013-11-07 21:47:18'),(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,1,'2013-11-07 21:47:18'),(202,'WESTERN SAHARA','EH','ESH','Western Sahara',732,1,'2013-11-07 21:47:18'),(203,'ARGENTINA','AR','ARG','Argentina',32,1,'2013-11-07 21:47:18'),(204,'CANADA','CA','CAN','Canada',124,1,'2013-11-07 21:47:18'),(205,'ERITREA','ER','ERI','Eritrea',232,1,'2013-11-07 21:47:18'),(206,'LITHUANIA','LT','LTU','Lithuania',440,1,'2013-11-07 21:47:18'),(207,'NETHERLANDS','NL','NLD','Netherlands',528,1,'2013-11-07 21:47:18'),(208,'YEMEN','YE','YEM','Yemen',887,1,'2013-11-07 21:47:18'),(209,'CAPE VERDE','CV','CPV','Cape Verde',132,1,'2013-11-07 21:47:18'),(210,'ESTONIA','EE','EST','Estonia',233,1,'2013-11-07 21:47:18'),(211,'LUXEMBOURG','LU','LUX','Luxembourg',442,1,'2013-11-07 21:47:18'),(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,1,'2013-11-07 21:47:18'),(213,'SAINT HELENA','SH','SHN','Saint Helena',654,1,'2013-11-07 21:47:18'),(214,'ZAMBIA','ZM','ZMB','Zambia',894,1,'2013-11-07 21:47:18'),(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,1,'2013-11-07 21:47:18'),(216,'ETHIOPIA','ET','ETH','Ethiopia',231,1,'2013-11-07 21:47:18'),(217,'HUNGARY','HU','HUN','Hungary',348,1,'2013-11-07 21:47:18'),(218,'MACAO','MO','MAC','Macao',446,1,'2013-11-07 21:47:18'),(219,'NEW CALEDONIA','NC','NCL','New Caledonia',540,1,'2013-11-07 21:47:18'),(220,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1,'2013-11-07 21:47:18'),(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1,'2013-11-07 21:47:18'),(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,1,'2013-11-07 21:47:19'),(223,'ICELAND','IS','ISL','Iceland',352,1,'2013-11-07 21:47:19'),(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,1,'2013-11-07 21:47:19'),(225,'NEW ZEALAND','NZ','NZL','New Zealand',554,1,'2013-11-07 21:47:19'),(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,'2013-11-07 21:47:19'),(227,'SERBIA','RS','SRB','Serbia',999,1,'2013-11-07 21:47:19');
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2014','visa','1111','Sean','Schofield',NULL,NULL,NULL,NULL,'BGS-1234',NULL,'2013-11-07 21:48:36','2013-11-07 21:48:36');
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,1,NULL,'2013-11-07 21:48:35','2013-11-07 21:48:35',1),(2,'on_hand',2,2,2,NULL,'2013-11-07 21:48:35','2013-11-07 21:48:35',1),(3,'on_hand',5,4,3,NULL,'2013-12-03 14:59:33','2013-12-03 14:59:33',0),(4,'on_hand',1,6,4,NULL,'2013-12-03 15:11:19','2013-12-03 15:11:19',1),(5,'on_hand',1,6,4,NULL,'2013-12-03 15:11:19','2013-12-03 15:11:19',1),(6,'on_hand',6,7,5,NULL,'2013-12-03 15:24:51','2013-12-03 15:24:51',0),(8,'on_hand',1,17,7,NULL,'2013-12-05 18:09:50','2013-12-05 18:09:50',0),(11,'on_hand',6,18,9,NULL,'2013-12-05 18:25:02','2013-12-05 18:25:02',0),(12,'on_hand',5,18,9,NULL,'2013-12-05 18:25:02','2013-12-05 18:25:02',0),(13,'on_hand',5,18,9,NULL,'2013-12-05 18:25:02','2013-12-05 18:25:02',0),(14,'on_hand',5,19,10,NULL,'2013-12-05 18:35:49','2013-12-05 18:35:49',0),(15,'on_hand',5,20,11,NULL,'2013-12-05 18:42:49','2013-12-05 18:42:49',0),(16,'on_hand',7,20,11,NULL,'2013-12-05 18:42:49','2013-12-05 18:42:49',0),(17,'on_hand',5,21,12,NULL,'2013-12-05 18:47:50','2013-12-05 18:47:50',0),(18,'on_hand',5,21,12,NULL,'2013-12-05 18:47:50','2013-12-05 18:47:50',0),(20,'on_hand',5,22,14,NULL,'2013-12-05 18:53:14','2013-12-05 18:53:14',0),(116,'on_hand',1,39,33,NULL,'2013-12-23 21:33:01','2013-12-23 21:33:01',0),(117,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(118,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(119,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(120,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(121,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(122,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(123,'on_hand',1,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(124,'on_hand',4,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(125,'on_hand',4,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(126,'on_hand',12,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(127,'on_hand',12,41,34,NULL,'2013-12-23 21:40:22','2013-12-23 21:40:22',0),(128,'on_hand',4,42,35,NULL,'2013-12-23 21:51:39','2013-12-23 21:51:39',0),(129,'on_hand',1,43,36,NULL,'2013-12-23 21:56:36','2013-12-23 21:56:36',0),(130,'on_hand',27,44,37,NULL,'2013-12-23 21:59:34','2013-12-23 21:59:34',0),(131,'backordered',1,46,38,NULL,'2013-12-23 22:03:39','2013-12-23 22:03:39',0),(132,'on_hand',12,49,39,NULL,'2013-12-23 22:55:47','2013-12-23 22:55:47',0),(133,'backordered',1,49,40,NULL,'2013-12-23 22:55:47','2013-12-23 22:55:47',0),(134,'backordered',1,51,41,NULL,'2013-12-23 23:29:35','2013-12-23 23:29:35',0),(135,'on_hand',4,52,42,NULL,'2013-12-23 23:34:22','2013-12-23 23:34:22',0),(136,'backordered',1,54,43,NULL,'2013-12-23 23:41:47','2013-12-23 23:41:47',0),(137,'on_hand',4,57,44,NULL,'2013-12-23 23:49:26','2013-12-23 23:49:26',0),(138,'backordered',1,60,45,NULL,'2013-12-23 23:56:27','2013-12-23 23:56:27',0),(139,'backordered',1,60,45,NULL,'2013-12-23 23:56:27','2013-12-23 23:56:27',0),(140,'on_hand',27,60,46,NULL,'2013-12-23 23:56:28','2013-12-23 23:56:28',0),(141,'backordered',1,63,47,NULL,'2013-12-24 00:02:19','2013-12-24 00:02:19',0),(157,'on_hand',4,62,54,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(158,'on_hand',4,62,54,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(159,'on_hand',4,62,54,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(160,'on_hand',4,62,54,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(161,'on_hand',4,62,54,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(162,'backordered',1,62,55,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(163,'backordered',1,62,55,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(164,'backordered',1,62,55,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(165,'backordered',1,62,55,NULL,'2013-12-24 20:29:59','2013-12-24 20:29:59',0),(166,'on_hand',4,82,56,NULL,'2013-12-24 20:32:50','2013-12-24 20:32:50',0),(170,'backordered',1,85,58,NULL,'2013-12-24 20:39:32','2013-12-24 20:39:32',0),(171,'backordered',1,85,58,NULL,'2013-12-24 20:39:32','2013-12-24 20:39:32',0),(172,'backordered',1,85,58,NULL,'2013-12-24 20:39:32','2013-12-24 20:39:32',0),(173,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(174,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(175,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(176,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(177,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(178,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(179,'on_hand',16,86,59,NULL,'2013-12-24 20:42:41','2013-12-24 20:42:41',0),(180,'on_hand',28,87,60,NULL,'2013-12-24 20:52:12','2013-12-24 20:52:12',0),(181,'on_hand',28,87,60,NULL,'2013-12-24 20:52:12','2013-12-24 20:52:12',0),(182,'on_hand',28,87,60,NULL,'2013-12-24 20:52:12','2013-12-24 20:52:12',0),(183,'on_hand',28,87,60,NULL,'2013-12-24 20:52:12','2013-12-24 20:52:12',0),(184,'on_hand',28,87,60,NULL,'2013-12-24 20:52:12','2013-12-24 20:52:12',0),(185,'on_hand',12,100,61,NULL,'2013-12-26 05:14:23','2013-12-26 05:14:23',0),(186,'on_hand',12,103,62,NULL,'2013-12-26 15:28:15','2013-12-26 15:28:15',1),(188,'on_hand',12,83,64,NULL,'2013-12-28 01:30:28','2013-12-28 01:30:28',0),(190,'on_hand',16,105,66,NULL,'2013-12-28 02:32:21','2013-12-28 02:32:21',0),(191,'on_hand',27,105,67,NULL,'2013-12-28 02:32:22','2013-12-28 02:32:22',0),(192,'on_hand',28,144,68,NULL,'2014-01-09 16:36:25','2014-01-09 16:36:25',0),(193,'on_hand',28,145,69,NULL,'2014-01-09 17:24:14','2014-01-09 17:24:14',0),(194,'on_hand',28,146,70,NULL,'2014-01-09 18:25:41','2014-01-09 18:25:41',1),(195,'on_hand',28,146,70,NULL,'2014-01-09 18:25:41','2014-01-09 18:25:41',1),(196,'on_hand',32,146,70,NULL,'2014-01-09 18:25:41','2014-01-09 18:25:41',1),(197,'on_hand',31,147,71,NULL,'2014-01-09 21:53:10','2014-01-09 21:53:10',0),(198,'on_hand',28,147,71,NULL,'2014-01-09 21:53:10','2014-01-09 21:53:10',0);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,'15.99','2013-11-07 21:48:35','2013-11-07 21:48:35','USD','17.00',1),(2,2,2,1,'22.99','2013-11-07 21:48:35','2013-11-07 21:48:35','USD','21.00',1),(5,5,4,1,'19.99','2013-12-03 14:57:27','2013-12-03 14:57:27','USD','17.00',1),(6,1,6,2,'15.99','2013-12-03 15:11:19','2013-12-03 15:11:19','USD','17.00',1),(8,6,7,1,'19.99','2013-12-03 15:23:30','2013-12-03 15:23:30','USD','17.00',1),(13,6,12,1,'19.99','2013-12-03 23:41:08','2013-12-03 23:41:08','USD','17.00',1),(14,5,12,2,'19.99','2013-12-03 23:43:06','2013-12-03 23:44:26','USD','17.00',1),(15,5,13,1,'19.99','2013-12-03 23:50:48','2013-12-03 23:50:48','USD','17.00',1),(16,5,14,1,'19.99','2013-12-04 17:01:59','2013-12-04 17:01:59','USD','17.00',1),(22,1,17,1,'15.99','2013-12-05 18:03:11','2013-12-05 18:03:11','USD','17.00',1),(23,6,18,1,'19.99','2013-12-05 18:18:51','2013-12-05 18:18:51','USD','17.00',1),(24,5,18,2,'19.99','2013-12-05 18:20:49','2013-12-05 18:23:46','USD','17.00',1),(25,5,19,1,'19.99','2013-12-05 18:34:06','2013-12-05 18:34:06','USD','17.00',1),(26,5,20,1,'19.99','2013-12-05 18:39:30','2013-12-05 18:39:30','USD','17.00',1),(27,7,20,1,'19.99','2013-12-05 18:42:22','2013-12-05 18:42:22','USD','17.00',1),(28,5,21,2,'19.99','2013-12-05 18:44:32','2013-12-05 18:46:40','USD','17.00',1),(29,5,22,1,'19.99','2013-12-05 18:50:30','2013-12-05 18:50:30','USD','17.00',1),(32,1,26,1,'15.99','2013-12-16 23:09:02','2013-12-16 23:09:02','USD','17.00',1),(33,1,41,7,'15.99','2013-12-19 18:42:50','2013-12-23 21:39:45','USD','17.00',1),(43,4,41,2,'19.99','2013-12-20 23:17:21','2013-12-23 21:39:45','USD','17.00',1),(44,1,36,1,'15.99','2013-12-23 14:40:48','2013-12-23 14:40:48','USD','17.00',1),(47,1,38,1,'15.99','2013-12-23 15:52:10','2013-12-23 15:52:10','USD','17.00',1),(66,1,39,1,'15.99','2013-12-23 21:32:53','2013-12-23 21:32:53','USD','17.00',1),(67,12,41,2,'22.99','2013-12-23 21:39:31','2013-12-23 21:39:45','USD','21.00',1),(68,4,42,1,'19.99','2013-12-23 21:50:47','2013-12-23 21:50:47','USD','17.00',1),(69,1,43,1,'15.99','2013-12-23 21:56:17','2013-12-23 21:56:17','USD','17.00',1),(70,27,44,1,'25.00','2013-12-23 21:59:18','2013-12-23 21:59:18','USD',NULL,NULL),(71,1,46,1,'15.99','2013-12-23 22:03:05','2013-12-23 22:03:05','USD','17.00',1),(72,1,49,1,'15.99','2013-12-23 22:40:19','2013-12-23 22:55:22','USD','17.00',1),(73,4,48,1,'19.99','2013-12-23 22:54:31','2013-12-23 22:54:31','USD','17.00',1),(74,12,49,1,'22.99','2013-12-23 22:55:02','2013-12-23 22:55:02','USD','21.00',1),(75,1,51,1,'15.99','2013-12-23 23:28:52','2013-12-23 23:28:52','USD','17.00',1),(76,4,52,1,'19.99','2013-12-23 23:33:59','2013-12-23 23:33:59','USD','17.00',1),(77,1,54,1,'15.99','2013-12-23 23:40:50','2013-12-23 23:40:50','USD','17.00',1),(78,1,56,1,'15.99','2013-12-23 23:44:22','2013-12-23 23:44:22','USD','17.00',1),(79,4,57,1,'19.99','2013-12-23 23:47:21','2013-12-23 23:47:21','USD','17.00',1),(81,1,60,2,'15.99','2013-12-23 23:54:40','2013-12-23 23:56:10','USD','17.00',1),(82,27,60,1,'25.00','2013-12-23 23:55:53','2013-12-23 23:55:53','USD',NULL,NULL),(83,1,63,1,'15.99','2013-12-24 00:01:57','2013-12-24 00:01:57','USD','17.00',1),(86,12,67,1,'22.99','2013-12-24 00:17:23','2013-12-24 00:17:23','USD','21.00',1),(88,27,136,1,'25.00','2013-12-24 00:28:30','2014-01-07 14:50:03','USD',NULL,NULL),(89,12,69,1,'22.99','2013-12-24 00:28:55','2013-12-24 00:28:55','USD','21.00',1),(91,1,136,3,'15.99','2013-12-24 00:35:18','2014-01-07 14:50:03','USD','17.00',1),(92,4,136,1,'19.99','2013-12-24 00:38:57','2014-01-07 14:50:03','USD','17.00',1),(93,1,73,1,'15.99','2013-12-24 00:42:30','2013-12-24 00:42:30','USD','17.00',1),(95,12,136,5,'22.99','2013-12-24 00:53:33','2014-01-07 14:50:03','USD','21.00',1),(96,12,76,1,'22.99','2013-12-24 03:22:20','2013-12-24 03:22:20','USD','21.00',1),(97,12,77,1,'22.99','2013-12-24 04:41:23','2013-12-24 04:41:23','USD','21.00',1),(98,1,78,1,'15.99','2013-12-24 05:10:47','2013-12-24 05:10:47','USD','17.00',1),(99,27,78,1,'25.00','2013-12-24 05:13:24','2013-12-24 05:13:24','USD',NULL,NULL),(100,1,81,5,'15.99','2013-12-24 19:13:35','2013-12-24 19:13:35','USD','17.00',1),(101,1,62,4,'15.99','2013-12-24 19:51:03','2013-12-24 19:51:15','USD','17.00',1),(102,4,62,5,'19.99','2013-12-24 20:28:55','2013-12-24 20:28:55','USD','17.00',1),(103,4,82,1,'19.99','2013-12-24 20:32:26','2013-12-24 20:32:26','USD','17.00',1),(104,4,84,4,'19.99','2013-12-24 20:37:06','2013-12-24 20:37:06','USD','17.00',1),(105,1,85,3,'15.99','2013-12-24 20:38:22','2013-12-24 20:38:22','USD','17.00',1),(106,16,86,7,'13.99','2013-12-24 20:42:13','2013-12-24 20:42:13','USD','11.00',NULL),(107,28,87,5,'12.00','2013-12-24 20:51:45','2013-12-24 20:51:45','USD','12.00',NULL),(108,1,89,2,'15.99','2013-12-24 21:15:54','2013-12-24 21:15:54','USD','17.00',1),(109,12,90,1,'22.99','2013-12-25 20:37:01','2013-12-25 20:37:01','USD','21.00',1),(110,12,91,1,'22.99','2013-12-25 21:26:20','2013-12-25 21:26:20','USD','21.00',1),(111,4,92,1,'19.99','2013-12-26 03:45:47','2013-12-26 03:45:47','USD','17.00',1),(112,4,93,2,'19.99','2013-12-26 03:47:58','2013-12-26 03:51:25','USD','17.00',1),(113,12,94,1,'22.99','2013-12-26 04:00:10','2013-12-26 04:00:10','USD','21.00',1),(114,12,95,1,'22.99','2013-12-26 04:23:52','2013-12-26 04:23:52','USD','21.00',1),(115,12,96,1,'22.99','2013-12-26 04:29:40','2013-12-26 04:29:40','USD','21.00',1),(116,12,97,1,'22.99','2013-12-26 04:35:21','2013-12-26 04:35:21','USD','21.00',1),(117,27,98,1,'25.00','2013-12-26 04:45:50','2013-12-26 04:45:50','USD',NULL,NULL),(118,27,99,1,'25.00','2013-12-26 04:47:31','2013-12-26 04:47:31','USD',NULL,NULL),(119,12,100,1,'22.99','2013-12-26 05:12:47','2013-12-26 05:12:47','USD','21.00',1),(120,12,101,1,'22.99','2013-12-26 05:19:01','2013-12-26 05:19:01','USD','21.00',1),(121,27,102,1,'25.00','2013-12-26 05:21:36','2013-12-26 05:21:36','USD',NULL,NULL),(122,1,102,1,'15.99','2013-12-26 15:19:58','2013-12-26 15:19:58','USD','17.00',1),(123,12,103,1,'22.99','2013-12-26 15:26:07','2013-12-26 15:26:07','USD','21.00',1),(124,1,104,2,'15.99','2013-12-27 15:41:28','2013-12-27 15:41:29','USD','17.00',1),(125,12,83,1,'22.99','2013-12-28 01:00:37','2013-12-28 01:00:37','USD','21.00',1),(127,16,105,1,'13.99','2013-12-28 01:32:10','2013-12-28 01:32:10','USD','11.00',NULL),(128,27,105,1,'25.00','2013-12-28 02:31:57','2013-12-28 02:31:57','USD',NULL,NULL),(129,28,106,1,'12.00','2013-12-28 02:34:26','2013-12-28 02:34:26','USD','12.00',NULL),(130,16,107,1,'13.99','2013-12-28 23:13:13','2013-12-28 23:13:13','USD','11.00',NULL),(131,1,108,1,'15.99','2013-12-28 23:15:29','2013-12-28 23:15:29','USD','17.00',1),(132,12,109,1,'22.99','2013-12-28 23:47:17','2013-12-28 23:47:17','USD','21.00',1),(133,16,111,1,'13.99','2013-12-28 23:53:50','2013-12-28 23:53:50','USD','11.00',NULL),(134,28,112,1,'12.00','2013-12-29 01:05:30','2013-12-29 01:05:30','USD','12.00',NULL),(135,16,113,1,'13.99','2013-12-29 01:13:42','2013-12-29 01:13:42','USD','11.00',NULL),(136,4,114,1,'19.99','2013-12-29 01:23:29','2013-12-29 01:23:29','USD','17.00',1),(137,27,115,1,'25.00','2013-12-29 01:27:40','2013-12-29 01:27:40','USD',NULL,NULL),(138,16,116,1,'13.99','2013-12-29 01:36:09','2013-12-29 01:36:09','USD','11.00',NULL),(139,27,117,1,'25.00','2013-12-29 01:49:48','2013-12-29 01:49:48','USD',NULL,NULL),(140,16,118,1,'13.99','2013-12-29 02:06:25','2013-12-29 02:06:25','USD','11.00',NULL),(141,16,119,1,'13.99','2013-12-29 02:10:44','2013-12-29 02:10:44','USD','11.00',NULL),(142,1,120,1,'15.99','2013-12-29 02:15:07','2013-12-29 02:15:07','USD','17.00',1),(143,16,121,1,'13.99','2013-12-29 02:25:10','2013-12-29 02:25:10','USD','11.00',NULL),(144,16,122,1,'13.99','2013-12-29 02:39:47','2013-12-29 02:39:47','USD','11.00',NULL),(145,16,110,1,'13.99','2013-12-29 02:59:54','2013-12-29 02:59:54','USD','11.00',NULL),(146,16,123,1,'13.99','2013-12-29 03:01:20','2013-12-29 03:01:20','USD','11.00',NULL),(147,16,125,1,'13.99','2013-12-29 03:09:27','2013-12-29 03:09:27','USD','11.00',NULL),(148,16,126,1,'13.99','2013-12-29 03:40:48','2013-12-29 03:40:48','USD','11.00',NULL),(149,28,127,1,'12.00','2013-12-29 03:49:38','2013-12-29 03:49:38','USD','12.00',NULL),(150,16,129,1,'13.99','2013-12-29 04:04:55','2013-12-29 04:04:55','USD','11.00',NULL),(151,16,130,1,'13.99','2013-12-29 04:09:22','2013-12-29 04:09:22','USD','11.00',NULL),(152,16,131,1,'13.99','2013-12-29 15:50:42','2013-12-29 15:50:42','USD','11.00',NULL),(153,4,132,6,'19.99','2013-12-31 21:47:27','2013-12-31 21:47:27','USD','17.00',1),(154,33,137,10,'178.40','2014-01-08 22:05:39','2014-01-08 22:05:39','USD',NULL,NULL),(155,32,138,10,'65.00','2014-01-08 22:15:09','2014-01-08 22:15:09','USD',NULL,NULL),(156,28,140,3,'12.00','2014-01-08 23:01:37','2014-01-08 23:01:37','USD','12.00',NULL),(157,32,139,1,'65.00','2014-01-08 23:13:44','2014-01-08 23:13:44','USD',NULL,NULL),(158,28,141,1,'12.00','2014-01-09 15:14:28','2014-01-09 15:14:28','USD','12.00',NULL),(159,28,143,1,'12.00','2014-01-09 16:05:28','2014-01-09 16:05:28','USD','12.00',NULL),(160,28,144,1,'12.00','2014-01-09 16:36:05','2014-01-09 16:36:05','USD','12.00',NULL),(161,28,145,1,'12.00','2014-01-09 17:23:57','2014-01-09 17:23:57','USD','12.00',NULL),(162,28,146,2,'12.00','2014-01-09 18:24:58','2014-01-09 18:25:06','USD','12.00',NULL),(163,32,146,1,'65.00','2014-01-09 18:25:21','2014-01-09 18:25:21','USD',NULL,NULL),(164,31,147,1,'220.00','2014-01-09 21:24:46','2014-01-09 21:24:46','USD',NULL,NULL),(165,28,147,1,'12.00','2014-01-09 21:52:51','2014-01-09 21:52:51','USD','12.00',NULL),(168,31,148,1,'220.00','2014-01-10 18:34:14','2014-01-10 18:34:14','USD',NULL,NULL),(169,31,149,1,'220.00','2014-01-10 18:49:00','2014-01-10 18:49:00','USD',NULL,NULL),(170,31,150,1,'220.00','2014-01-10 19:58:03','2014-01-10 19:58:03','USD',NULL,NULL),(171,28,152,1,'12.00','2014-01-15 14:36:03','2014-01-15 14:36:03','USD','12.00',NULL);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2013-11-07 21:48:11','2013-11-07 21:48:11'),(2,'tshirt-color','Color',2,'2013-11-07 21:48:11','2013-11-07 21:48:11');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2013-11-07 21:48:11','2013-11-07 21:48:11'),(2,2,'Medium','M',1,'2013-11-07 21:48:11','2013-11-07 21:48:11'),(3,3,'Large','L',1,'2013-11-07 21:48:11','2013-11-07 21:48:11'),(4,4,'Extra Large','XL',1,'2013-11-07 21:48:12','2013-11-07 21:48:12'),(5,1,'Red','Red',2,'2013-11-07 21:48:12','2013-11-07 21:48:12'),(6,2,'Green','Green',2,'2013-11-07 21:48:12','2013-11-07 21:48:12'),(7,3,'Blue','Blue',2,'2013-11-07 21:48:12','2013-11-07 21:48:12');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1),(17,5),(18,1),(18,7),(19,1),(19,6),(20,2),(20,5),(21,2),(21,7),(22,2),(22,6),(23,3),(23,5),(24,3),(24,7),(25,3),(25,6),(26,4),(26,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R123456789','15.99','21.79','complete','5.80',NULL,'2013-11-06 21:48:35',2,1,'0.00',NULL,'pending','balance_due','spree@example.com',NULL,'2013-11-07 21:48:35','2013-11-07 21:48:35','USD',NULL,NULL),(2,'R987654321','22.99','29.14','complete','6.15',NULL,'2013-11-06 21:48:35',2,1,'0.00',NULL,'pending','balance_due','spree@example.com',NULL,'2013-11-07 21:48:35','2013-11-07 21:48:35','USD',NULL,NULL),(4,'R031716606','19.99','25.99','complete','6.00',2,'2013-12-03 14:59:59',7,8,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-03 14:57:27','2013-12-03 14:59:59','USD','127.0.0.1',2),(6,'R488074537','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-03 15:10:37','2013-12-03 15:10:37','USD',NULL,1),(7,'R202304317','19.99','25.99','complete','6.00',2,'2013-12-03 15:25:02',9,10,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-03 15:23:30','2013-12-03 15:25:02','USD','127.0.0.1',2),(12,'R205026565','59.97','59.97','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-03 23:41:08','2013-12-03 23:41:10','USD','127.0.0.1',NULL),(13,'R075317538','19.99','19.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-03 23:50:47','2013-12-03 23:50:50','USD','127.0.0.1',NULL),(14,'R438316570','19.99','19.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-04 17:01:58','2013-12-04 17:02:01','USD','127.0.0.1',NULL),(17,'R727462736','15.99','21.79','complete','5.80',2,'2013-12-05 18:10:27',45,46,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 17:52:35','2013-12-05 18:10:27','USD','127.0.0.1',2),(18,'R224873037','59.97','67.97','complete','8.00',2,'2013-12-05 18:29:05',59,60,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 18:10:31','2013-12-05 18:29:05','USD','127.0.0.1',2),(19,'R466855013','19.99','25.99','complete','6.00',2,'2013-12-05 18:35:58',63,64,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 18:29:07','2013-12-05 18:35:58','USD','127.0.0.1',2),(20,'R181407562','39.98','46.98','complete','7.00',2,'2013-12-05 18:42:55',67,68,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 18:36:01','2013-12-05 18:42:55','USD','127.0.0.1',2),(21,'R435226835','39.98','46.98','complete','7.00',2,'2013-12-05 18:47:54',75,76,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 18:42:58','2013-12-05 18:47:54','USD','127.0.0.1',2),(22,'R728727421','19.99','25.99','complete','6.00',2,'2013-12-05 19:28:17',87,88,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-05 18:47:57','2013-12-05 19:28:17','USD','127.0.0.1',2),(26,'R414145104','15.99','15.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-16 23:09:02','2013-12-16 23:09:02','USD',NULL,NULL),(36,'R426534652','15.99','15.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-23 14:40:48','2013-12-23 14:42:30','USD','127.0.0.1',NULL),(38,'R321208177','15.99','15.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-23 15:52:10','2013-12-23 15:52:10','USD',NULL,NULL),(39,'R602520184','15.99','20.99','complete','5.00',2,'2013-12-23 21:35:37',175,176,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 21:27:02','2013-12-23 21:35:37','USD','127.0.0.1',2),(41,'R254756515','197.89','202.89','complete','5.00',1,'2013-12-23 21:40:30',177,178,'0.00',NULL,'pending','balance_due','dion.santana@gmail.com',NULL,'2013-12-23 21:39:31','2013-12-23 21:40:30','USD','127.0.0.1',1),(42,'R573160172','19.99','24.99','complete','5.00',1,'2013-12-23 21:51:45',179,180,'0.00',NULL,'pending','balance_due','dion.santana@gmail.com',NULL,'2013-12-23 21:40:30','2013-12-23 21:51:45','USD','127.0.0.1',1),(43,'R810442536','15.99','20.99','complete','5.00',1,'2013-12-23 21:56:51',181,182,'0.00',NULL,'pending','balance_due','dion.santana@gmail.com',NULL,'2013-12-23 21:51:45','2013-12-23 21:56:51','USD','127.0.0.1',1),(44,'R603543175','25.00','30.00','complete','5.00',1,'2013-12-23 21:59:38',183,184,'0.00',NULL,'pending','balance_due','dion.santana@gmail.com',NULL,'2013-12-23 21:56:51','2013-12-23 21:59:38','USD','127.0.0.1',1),(46,'R357824210','15.99','20.99','complete','5.00',2,'2013-12-23 22:03:46',185,186,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 22:03:05','2013-12-23 22:03:59','USD','127.0.0.1',2),(48,'R588005180','19.99','19.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-23 22:54:31','2013-12-23 22:54:34','USD','127.0.0.1',NULL),(49,'R648434727','38.98','48.98','complete','10.00',2,'2013-12-23 22:56:02',187,188,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 22:55:02','2013-12-23 22:56:30','USD','127.0.0.1',2),(51,'R145754207','15.99','20.99','complete','5.00',2,'2013-12-23 23:29:43',189,190,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 23:28:52','2013-12-23 23:29:46','USD','190.213.80.193',2),(52,'R538475471','19.99','24.99','complete','5.00',2,'2013-12-23 23:34:28',191,192,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 23:29:50','2013-12-23 23:34:31','USD','190.213.80.193',2),(54,'R755081024','15.99','20.99','complete','5.00',2,'2013-12-23 23:41:54',193,194,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 23:40:50','2013-12-23 23:41:58','USD','190.213.80.193',2),(56,'R484263121','15.99','15.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-23 23:44:22','2013-12-23 23:44:25','USD','190.213.80.193',NULL),(57,'R247651607','19.99','24.99','complete','5.00',2,'2013-12-23 23:49:45',195,196,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 23:47:21','2013-12-23 23:49:48','USD','190.213.80.193',2),(60,'R125224442','56.98','66.98','complete','10.00',2,'2013-12-23 23:56:35',197,198,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-23 23:55:53','2013-12-23 23:56:38','USD','190.213.80.193',2),(62,'R615717788','163.91','173.91','complete','10.00',1,'2013-12-24 20:30:18',205,206,'0.00',NULL,'backorder','balance_due','dion.santana@gmail.com',NULL,'2013-12-23 23:59:26','2013-12-24 20:30:29','USD','190.213.80.193',1),(63,'R468785572','15.99','20.99','complete','5.00',2,'2013-12-24 00:02:26',199,200,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-24 00:01:57','2013-12-24 00:02:30','USD','190.213.80.193',2),(67,'R707074768','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 00:17:22','2013-12-24 00:17:22','USD',NULL,NULL),(69,'R735361768','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 00:28:55','2013-12-24 00:28:58','USD','190.213.80.193',NULL),(73,'R255516136','15.99','15.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 00:42:30','2013-12-24 00:42:32','USD','190.213.80.193',NULL),(76,'R538017816','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 03:22:20','2013-12-24 03:23:17','USD','200.7.90.57',NULL),(77,'R116343054','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 04:41:22','2013-12-24 04:41:31','USD','200.7.90.57',NULL),(78,'R176278884','40.99','40.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 05:10:47','2013-12-24 05:11:01','USD','200.7.90.57',NULL),(80,'R246140382','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 17:08:30','2013-12-24 17:08:30','USD',NULL,NULL),(81,'R603445326','79.95','79.95','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 19:13:35','2013-12-24 19:13:35','USD',NULL,NULL),(82,'R126883203','19.99','24.99','complete','5.00',1,'2013-12-24 20:33:23',207,208,'0.00',NULL,'pending','balance_due','chris@monstermediagroup.com',NULL,'2013-12-24 20:30:32','2013-12-24 20:33:26','USD','190.213.80.193',1),(83,'R825085008','22.99','22.99','complete','0.00',1,'2013-12-28 01:30:49',222,223,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-24 20:33:29','2013-12-28 01:30:54','USD','190.83.148.5',1),(84,'R150680456','79.96','79.96','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 20:37:06','2013-12-24 20:37:09','USD','190.213.80.193',NULL),(85,'R725336585','47.97','52.97','complete','5.00',NULL,'2013-12-24 20:39:36',211,210,'0.00',NULL,'backorder','balance_due','dion@monstermediagroup.com',NULL,'2013-12-24 20:38:22','2013-12-24 20:39:39','USD','190.213.80.193',NULL),(86,'R432787056','97.93','102.93','complete','5.00',NULL,'2013-12-24 20:42:45',212,213,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-24 20:42:13','2013-12-24 20:42:48','USD','190.213.80.193',NULL),(87,'R642240810','60.00','65.00','complete','5.00',NULL,'2013-12-24 20:52:19',214,215,'0.00',NULL,'pending','balance_due','chris@monstermediagroup.com',NULL,'2013-12-24 20:51:33','2013-12-24 20:52:22','USD','190.213.80.193',NULL),(88,'R365188604','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 20:52:27','2013-12-24 20:52:27','USD',NULL,NULL),(89,'R536726812','31.98','31.98','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-24 20:52:27','2013-12-24 20:52:27','USD',NULL,NULL),(90,'R834107554','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-25 20:37:01','2013-12-25 20:37:10','USD','200.7.90.57',NULL),(91,'R036363058','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-25 21:26:20','2013-12-25 21:26:28','USD','200.7.90.57',NULL),(92,'R016075251','19.99','19.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 03:45:47','2013-12-26 03:45:55','USD','200.7.90.57',NULL),(93,'R543273442','39.98','39.98','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 03:47:58','2013-12-26 03:48:03','USD','200.7.90.57',NULL),(94,'R617682527','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:00:10','2013-12-26 04:00:16','USD','200.7.90.57',NULL),(95,'R635458564','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:23:52','2013-12-26 04:23:56','USD','200.7.90.57',NULL),(96,'R032532665','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:29:39','2013-12-26 04:29:45','USD','200.7.90.57',NULL),(97,'R104643051','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:35:21','2013-12-26 04:35:26','USD','200.7.90.57',NULL),(98,'R681061544','25.00','25.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:45:50','2013-12-26 04:45:54','USD','200.7.90.57',NULL),(99,'R174507336','25.00','25.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 04:47:31','2013-12-26 04:47:38','USD','200.7.90.57',NULL),(100,'R636173567','22.99','27.99','complete','5.00',NULL,'2013-12-26 05:14:57',216,217,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-26 05:12:47','2013-12-26 05:15:01','USD','200.7.90.57',NULL),(101,'R588545768','22.99','22.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 05:19:01','2013-12-26 05:19:09','USD','200.7.90.57',NULL),(102,'R444216567','40.99','40.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-26 05:21:35','2013-12-26 05:21:50','USD','200.7.90.57',NULL),(103,'R118615726','22.99','27.99','delivery','5.00',NULL,NULL,218,219,'0.00',NULL,NULL,NULL,'dion@monstermediagroup.com',NULL,'2013-12-26 15:26:07','2013-12-26 15:28:15','USD','200.7.90.57',NULL),(104,'R540630066','31.98','31.98','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-27 15:41:28','2013-12-27 15:41:38','USD','190.58.153.190',NULL),(105,'R011517734','38.99','38.99','complete','0.00',1,'2013-12-28 02:32:31',226,227,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 01:30:57','2013-12-28 02:32:34','USD','190.83.148.5',1),(106,'R443817683','12.00','12.00','complete','0.00',1,'2013-12-28 02:35:11',228,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 02:32:38','2013-12-28 02:35:11','USD','190.83.148.5',1),(107,'R838304210','13.99','13.99','complete','0.00',1,'2013-12-28 23:13:31',229,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 02:35:16','2013-12-28 23:13:31','USD','190.83.148.5',1),(108,'R566524242','15.99','15.99','complete','0.00',1,'2013-12-28 23:15:45',230,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 23:13:34','2013-12-28 23:15:45','USD','190.83.148.5',1),(109,'R203636524','22.99','22.99','complete','0.00',1,'2013-12-28 23:47:40',231,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 23:15:48','2013-12-28 23:47:40','USD','190.83.148.5',1),(110,'R506327835','13.99','13.99','complete','0.00',1,'2013-12-29 03:00:11',244,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 23:47:43','2013-12-29 03:00:11','USD','190.83.148.5',1),(111,'R665560723','13.99','13.99','complete','0.00',NULL,'2013-12-28 23:54:15',232,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-28 23:53:50','2013-12-28 23:54:15','USD','190.83.148.5',NULL),(112,'R456628620','12.00','12.00','complete','0.00',NULL,'2013-12-29 01:05:54',233,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:05:30','2013-12-29 01:05:54','USD','190.83.148.5',NULL),(113,'R716785852','13.99','13.99','complete','0.00',NULL,'2013-12-29 01:14:00',234,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:13:41','2013-12-29 01:14:00','USD','190.83.148.5',NULL),(114,'R417688180','19.99','19.99','complete','0.00',NULL,'2013-12-29 01:23:50',235,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:23:29','2013-12-29 01:23:50','USD','190.83.148.5',NULL),(115,'R031466130','25.00','25.00','complete','0.00',NULL,'2013-12-29 01:27:56',236,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:27:40','2013-12-29 01:27:56','USD','190.83.148.5',NULL),(116,'R313200317','13.99','13.99','complete','0.00',NULL,'2013-12-29 01:36:34',237,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:36:09','2013-12-29 01:36:34','USD','190.83.148.5',NULL),(117,'R434484818','25.00','25.00','complete','0.00',NULL,'2013-12-29 01:50:30',238,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 01:49:48','2013-12-29 01:50:30','USD','190.83.148.5',NULL),(118,'R310875551','13.99','13.99','complete','0.00',NULL,'2013-12-29 02:06:42',239,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 02:06:25','2013-12-29 02:06:42','USD','190.83.148.5',NULL),(119,'R124684578','13.99','13.99','complete','0.00',NULL,'2013-12-29 02:11:00',240,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 02:10:44','2013-12-29 02:11:00','USD','190.83.148.5',NULL),(120,'R761223581','15.99','15.99','complete','0.00',NULL,'2013-12-29 02:15:22',241,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 02:15:07','2013-12-29 02:15:22','USD','190.83.148.5',NULL),(121,'R877526447','13.99','13.99','complete','0.00',NULL,'2013-12-29 02:25:29',242,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 02:25:09','2013-12-29 02:25:29','USD','190.83.148.5',NULL),(122,'R087728458','13.99','13.99','complete','0.00',NULL,'2013-12-29 02:40:50',243,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 02:39:47','2013-12-29 02:40:50','USD','190.83.148.5',NULL),(123,'R173422542','13.99','13.99','complete','0.00',1,'2013-12-29 03:01:39',245,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 03:00:18','2013-12-29 03:01:39','USD','190.83.148.5',1),(125,'R312511281','13.99','13.99','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-29 03:09:26','2013-12-29 03:09:26','USD',NULL,NULL),(126,'R052270672','13.99','13.99','complete','0.00',NULL,'2013-12-29 03:41:17',246,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 03:40:48','2013-12-29 03:41:18','USD','190.83.148.5',NULL),(127,'R131141015','12.00','12.00','complete','0.00',NULL,'2013-12-29 03:50:34',247,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 03:49:37','2013-12-29 03:50:34','USD','190.83.148.5',NULL),(129,'R426131586','13.99','13.99','complete','0.00',NULL,'2013-12-29 04:05:31',248,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 04:04:55','2013-12-29 04:05:31','USD','190.83.148.5',NULL),(130,'R456326557','13.99','13.99','complete','0.00',NULL,'2013-12-29 04:09:40',249,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 04:09:22','2013-12-29 04:09:40','USD','190.83.148.5',NULL),(131,'R408806644','13.99','13.99','complete','0.00',NULL,'2013-12-29 15:51:18',250,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-29 15:50:42','2013-12-29 15:51:18','USD','190.83.148.5',NULL),(132,'R860718558','119.94','119.94','complete','0.00',NULL,'2013-12-31 21:49:10',251,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2013-12-31 21:47:27','2013-12-31 21:49:10','USD','190.213.80.193',NULL),(133,'R317542068','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-31 21:50:58','2013-12-31 21:50:58','USD',NULL,NULL),(134,'R114518627','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2013-12-31 21:51:38','2013-12-31 21:51:38','USD',NULL,NULL),(135,'R523756140','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-01 03:23:23','2014-01-01 03:23:23','USD',NULL,NULL),(136,'R640732241','207.91','207.91','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-06 20:55:48','2014-01-06 20:55:48','USD',NULL,NULL),(137,'R002106417','1784.00','1784.00','complete','0.00',1,'2014-01-08 22:06:06',252,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2014-01-08 14:55:50','2014-01-08 22:06:06','USD','190.213.80.193',1),(138,'R825041616','650.00','650.00','complete','0.00',1,'2014-01-08 22:19:00',253,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2014-01-08 22:06:07','2014-01-08 22:19:00','USD','190.213.80.193',1),(139,'R435820134','65.00','65.00','complete','0.00',1,'2014-01-08 23:14:40',255,NULL,'0.00',NULL,NULL,'balance_due','dion.santana@gmail.com',NULL,'2014-01-08 22:19:00','2014-01-08 23:14:40','USD','190.213.80.193',1),(140,'R542367013','36.00','36.00','complete','0.00',NULL,'2014-01-08 23:01:50',254,NULL,'0.00',NULL,NULL,'balance_due','dion.santana@gmail.com',NULL,'2014-01-08 23:01:36','2014-01-08 23:01:50','USD','190.213.80.193',NULL),(141,'R115857522','12.00','12.00','complete','0.00',1,'2014-01-09 15:14:57',256,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2014-01-08 23:14:41','2014-01-09 15:14:57','USD','190.213.80.193',1),(143,'R568457632','12.00','12.00','complete','0.00',NULL,'2014-01-09 16:05:55',257,NULL,'0.00',NULL,NULL,'balance_due','dion@monstermediagroup.com',NULL,'2014-01-09 16:05:28','2014-01-09 16:05:55','USD','190.213.80.193',NULL),(144,'R533268642','12.00','12.00','complete','0.00',NULL,'2014-01-09 16:36:33',258,259,'0.00',NULL,'pending','balance_due','dion@monstermediagroup.com',NULL,'2014-01-09 16:36:05','2014-01-09 16:36:33','USD','190.213.80.193',NULL),(145,'R007387005','12.00','12.00','complete','0.00',NULL,'2014-01-09 17:24:21',260,261,'0.00',NULL,'pending','balance_due','user.axnet@gmail.com',NULL,'2014-01-09 17:23:57','2014-01-09 17:24:21','USD','190.213.80.193',NULL),(146,'R585306472','89.00','89.00','delivery','0.00',NULL,NULL,262,263,'0.00',NULL,NULL,NULL,'user.axnet@gmail.com',NULL,'2014-01-09 18:24:57','2014-01-09 18:25:41','USD','190.58.153.190',NULL),(147,'R513684446','232.00','232.00','complete','0.00',NULL,'2014-01-09 21:53:20',264,265,'0.00',NULL,'pending','balance_due','user.axnet@gmail.com',NULL,'2014-01-09 21:24:46','2014-01-09 21:53:20','USD','190.213.80.193',NULL),(148,'R552773475','220.00','220.00','address','0.00',1,NULL,268,269,'0.00',NULL,NULL,NULL,'xnet.angostura@gmail.com',NULL,'2014-01-10 17:51:58','2014-01-10 17:52:37','USD','190.213.80.193',1),(149,'R343368583','220.00','220.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-10 18:49:00','2014-01-10 18:49:05','USD','190.213.80.193',NULL),(150,'R100137288','220.00','220.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-10 19:57:52','2014-01-10 19:58:07','USD','190.213.80.193',NULL),(151,'R762048152','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-14 18:40:27','2014-01-14 18:40:27','USD',NULL,NULL),(152,'R538747353','12.00','12.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-15 14:35:54','2014-01-15 14:36:09','USD','190.213.75.201',NULL),(153,'R021021862','0.00','0.00','cart','0.00',NULL,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,NULL,NULL,'2014-01-20 20:19:46','2014-01-20 20:19:46','USD',NULL,NULL);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for development.',0,'development',NULL,'2013-11-07 21:48:08','2013-12-03 15:50:46',''),(2,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for production.',1,'production',NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL),(3,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for staging.',0,'development',NULL,'2013-11-07 21:48:08','2013-12-03 15:50:17',''),(4,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for test.',0,'test',NULL,'2013-11-07 21:48:08','2013-12-03 15:50:02',''),(5,'Spree::PaymentMethod::Check','Check','Pay by check.',1,'development',NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL);
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,'21.79',1,1,'Spree::CreditCard',1,'pending','12345',NULL,'2013-11-07 21:48:36','2013-11-07 21:48:36','5YCFFDAX',NULL,NULL),(2,'29.14',2,1,'Spree::CreditCard',1,'pending','12345',NULL,'2013-11-07 21:48:36','2013-11-07 21:48:36','J8B5ETAX',NULL,NULL),(3,'25.99',4,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-03 14:59:59','2013-12-03 14:59:59','TWZTATA7',NULL,NULL),(4,'25.99',7,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-03 15:25:02','2013-12-03 15:25:02','UKSPVX9K',NULL,NULL),(5,'21.79',17,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 18:10:27','2013-12-05 18:10:27','ZTRV2QY3',NULL,NULL),(6,'67.97',18,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 18:29:05','2013-12-05 18:29:05','LMNATXKR',NULL,NULL),(7,'25.99',19,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 18:35:57','2013-12-05 18:35:57','ZFBAAMVD',NULL,NULL),(8,'46.98',20,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 18:42:55','2013-12-05 18:42:55','SY7499KX',NULL,NULL),(9,'46.98',21,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 18:47:54','2013-12-05 18:47:54','GCTTMLQT',NULL,NULL),(10,'25.99',22,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-05 19:28:17','2013-12-05 19:28:17','B4WD97NG',NULL,NULL),(12,'40.98',39,NULL,NULL,5,'invalid',NULL,NULL,'2013-12-23 21:31:22','2013-12-23 21:33:11','2XHRG2QM',NULL,NULL),(13,'20.99',39,NULL,NULL,5,'invalid',NULL,NULL,'2013-12-23 21:33:11','2013-12-23 21:35:37','LBE8R8VV',NULL,NULL),(14,'20.99',39,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 21:35:37','2013-12-23 21:35:37','A3PR5THK',NULL,NULL),(15,'202.89',41,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 21:40:30','2013-12-23 21:40:30','HVN34MXJ',NULL,NULL),(16,'24.99',42,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 21:51:45','2013-12-23 21:51:45','H9HR272Z',NULL,NULL),(17,'20.99',43,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 21:56:50','2013-12-23 21:56:50','3X4LULSJ',NULL,NULL),(18,'30.00',44,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 21:59:38','2013-12-23 21:59:38','AHXN2C2D',NULL,NULL),(19,'20.99',46,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 22:03:46','2013-12-23 22:03:46','QKSR8FKL',NULL,NULL),(20,'48.98',49,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 22:56:02','2013-12-23 22:56:02','YVHWPWK3',NULL,NULL),(21,'20.99',51,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 23:29:43','2013-12-23 23:29:43','RXCXVTDK',NULL,NULL),(22,'24.99',52,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 23:34:27','2013-12-23 23:34:27','JQES7NE7',NULL,NULL),(23,'20.99',54,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 23:41:54','2013-12-23 23:41:54','B9N8EVRM',NULL,NULL),(24,'24.99',57,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 23:49:45','2013-12-23 23:49:45','Y554RC9F',NULL,NULL),(25,'66.98',60,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-23 23:56:35','2013-12-23 23:56:35','GBMJ26EG',NULL,NULL),(26,'20.99',63,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 00:02:26','2013-12-24 00:02:26','DZDLMCYK',NULL,NULL),(28,'173.91',62,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 20:30:18','2013-12-24 20:30:18','TYDX48AH',NULL,NULL),(29,'24.99',82,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 20:33:23','2013-12-24 20:33:23','HDWZQMKX',NULL,NULL),(30,'52.97',85,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 20:39:36','2013-12-24 20:39:36','VK92HBJD',NULL,NULL),(31,'102.93',86,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 20:42:45','2013-12-24 20:42:45','LA3YP8SW',NULL,NULL),(32,'65.00',87,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-24 20:52:19','2013-12-24 20:52:19','4RGQDRSR',NULL,NULL),(33,'27.99',100,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-26 05:14:57','2013-12-26 05:14:57','PBATWUEM',NULL,NULL),(34,'22.99',83,NULL,NULL,5,'checkout',NULL,NULL,'2013-12-28 01:30:49','2013-12-28 01:30:49','M45JU3ZE',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 125\n...\n','/spree/app_configuration/default_country_id','integer','2013-11-07 21:47:19','2014-01-23 22:02:55'),(2,'--- 5.0\n...\n','/spree/calculator/flat_rate/amount/1','decimal','2013-11-07 21:48:08','2013-11-07 21:48:08'),(3,'--- USD\n...\n','/spree/calculator/flat_rate/currency/1','string','2013-11-07 21:48:08','2013-11-07 21:48:08'),(4,'--- 5.0\n...\n','/spree/calculator/flat_rate/amount/4','decimal','2013-11-07 21:48:08','2013-11-07 21:48:08'),(5,'--- EUR\n...\n','/spree/calculator/flat_rate/currency/4','string','2013-11-07 21:48:09','2013-11-07 21:48:09'),(6,'--- 15.0\n...\n','/spree/calculator/flat_rate/amount/3','decimal','2013-11-07 21:48:09','2013-11-07 21:48:09'),(7,'--- USD\n...\n','/spree/calculator/flat_rate/currency/3','string','2013-11-07 21:48:09','2013-11-07 21:48:09'),(8,'--- 10.0\n...\n','/spree/calculator/flat_rate/amount/2','decimal','2013-11-07 21:48:09','2013-11-07 21:48:09'),(9,'--- USD\n...\n','/spree/calculator/flat_rate/currency/2','string','2013-11-07 21:48:09','2013-11-07 21:48:09'),(10,'--- USD\n...\n','/spree/app_configuration/currency','string','2013-11-07 21:48:09','2014-01-08 23:08:27'),(11,'--- Angostura Extranet\n...\n','/spree/app_configuration/site_name','string','2013-11-21 20:40:09','2014-01-23 22:02:55'),(12,'--- store/logo.png\n...\n','/spree/app_configuration/logo','string','2013-12-02 17:01:08','2014-01-23 22:02:57'),(13,'--- true\n...\n','/spree/app_configuration/enable_mail_delivery','boolean','2013-12-03 14:28:44','2014-01-23 22:02:55'),(14,'--- xnet.angostura@gmail.com\n...\n','/spree/app_configuration/mails_from','string','2013-12-03 14:28:44','2014-01-23 22:02:55'),(15,'--- dion.santana@gmail.com\n...\n','/spree/app_configuration/mail_bcc','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(16,'--- \'\'\n','/spree/app_configuration/intercept_email','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(17,'--- gmail.com\n...\n','/spree/app_configuration/mail_domain','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(18,'--- smtp.gmail.com\n...\n','/spree/app_configuration/mail_host','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(19,'--- 587\n...\n','/spree/app_configuration/mail_port','integer','2013-12-03 14:28:44','2014-01-09 17:03:29'),(20,'--- TLS\n...\n','/spree/app_configuration/secure_connection_type','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(21,'--- plain\n...\n','/spree/app_configuration/mail_auth_type','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(22,'--- dion.santana\n...\n','/spree/app_configuration/smtp_username','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(23,'--- ruthlessness9!\n...\n','/spree/app_configuration/smtp_password','string','2013-12-03 14:28:44','2014-01-09 17:03:29'),(24,'--- false\n...\n','/spree/app_configuration/allow_guest_checkout','boolean','2013-12-03 16:04:48','2014-01-23 22:02:55'),(25,'--- true\n...\n','/spree/app_configuration/allow_ssl_in_staging','boolean','2013-12-04 23:56:17','2014-01-23 22:02:55'),(26,'--- true\n...\n','/spree/app_configuration/address_requires_state','boolean','2013-12-05 16:10:26','2014-01-23 22:02:55'),(27,'--- \'\'\n','/spree/app_configuration/default_seo_title','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(28,'--- spree, demo\n...\n','/spree/app_configuration/default_meta_keywords','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(29,'--- Spree demo site\n...\n','/spree/app_configuration/default_meta_description','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(30,'--- extranet.angostura.com\n...\n','/spree/app_configuration/site_url','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(31,'--- true\n...\n','/spree/app_configuration/allow_ssl_in_production','boolean','2013-12-23 22:01:22','2014-01-08 23:08:27'),(32,'--- false\n...\n','/spree/app_configuration/allow_ssl_in_development_and_test','boolean','2013-12-23 22:01:22','2014-01-23 22:02:55'),(33,'--- true\n...\n','/spree/app_configuration/check_for_spree_alerts','boolean','2013-12-23 22:01:22','2014-01-08 23:08:27'),(34,'--- false\n...\n','/spree/app_configuration/display_currency','boolean','2013-12-23 22:01:22','2014-01-08 23:08:27'),(35,'--- false\n...\n','/spree/app_configuration/hide_cents','boolean','2013-12-23 22:01:22','2014-01-08 23:08:27'),(36,'--- before\n...\n','/spree/app_configuration/currency_symbol_position','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(37,'--- .\n...\n','/spree/app_configuration/currency_decimal_mark','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(38,'--- \',\'\n','/spree/app_configuration/currency_thousands_separator','string','2013-12-23 22:01:22','2014-01-08 23:08:27'),(39,'--- false\n...\n','/spree/auth_configuration/registration_step','boolean','2013-12-24 05:08:24','2013-12-26 04:28:49'),(40,'--- 0.0\n...\n','/spree/calculator/shipping/flat_rate/amount/6','decimal','2013-12-28 00:07:50','2013-12-28 00:07:50'),(41,'--- USD\n...\n','/spree/calculator/shipping/flat_rate/currency/6','string','2013-12-28 00:07:50','2013-12-28 00:07:50'),(42,'--- true\n...\n','/spree/app_configuration/override_actionmailer_config','boolean','2014-01-09 14:52:45','2014-01-23 22:02:55');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (44,28,'12.00','USD'),(47,31,'220.00','USD'),(48,32,'65.00','USD'),(49,33,'178.40','USD');
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_idx_unique` (`permalink`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 00:00:00','2014-01-08 20:26:27','1389212787_ruby-on-rails-tote','','',1,1,'2013-11-07 21:48:09','2014-01-08 20:26:27'),(2,'Ruby on Rails Bag','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:16','1386954256_ruby-on-rails-bag',NULL,NULL,1,1,'2013-11-07 21:48:09','2013-12-13 17:04:16'),(3,'Ruby on Rails Baseball Jersey','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:21','1386954261_ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2013-11-07 21:48:09','2013-12-13 17:04:21'),(4,'Ruby on Rails Jr. Spaghetti','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 00:00:00','2014-01-08 20:26:32','1389212792_ruby-on-rails-jr-spaghetti','','',1,1,'2013-11-07 21:48:09','2014-01-08 20:26:32'),(5,'Ruby on Rails Ringer T-Shirt','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 00:00:00','2013-12-13 17:01:26','1386954086_ruby-on-rails-ringer-t-shirt','','',1,1,'2013-11-07 21:48:10','2013-12-13 17:01:26'),(6,'Ruby Baseball Jersey','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:13','1386954253_ruby-baseball-jersey',NULL,NULL,1,1,'2013-11-07 21:48:10','2013-12-13 17:04:13'),(7,'Apache Baseball Jersey','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:09','1386954249_apache-baseball-jersey',NULL,NULL,1,1,'2013-11-07 21:48:10','2013-12-13 17:04:09'),(8,'Spree Baseball Jersey','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 00:00:00','2013-12-13 17:03:04','1386954184_spree-baseball-jersey','','',1,1,'2013-11-07 21:48:10','2013-12-13 17:03:04'),(9,'Spree Jr. Spaghetti','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:58','1386954298_spree-jr-spaghetti',NULL,NULL,1,1,'2013-11-07 21:48:10','2013-12-13 17:04:58'),(10,'Spree Ringer T-Shirt','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:31','1386954271_spree-ringer-t-shirt',NULL,NULL,1,1,'2013-11-07 21:48:10','2013-12-13 17:04:31'),(11,'Spree Tote','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:40','1386954280_spree-tote',NULL,NULL,1,1,'2013-11-07 21:48:10','2013-12-13 17:04:40'),(12,'Spree Bag','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2014-01-08 20:25:52','1389212752_spree-bag',NULL,NULL,1,1,'2013-11-07 21:48:10','2014-01-08 20:25:52'),(13,'Ruby on Rails Mug','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:53','1386954293_ruby-on-rails-mug',NULL,NULL,NULL,1,'2013-11-07 21:48:10','2013-12-13 17:04:53'),(14,'Ruby on Rails Stein','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:04:36','1386954276_ruby-on-rails-stein',NULL,NULL,NULL,1,'2013-11-07 21:48:11','2013-12-13 17:04:36'),(15,'Spree Stein','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2013-12-13 17:05:04','1386954304_spree-stein',NULL,NULL,NULL,1,'2013-11-07 21:48:11','2013-12-13 17:05:04'),(16,'Spree Mug','Numquam molestiae natus et occaecati qui est. A quis temporibus quod esse accusamus non. Ad ratione nisi recusandae voluptatem ut vero sed eos.','2013-11-07 21:48:09','2014-01-08 20:25:45','1389212745_spree-mug',NULL,NULL,NULL,1,'2013-11-07 21:48:11','2014-01-08 20:25:45'),(17,'Test Product','','2013-11-07 00:00:00','2014-01-08 20:25:35','1389212735_test-product','','',NULL,2,'2013-12-13 16:53:38','2014-01-08 20:25:35'),(18,'Angostura - Glencairn Glass','','2013-12-23 00:00:00',NULL,'glencairn','','',NULL,2,'2013-12-24 19:40:46','2014-01-08 21:49:44'),(21,'Angostura - New Fashioned Kit','','2014-01-01 00:00:00',NULL,'angostura-new-fashioned-kit','','',NULL,2,'2014-01-08 21:01:17','2014-01-08 21:45:20'),(22,'Angostura 1824 (coloured water only)','For display purposes','2014-01-01 00:00:00',NULL,'angostura-1824-with-carton-coloured-water-only','','',NULL,2,'2014-01-08 21:08:49','2014-01-08 21:40:02'),(23,'Bar Serve Kit','(Icebucket, tongs, bar blade, tray)','2014-01-01 00:00:00',NULL,'serve-kit','','',NULL,2,'2014-01-08 21:14:40','2014-01-08 21:41:14');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (88,18,26),(89,22,25),(90,22,14),(91,23,30),(92,23,14),(93,21,30),(94,21,14),(95,18,14);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2013-11-07 21:48:12','2013-11-07 21:48:12'),(2,'Brand','Brand','2013-11-07 21:48:12','2013-11-07 21:48:12'),(3,'Model','Model','2013-11-07 21:48:12','2013-11-07 21:48:12'),(4,'Shirt Type','Shirt Type','2013-11-07 21:48:12','2013-11-07 21:48:12'),(5,'Sleeve Type','Sleeve Type','2013-11-07 21:48:12','2013-11-07 21:48:12'),(6,'Made from','Made from','2013-11-07 21:48:12','2013-11-07 21:48:12'),(7,'Fit','Fit','2013-11-07 21:48:12','2013-11-07 21:48:12'),(8,'Gender','Gender','2013-11-07 21:48:12','2013-11-07 21:48:12'),(9,'Type','Type','2013-11-07 21:48:12','2013-11-07 21:48:12'),(10,'Size','Size','2013-11-07 21:48:12','2013-11-07 21:48:12'),(11,'Material','Material','2013-11-07 21:48:12','2013-11-07 21:48:12');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,11),(1,7),(1,8),(2,9),(2,10),(2,11),(3,10),(3,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Shirt','2013-11-07 21:48:13','2013-11-07 21:48:13'),(2,'Bag','2013-11-07 21:48:13','2013-11-07 21:48:13'),(3,'Mugs','2013-11-07 21:48:13','2013-11-07 21:48:13');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user'),(3,'fred');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1),(2,2),(2,1),(3,1),(1,21),(2,21);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H01303274278',NULL,NULL,1,NULL,'pending','2013-11-07 21:48:35','2013-11-07 21:48:35',1),(2,NULL,'H72130344820',NULL,NULL,2,NULL,'pending','2013-11-07 21:48:35','2013-11-07 21:48:35',1),(3,NULL,'H11071706786',NULL,NULL,4,NULL,'pending','2013-12-03 14:59:33','2013-12-03 14:59:33',1),(4,NULL,'H01621626240',NULL,NULL,6,NULL,'pending','2013-12-03 15:11:19','2013-12-03 15:11:19',1),(5,NULL,'H81785226372',NULL,NULL,7,NULL,'pending','2013-12-03 15:24:50','2013-12-03 15:24:50',1),(7,NULL,'H83484554361',NULL,NULL,17,NULL,'pending','2013-12-05 18:09:50','2013-12-05 18:09:50',1),(9,NULL,'H61214733664',NULL,NULL,18,NULL,'pending','2013-12-05 18:25:02','2013-12-05 18:25:02',1),(10,NULL,'H50173004064',NULL,NULL,19,NULL,'pending','2013-12-05 18:35:49','2013-12-05 18:35:49',1),(11,NULL,'H81208210360',NULL,NULL,20,NULL,'pending','2013-12-05 18:42:48','2013-12-05 18:42:48',1),(12,NULL,'H63428666425',NULL,NULL,21,NULL,'pending','2013-12-05 18:47:50','2013-12-05 18:47:50',1),(14,NULL,'H35677220414',NULL,NULL,22,NULL,'pending','2013-12-05 18:53:14','2013-12-05 18:53:14',1),(33,NULL,'H62400407003',NULL,NULL,39,NULL,'pending','2013-12-23 21:33:01','2013-12-23 21:33:01',1),(34,NULL,'H43847627723',NULL,NULL,41,NULL,'pending','2013-12-23 21:40:22','2013-12-23 21:40:22',1),(35,NULL,'H63577617777',NULL,NULL,42,NULL,'pending','2013-12-23 21:51:39','2013-12-23 21:51:39',1),(36,NULL,'H10481316120',NULL,NULL,43,NULL,'pending','2013-12-23 21:56:36','2013-12-23 21:56:36',1),(37,NULL,'H37304502870',NULL,NULL,44,NULL,'pending','2013-12-23 21:59:34','2013-12-23 21:59:34',1),(38,NULL,'H87633887173',NULL,NULL,46,NULL,'pending','2013-12-23 22:03:39','2013-12-23 22:03:39',1),(39,NULL,'H66325536312',NULL,NULL,49,NULL,'pending','2013-12-23 22:55:47','2013-12-23 22:55:47',1),(40,NULL,'H58300113483',NULL,NULL,49,NULL,'pending','2013-12-23 22:55:47','2013-12-23 22:55:47',1),(41,NULL,'H18618213204',NULL,NULL,51,NULL,'pending','2013-12-23 23:29:35','2013-12-23 23:29:35',1),(42,NULL,'H73653022468',NULL,NULL,52,NULL,'pending','2013-12-23 23:34:22','2013-12-23 23:34:22',1),(43,NULL,'H31647776746',NULL,NULL,54,NULL,'pending','2013-12-23 23:41:47','2013-12-23 23:41:47',1),(44,NULL,'H18537216547',NULL,NULL,57,NULL,'pending','2013-12-23 23:49:26','2013-12-23 23:49:26',1),(45,NULL,'H72205218567',NULL,NULL,60,NULL,'pending','2013-12-23 23:56:27','2013-12-23 23:56:27',1),(46,NULL,'H36413350311',NULL,NULL,60,NULL,'pending','2013-12-23 23:56:28','2013-12-23 23:56:28',1),(47,NULL,'H14781783321',NULL,NULL,63,NULL,'pending','2013-12-24 00:02:19','2013-12-24 00:02:19',1),(54,NULL,'H55520830580',NULL,NULL,62,NULL,'pending','2013-12-24 20:29:59','2013-12-24 20:29:59',1),(55,NULL,'H84378342316',NULL,NULL,62,NULL,'pending','2013-12-24 20:29:59','2013-12-24 20:29:59',1),(56,NULL,'H52562817576',NULL,NULL,82,NULL,'pending','2013-12-24 20:32:50','2013-12-24 20:32:50',1),(58,NULL,'H26200280264',NULL,NULL,85,NULL,'pending','2013-12-24 20:39:32','2013-12-24 20:39:32',1),(59,NULL,'H55463350827',NULL,NULL,86,NULL,'pending','2013-12-24 20:42:41','2013-12-24 20:42:41',1),(60,NULL,'H01265610172',NULL,NULL,87,NULL,'pending','2013-12-24 20:52:12','2013-12-24 20:52:12',1),(61,NULL,'H66821535086',NULL,NULL,100,NULL,'pending','2013-12-26 05:14:23','2013-12-26 05:14:23',1),(62,NULL,'H54484110857',NULL,NULL,103,NULL,'pending','2013-12-26 15:28:15','2013-12-26 15:28:15',1),(64,NULL,'H31270135160',NULL,NULL,83,NULL,'pending','2013-12-28 01:30:28','2013-12-28 01:30:28',1),(66,NULL,'H82376711577',NULL,NULL,105,NULL,'pending','2013-12-28 02:32:21','2013-12-28 02:32:21',1),(67,NULL,'H77052277405',NULL,NULL,105,NULL,'pending','2013-12-28 02:32:21','2013-12-28 02:32:21',1),(68,NULL,'H25674526868',NULL,NULL,144,NULL,'pending','2014-01-09 16:36:25','2014-01-09 16:36:25',1),(69,NULL,'H28877258304',NULL,NULL,145,NULL,'pending','2014-01-09 17:24:14','2014-01-09 17:24:14',1),(70,NULL,'H34715530175',NULL,NULL,146,NULL,'pending','2014-01-09 18:25:41','2014-01-09 18:25:41',1),(71,NULL,'H65325653165',NULL,NULL,147,NULL,'pending','2014-01-09 21:53:10','2014-01-09 21:53:10',1);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default Shipping','2013-11-07 21:48:08','2013-11-07 21:48:08'),(2,'Default','2013-11-07 21:48:08','2013-11-07 21:48:08');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_method_categories_on_shipping_category_id` (`shipping_category_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,2,'2013-11-07 21:48:08','2013-11-07 21:48:08'),(2,2,2,'2013-11-07 21:48:08','2013-11-07 21:48:08'),(3,3,2,'2013-11-07 21:48:08','2013-11-07 21:48:08'),(4,4,2,'2013-11-07 21:48:08','2013-11-07 21:48:08'),(5,1,1,'2013-11-07 21:48:08','2013-11-07 21:48:08'),(6,4,1,'2013-11-07 21:48:09','2013-11-07 21:48:09'),(7,3,1,'2013-11-07 21:48:09','2013-11-07 21:48:09'),(8,2,1,'2013-11-07 21:48:09','2013-11-07 21:48:09'),(9,5,1,'2013-12-28 00:07:08','2013-12-28 00:07:08'),(10,5,2,'2013-12-28 00:07:08','2013-12-28 00:07:08');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL,NULL),(2,'UPS Two Day (USD)',NULL,NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL,NULL),(3,'UPS One Day (USD)',NULL,NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL,NULL),(4,'UPS Ground (EUR)',NULL,NULL,'2013-11-07 21:48:08','2013-11-07 21:48:08',NULL,NULL),(5,'Free Shipping','',NULL,'2013-12-28 00:07:08','2013-12-28 00:07:50','','free shipping');
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1),(5,1),(5,2),(5,3);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,'5.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(2,1,2,0,'10.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(3,1,3,0,'15.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(4,2,1,1,'5.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(5,2,2,0,'10.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(6,2,3,0,'15.00','2013-11-07 21:48:35','2013-11-07 21:48:35'),(7,3,1,1,'5.00','2013-12-03 14:59:33','2013-12-03 14:59:52'),(8,3,2,0,'10.00','2013-12-03 14:59:33','2013-12-03 14:59:33'),(9,3,3,0,'15.00','2013-12-03 14:59:33','2013-12-03 14:59:33'),(10,5,1,1,'5.00','2013-12-03 15:24:50','2013-12-03 15:24:57'),(11,5,2,0,'10.00','2013-12-03 15:24:51','2013-12-03 15:24:51'),(12,5,3,0,'15.00','2013-12-03 15:24:51','2013-12-03 15:24:51'),(16,7,1,1,'5.00','2013-12-05 18:09:50','2013-12-05 18:10:23'),(17,7,2,0,'10.00','2013-12-05 18:09:50','2013-12-05 18:09:50'),(18,7,3,0,'15.00','2013-12-05 18:09:50','2013-12-05 18:09:50'),(22,9,1,1,'5.00','2013-12-05 18:25:02','2013-12-05 18:27:50'),(23,9,2,0,'10.00','2013-12-05 18:25:02','2013-12-05 18:25:02'),(24,9,3,0,'15.00','2013-12-05 18:25:02','2013-12-05 18:25:02'),(25,10,1,1,'5.00','2013-12-05 18:35:49','2013-12-05 18:35:54'),(26,10,2,0,'10.00','2013-12-05 18:35:49','2013-12-05 18:35:49'),(27,10,3,0,'15.00','2013-12-05 18:35:49','2013-12-05 18:35:49'),(28,11,1,1,'5.00','2013-12-05 18:42:48','2013-12-05 18:42:52'),(29,11,2,0,'10.00','2013-12-05 18:42:49','2013-12-05 18:42:49'),(30,11,3,0,'15.00','2013-12-05 18:42:49','2013-12-05 18:42:49'),(31,12,1,1,'5.00','2013-12-05 18:47:50','2013-12-05 18:47:52'),(32,12,2,0,'10.00','2013-12-05 18:47:50','2013-12-05 18:47:50'),(33,12,3,0,'15.00','2013-12-05 18:47:50','2013-12-05 18:47:50'),(37,14,1,1,'5.00','2013-12-05 18:53:14','2013-12-05 19:28:14'),(38,14,2,0,'10.00','2013-12-05 18:53:14','2013-12-05 18:53:14'),(39,14,3,0,'15.00','2013-12-05 18:53:14','2013-12-05 18:53:14'),(95,33,1,1,'5.00','2013-12-23 21:33:01','2013-12-23 21:33:08'),(96,34,1,1,'5.00','2013-12-23 21:40:22','2013-12-23 21:40:25'),(97,35,1,1,'5.00','2013-12-23 21:51:39','2013-12-23 21:51:42'),(98,36,1,1,'5.00','2013-12-23 21:56:36','2013-12-23 21:56:47'),(99,37,1,1,'5.00','2013-12-23 21:59:34','2013-12-23 21:59:36'),(100,38,1,1,'5.00','2013-12-23 22:03:39','2013-12-23 22:03:43'),(101,39,1,1,'5.00','2013-12-23 22:55:47','2013-12-23 22:55:58'),(102,40,1,1,'5.00','2013-12-23 22:55:47','2013-12-23 22:55:58'),(103,41,1,1,'5.00','2013-12-23 23:29:35','2013-12-23 23:29:39'),(104,42,1,1,'5.00','2013-12-23 23:34:22','2013-12-23 23:34:25'),(105,43,1,1,'5.00','2013-12-23 23:41:47','2013-12-23 23:41:52'),(106,44,1,1,'5.00','2013-12-23 23:49:26','2013-12-23 23:49:38'),(107,45,1,1,'5.00','2013-12-23 23:56:27','2013-12-23 23:56:31'),(108,46,1,1,'5.00','2013-12-23 23:56:28','2013-12-23 23:56:31'),(109,47,1,1,'5.00','2013-12-24 00:02:19','2013-12-24 00:02:23'),(119,54,1,1,'5.00','2013-12-24 20:29:59','2013-12-24 20:30:14'),(120,55,1,1,'5.00','2013-12-24 20:29:59','2013-12-24 20:30:14'),(121,56,1,1,'5.00','2013-12-24 20:32:50','2013-12-24 20:33:20'),(123,58,1,1,'5.00','2013-12-24 20:39:32','2013-12-24 20:39:34'),(124,59,1,1,'5.00','2013-12-24 20:42:41','2013-12-24 20:42:43'),(125,60,1,1,'5.00','2013-12-24 20:52:12','2013-12-24 20:52:15'),(126,61,1,1,'5.00','2013-12-26 05:14:23','2013-12-26 05:14:39'),(127,62,1,1,'5.00','2013-12-26 15:28:15','2013-12-26 15:28:15'),(129,64,5,1,'0.00','2013-12-28 01:30:28','2013-12-28 01:30:39'),(131,66,5,1,'0.00','2013-12-28 02:32:21','2013-12-28 02:32:30'),(132,67,5,1,'0.00','2013-12-28 02:32:22','2013-12-28 02:32:30'),(133,68,5,1,'0.00','2014-01-09 16:36:25','2014-01-09 16:36:33'),(134,69,5,1,'0.00','2014-01-09 17:24:14','2014-01-09 17:24:20'),(135,70,5,1,'0.00','2014-01-09 18:25:41','2014-01-09 18:25:41'),(136,71,5,1,'0.00','2014-01-09 21:53:10','2014-01-09 21:53:19');
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,NULL,'Spree::Order','balance_due','2013-11-07 21:48:35','2013-11-07 21:48:35'),(2,'shipment',NULL,1,NULL,'Spree::Order','pending','2013-11-07 21:48:35','2013-11-07 21:48:35'),(3,'payment',NULL,2,NULL,'Spree::Order','balance_due','2013-11-07 21:48:35','2013-11-07 21:48:35'),(4,'shipment',NULL,2,NULL,'Spree::Order','pending','2013-11-07 21:48:35','2013-11-07 21:48:35'),(5,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(6,'shipment','pending',1,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(7,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(8,'shipment','pending',2,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(9,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(10,'shipment','pending',1,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(11,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(12,'shipment','pending',1,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(13,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(14,'shipment','pending',2,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(15,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-11-07 21:48:36','2013-11-07 21:48:36'),(16,'shipment','pending',2,NULL,'Spree::Order','pending','2013-11-07 21:48:36','2013-11-07 21:48:36'),(17,'payment',NULL,4,2,'Spree::Order','balance_due','2013-12-03 14:59:59','2013-12-03 14:59:59'),(18,'shipment',NULL,4,2,'Spree::Order','pending','2013-12-03 14:59:59','2013-12-03 14:59:59'),(19,'order','cart',4,2,'Spree::Order','complete','2013-12-03 15:00:01','2013-12-03 15:00:01'),(20,'payment',NULL,7,2,'Spree::Order','balance_due','2013-12-03 15:25:02','2013-12-03 15:25:02'),(21,'shipment',NULL,7,2,'Spree::Order','pending','2013-12-03 15:25:02','2013-12-03 15:25:02'),(22,'order','cart',7,2,'Spree::Order','complete','2013-12-03 15:25:03','2013-12-03 15:25:03'),(23,'payment',NULL,17,2,'Spree::Order','balance_due','2013-12-05 18:10:27','2013-12-05 18:10:27'),(24,'shipment',NULL,17,2,'Spree::Order','pending','2013-12-05 18:10:27','2013-12-05 18:10:27'),(25,'order','cart',17,2,'Spree::Order','complete','2013-12-05 18:10:31','2013-12-05 18:10:31'),(26,'payment',NULL,18,2,'Spree::Order','balance_due','2013-12-05 18:29:05','2013-12-05 18:29:05'),(27,'shipment',NULL,18,2,'Spree::Order','pending','2013-12-05 18:29:05','2013-12-05 18:29:05'),(28,'order','cart',18,2,'Spree::Order','complete','2013-12-05 18:29:07','2013-12-05 18:29:07'),(29,'payment',NULL,19,2,'Spree::Order','balance_due','2013-12-05 18:35:58','2013-12-05 18:35:58'),(30,'shipment',NULL,19,2,'Spree::Order','pending','2013-12-05 18:35:58','2013-12-05 18:35:58'),(31,'order','cart',19,2,'Spree::Order','complete','2013-12-05 18:36:01','2013-12-05 18:36:01'),(32,'payment',NULL,20,2,'Spree::Order','balance_due','2013-12-05 18:42:55','2013-12-05 18:42:55'),(33,'shipment',NULL,20,2,'Spree::Order','pending','2013-12-05 18:42:55','2013-12-05 18:42:55'),(34,'order','cart',20,2,'Spree::Order','complete','2013-12-05 18:42:58','2013-12-05 18:42:58'),(35,'payment',NULL,21,2,'Spree::Order','balance_due','2013-12-05 18:47:54','2013-12-05 18:47:54'),(36,'shipment',NULL,21,2,'Spree::Order','pending','2013-12-05 18:47:54','2013-12-05 18:47:54'),(37,'order','cart',21,2,'Spree::Order','complete','2013-12-05 18:47:57','2013-12-05 18:47:57'),(38,'payment',NULL,22,2,'Spree::Order','balance_due','2013-12-05 19:28:17','2013-12-05 19:28:17'),(39,'shipment',NULL,22,2,'Spree::Order','pending','2013-12-05 19:28:17','2013-12-05 19:28:17'),(40,'order','cart',22,2,'Spree::Order','complete','2013-12-05 19:28:21','2013-12-05 19:28:21'),(41,'payment',NULL,23,2,'Spree::Order','balance_due','2013-12-05 21:29:43','2013-12-05 21:29:43'),(42,'shipment',NULL,23,2,'Spree::Order','pending','2013-12-05 21:29:43','2013-12-05 21:29:43'),(43,'order','cart',23,2,'Spree::Order','complete','2013-12-05 21:29:56','2013-12-05 21:29:56'),(44,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-18 15:06:39','2013-12-18 15:06:39'),(45,'shipment','pending',23,2,'Spree::Order','canceled','2013-12-18 15:06:39','2013-12-18 15:06:39'),(46,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-18 15:06:39','2013-12-18 15:06:39'),(47,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-18 15:06:39','2013-12-18 15:06:39'),(48,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-18 15:07:06','2013-12-18 15:07:06'),(49,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-18 15:07:06','2013-12-18 15:07:06'),(50,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-18 15:07:06','2013-12-18 15:07:06'),(51,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-18 15:07:06','2013-12-18 15:07:06'),(52,'payment',NULL,39,2,'Spree::Order','balance_due','2013-12-23 21:35:37','2013-12-23 21:35:37'),(53,'shipment',NULL,39,2,'Spree::Order','pending','2013-12-23 21:35:37','2013-12-23 21:35:37'),(54,'order','cart',39,2,'Spree::Order','complete','2013-12-23 21:35:37','2013-12-23 21:35:37'),(55,'payment',NULL,41,1,'Spree::Order','balance_due','2013-12-23 21:40:30','2013-12-23 21:40:30'),(56,'shipment',NULL,41,1,'Spree::Order','pending','2013-12-23 21:40:30','2013-12-23 21:40:30'),(57,'order','cart',41,1,'Spree::Order','complete','2013-12-23 21:40:30','2013-12-23 21:40:30'),(58,'payment',NULL,42,1,'Spree::Order','balance_due','2013-12-23 21:51:45','2013-12-23 21:51:45'),(59,'shipment',NULL,42,1,'Spree::Order','pending','2013-12-23 21:51:45','2013-12-23 21:51:45'),(60,'order','cart',42,1,'Spree::Order','complete','2013-12-23 21:51:45','2013-12-23 21:51:45'),(61,'payment',NULL,43,1,'Spree::Order','balance_due','2013-12-23 21:56:51','2013-12-23 21:56:51'),(62,'shipment',NULL,43,1,'Spree::Order','pending','2013-12-23 21:56:51','2013-12-23 21:56:51'),(63,'order','cart',43,1,'Spree::Order','complete','2013-12-23 21:56:51','2013-12-23 21:56:51'),(64,'payment',NULL,44,1,'Spree::Order','balance_due','2013-12-23 21:59:38','2013-12-23 21:59:38'),(65,'shipment',NULL,44,1,'Spree::Order','pending','2013-12-23 21:59:38','2013-12-23 21:59:38'),(66,'order','cart',44,1,'Spree::Order','complete','2013-12-23 21:59:38','2013-12-23 21:59:38'),(67,'payment',NULL,46,2,'Spree::Order','balance_due','2013-12-23 22:03:46','2013-12-23 22:03:46'),(68,'shipment',NULL,46,2,'Spree::Order','backorder','2013-12-23 22:03:59','2013-12-23 22:03:59'),(69,'order','cart',46,2,'Spree::Order','complete','2013-12-23 22:04:11','2013-12-23 22:04:11'),(70,'payment',NULL,49,2,'Spree::Order','balance_due','2013-12-23 22:56:02','2013-12-23 22:56:02'),(71,'shipment',NULL,49,2,'Spree::Order','backorder','2013-12-23 22:56:30','2013-12-23 22:56:30'),(72,'order','cart',49,2,'Spree::Order','complete','2013-12-23 22:56:42','2013-12-23 22:56:42'),(73,'payment',NULL,51,2,'Spree::Order','balance_due','2013-12-23 23:29:43','2013-12-23 23:29:43'),(74,'shipment',NULL,51,2,'Spree::Order','backorder','2013-12-23 23:29:46','2013-12-23 23:29:46'),(75,'order','cart',51,2,'Spree::Order','complete','2013-12-23 23:29:49','2013-12-23 23:29:49'),(76,'payment',NULL,52,2,'Spree::Order','balance_due','2013-12-23 23:34:28','2013-12-23 23:34:28'),(77,'shipment',NULL,52,2,'Spree::Order','pending','2013-12-23 23:34:31','2013-12-23 23:34:31'),(78,'order','cart',52,2,'Spree::Order','complete','2013-12-23 23:34:34','2013-12-23 23:34:34'),(79,'payment',NULL,54,2,'Spree::Order','balance_due','2013-12-23 23:41:54','2013-12-23 23:41:54'),(80,'shipment',NULL,54,2,'Spree::Order','backorder','2013-12-23 23:41:58','2013-12-23 23:41:58'),(81,'order','cart',54,2,'Spree::Order','complete','2013-12-23 23:42:01','2013-12-23 23:42:01'),(82,'payment',NULL,57,2,'Spree::Order','balance_due','2013-12-23 23:49:45','2013-12-23 23:49:45'),(83,'shipment',NULL,57,2,'Spree::Order','pending','2013-12-23 23:49:48','2013-12-23 23:49:48'),(84,'order','cart',57,2,'Spree::Order','complete','2013-12-23 23:49:51','2013-12-23 23:49:51'),(85,'payment',NULL,60,2,'Spree::Order','balance_due','2013-12-23 23:56:35','2013-12-23 23:56:35'),(86,'shipment',NULL,60,2,'Spree::Order','backorder','2013-12-23 23:56:38','2013-12-23 23:56:38'),(87,'order','cart',60,2,'Spree::Order','complete','2013-12-23 23:56:41','2013-12-23 23:56:41'),(88,'payment',NULL,63,2,'Spree::Order','balance_due','2013-12-24 00:02:26','2013-12-24 00:02:26'),(89,'shipment',NULL,63,2,'Spree::Order','backorder','2013-12-24 00:02:30','2013-12-24 00:02:30'),(90,'order','cart',63,2,'Spree::Order','complete','2013-12-24 00:02:33','2013-12-24 00:02:33'),(91,'payment',NULL,75,2,'Spree::Order','balance_due','2013-12-24 15:38:01','2013-12-24 15:38:01'),(92,'shipment',NULL,75,2,'Spree::Order','backorder','2013-12-24 15:38:11','2013-12-24 15:38:11'),(93,'order','cart',75,2,'Spree::Order','complete','2013-12-24 15:38:14','2013-12-24 15:38:14'),(94,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:28','2013-12-24 20:13:28'),(95,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-24 20:13:28','2013-12-24 20:13:28'),(96,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:28','2013-12-24 20:13:28'),(97,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-24 20:13:28','2013-12-24 20:13:28'),(98,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:36','2013-12-24 20:13:36'),(99,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-24 20:13:36','2013-12-24 20:13:36'),(100,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:36','2013-12-24 20:13:36'),(101,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-24 20:13:36','2013-12-24 20:13:36'),(102,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:36','2013-12-24 20:13:36'),(103,'shipment','canceled',23,2,'Spree::Order','canceled','2013-12-24 20:13:36','2013-12-24 20:13:36'),(104,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:45','2013-12-24 20:13:45'),(105,'shipment','canceled',23,2,'Spree::Order',NULL,'2013-12-24 20:13:45','2013-12-24 20:13:45'),(106,'payment','balance_due',23,2,'Spree::Order','balance_due','2013-12-24 20:13:45','2013-12-24 20:13:45'),(107,'shipment','canceled',23,2,'Spree::Order',NULL,'2013-12-24 20:13:45','2013-12-24 20:13:45'),(108,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:30','2013-12-24 20:14:30'),(109,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:30','2013-12-24 20:14:30'),(110,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:30','2013-12-24 20:14:30'),(111,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:30','2013-12-24 20:14:30'),(112,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:30','2013-12-24 20:14:30'),(113,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:30','2013-12-24 20:14:30'),(114,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:30','2013-12-24 20:14:30'),(115,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:30','2013-12-24 20:14:30'),(116,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:38','2013-12-24 20:14:38'),(117,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:38','2013-12-24 20:14:38'),(118,'payment','balance_due',75,2,'Spree::Order','balance_due','2013-12-24 20:14:38','2013-12-24 20:14:38'),(119,'shipment','backorder',75,2,'Spree::Order','backorder','2013-12-24 20:14:38','2013-12-24 20:14:38'),(120,'payment',NULL,62,1,'Spree::Order','balance_due','2013-12-24 20:30:18','2013-12-24 20:30:18'),(121,'shipment',NULL,62,1,'Spree::Order','backorder','2013-12-24 20:30:29','2013-12-24 20:30:29'),(122,'order','cart',62,1,'Spree::Order','complete','2013-12-24 20:30:32','2013-12-24 20:30:32'),(123,'payment',NULL,82,1,'Spree::Order','balance_due','2013-12-24 20:33:23','2013-12-24 20:33:23'),(124,'shipment',NULL,82,1,'Spree::Order','pending','2013-12-24 20:33:26','2013-12-24 20:33:26'),(125,'order','cart',82,1,'Spree::Order','complete','2013-12-24 20:33:29','2013-12-24 20:33:29'),(126,'payment',NULL,85,NULL,'Spree::Order','balance_due','2013-12-24 20:39:36','2013-12-24 20:39:36'),(127,'shipment',NULL,85,NULL,'Spree::Order','backorder','2013-12-24 20:39:39','2013-12-24 20:39:39'),(128,'order','cart',85,NULL,'Spree::Order','complete','2013-12-24 20:39:42','2013-12-24 20:39:42'),(129,'payment',NULL,86,NULL,'Spree::Order','balance_due','2013-12-24 20:42:45','2013-12-24 20:42:45'),(130,'shipment',NULL,86,NULL,'Spree::Order','pending','2013-12-24 20:42:48','2013-12-24 20:42:48'),(131,'order','cart',86,NULL,'Spree::Order','complete','2013-12-24 20:42:51','2013-12-24 20:42:51'),(132,'payment',NULL,87,NULL,'Spree::Order','balance_due','2013-12-24 20:52:19','2013-12-24 20:52:19'),(133,'shipment',NULL,87,NULL,'Spree::Order','pending','2013-12-24 20:52:22','2013-12-24 20:52:22'),(134,'order','cart',87,NULL,'Spree::Order','complete','2013-12-24 20:52:25','2013-12-24 20:52:25'),(135,'payment',NULL,100,NULL,'Spree::Order','balance_due','2013-12-26 05:14:57','2013-12-26 05:14:57'),(136,'shipment',NULL,100,NULL,'Spree::Order','pending','2013-12-26 05:15:01','2013-12-26 05:15:01'),(137,'order','cart',100,NULL,'Spree::Order','complete','2013-12-26 05:15:04','2013-12-26 05:15:04'),(138,'payment',NULL,83,1,'Spree::Order','balance_due','2013-12-28 01:30:49','2013-12-28 01:30:49'),(139,'shipment',NULL,83,1,'Spree::Order','pending','2013-12-28 01:30:54','2013-12-28 01:30:54'),(140,'order','cart',83,1,'Spree::Order','complete','2013-12-28 01:30:57','2013-12-28 01:30:57'),(141,'payment',NULL,105,1,'Spree::Order','balance_due','2013-12-28 02:32:31','2013-12-28 02:32:31'),(142,'shipment',NULL,105,1,'Spree::Order','pending','2013-12-28 02:32:34','2013-12-28 02:32:34'),(143,'order','cart',105,1,'Spree::Order','complete','2013-12-28 02:32:38','2013-12-28 02:32:38'),(144,'payment',NULL,106,1,'Spree::Order','balance_due','2013-12-28 02:35:11','2013-12-28 02:35:11'),(145,'shipment',NULL,106,1,'Spree::Order',NULL,'2013-12-28 02:35:11','2013-12-28 02:35:11'),(146,'order','cart',106,1,'Spree::Order','complete','2013-12-28 02:35:15','2013-12-28 02:35:15'),(147,'payment',NULL,107,1,'Spree::Order','balance_due','2013-12-28 23:13:31','2013-12-28 23:13:31'),(148,'shipment',NULL,107,1,'Spree::Order',NULL,'2013-12-28 23:13:31','2013-12-28 23:13:31'),(149,'order','cart',107,1,'Spree::Order','complete','2013-12-28 23:13:34','2013-12-28 23:13:34'),(150,'payment',NULL,108,1,'Spree::Order','balance_due','2013-12-28 23:15:45','2013-12-28 23:15:45'),(151,'shipment',NULL,108,1,'Spree::Order',NULL,'2013-12-28 23:15:45','2013-12-28 23:15:45'),(152,'order','cart',108,1,'Spree::Order','complete','2013-12-28 23:15:48','2013-12-28 23:15:48'),(153,'payment',NULL,109,1,'Spree::Order','balance_due','2013-12-28 23:47:40','2013-12-28 23:47:40'),(154,'shipment',NULL,109,1,'Spree::Order',NULL,'2013-12-28 23:47:40','2013-12-28 23:47:40'),(155,'order','cart',109,1,'Spree::Order','complete','2013-12-28 23:47:43','2013-12-28 23:47:43'),(156,'payment',NULL,111,NULL,'Spree::Order','balance_due','2013-12-28 23:54:15','2013-12-28 23:54:15'),(157,'shipment',NULL,111,NULL,'Spree::Order',NULL,'2013-12-28 23:54:15','2013-12-28 23:54:15'),(158,'order','cart',111,NULL,'Spree::Order','complete','2013-12-28 23:54:19','2013-12-28 23:54:19'),(159,'payment',NULL,112,NULL,'Spree::Order','balance_due','2013-12-29 01:05:54','2013-12-29 01:05:54'),(160,'shipment',NULL,112,NULL,'Spree::Order',NULL,'2013-12-29 01:05:54','2013-12-29 01:05:54'),(161,'order','cart',112,NULL,'Spree::Order','complete','2013-12-29 01:05:54','2013-12-29 01:05:54'),(162,'payment',NULL,113,NULL,'Spree::Order','balance_due','2013-12-29 01:14:00','2013-12-29 01:14:00'),(163,'shipment',NULL,113,NULL,'Spree::Order',NULL,'2013-12-29 01:14:00','2013-12-29 01:14:00'),(164,'order','cart',113,NULL,'Spree::Order','complete','2013-12-29 01:14:04','2013-12-29 01:14:04'),(165,'payment',NULL,114,NULL,'Spree::Order','balance_due','2013-12-29 01:23:50','2013-12-29 01:23:50'),(166,'shipment',NULL,114,NULL,'Spree::Order',NULL,'2013-12-29 01:23:50','2013-12-29 01:23:50'),(167,'order','cart',114,NULL,'Spree::Order','complete','2013-12-29 01:23:53','2013-12-29 01:23:53'),(168,'payment',NULL,115,NULL,'Spree::Order','balance_due','2013-12-29 01:27:56','2013-12-29 01:27:56'),(169,'shipment',NULL,115,NULL,'Spree::Order',NULL,'2013-12-29 01:27:56','2013-12-29 01:27:56'),(170,'order','cart',115,NULL,'Spree::Order','complete','2013-12-29 01:27:56','2013-12-29 01:27:56'),(171,'payment',NULL,116,NULL,'Spree::Order','balance_due','2013-12-29 01:36:34','2013-12-29 01:36:34'),(172,'shipment',NULL,116,NULL,'Spree::Order',NULL,'2013-12-29 01:36:34','2013-12-29 01:36:34'),(173,'order','cart',116,NULL,'Spree::Order','complete','2013-12-29 01:36:38','2013-12-29 01:36:38'),(174,'payment',NULL,117,NULL,'Spree::Order','balance_due','2013-12-29 01:50:30','2013-12-29 01:50:30'),(175,'shipment',NULL,117,NULL,'Spree::Order',NULL,'2013-12-29 01:50:30','2013-12-29 01:50:30'),(176,'order','cart',117,NULL,'Spree::Order','complete','2013-12-29 01:50:34','2013-12-29 01:50:34'),(177,'payment',NULL,118,NULL,'Spree::Order','balance_due','2013-12-29 02:06:42','2013-12-29 02:06:42'),(178,'shipment',NULL,118,NULL,'Spree::Order',NULL,'2013-12-29 02:06:42','2013-12-29 02:06:42'),(179,'order','cart',118,NULL,'Spree::Order','complete','2013-12-29 02:06:42','2013-12-29 02:06:42'),(180,'payment',NULL,119,NULL,'Spree::Order','balance_due','2013-12-29 02:11:00','2013-12-29 02:11:00'),(181,'shipment',NULL,119,NULL,'Spree::Order',NULL,'2013-12-29 02:11:00','2013-12-29 02:11:00'),(182,'order','cart',119,NULL,'Spree::Order','complete','2013-12-29 02:11:00','2013-12-29 02:11:00'),(183,'payment',NULL,120,NULL,'Spree::Order','balance_due','2013-12-29 02:15:22','2013-12-29 02:15:22'),(184,'shipment',NULL,120,NULL,'Spree::Order',NULL,'2013-12-29 02:15:22','2013-12-29 02:15:22'),(185,'order','cart',120,NULL,'Spree::Order','complete','2013-12-29 02:15:22','2013-12-29 02:15:22'),(186,'payment',NULL,121,NULL,'Spree::Order','balance_due','2013-12-29 02:25:29','2013-12-29 02:25:29'),(187,'shipment',NULL,121,NULL,'Spree::Order',NULL,'2013-12-29 02:25:29','2013-12-29 02:25:29'),(188,'order','cart',121,NULL,'Spree::Order','complete','2013-12-29 02:25:33','2013-12-29 02:25:33'),(189,'payment',NULL,122,NULL,'Spree::Order','balance_due','2013-12-29 02:40:50','2013-12-29 02:40:50'),(190,'shipment',NULL,122,NULL,'Spree::Order',NULL,'2013-12-29 02:40:50','2013-12-29 02:40:50'),(191,'order','cart',122,NULL,'Spree::Order','complete','2013-12-29 02:40:56','2013-12-29 02:40:56'),(192,'payment',NULL,110,1,'Spree::Order','balance_due','2013-12-29 03:00:11','2013-12-29 03:00:11'),(193,'shipment',NULL,110,1,'Spree::Order',NULL,'2013-12-29 03:00:11','2013-12-29 03:00:11'),(194,'order','cart',110,1,'Spree::Order','complete','2013-12-29 03:00:17','2013-12-29 03:00:17'),(195,'payment',NULL,123,1,'Spree::Order','balance_due','2013-12-29 03:01:39','2013-12-29 03:01:39'),(196,'shipment',NULL,123,1,'Spree::Order',NULL,'2013-12-29 03:01:39','2013-12-29 03:01:39'),(197,'order','cart',123,1,'Spree::Order','complete','2013-12-29 03:01:45','2013-12-29 03:01:45'),(198,'payment',NULL,126,NULL,'Spree::Order','balance_due','2013-12-29 03:41:18','2013-12-29 03:41:18'),(199,'shipment',NULL,126,NULL,'Spree::Order',NULL,'2013-12-29 03:41:18','2013-12-29 03:41:18'),(200,'order','cart',126,NULL,'Spree::Order','complete','2013-12-29 03:41:24','2013-12-29 03:41:24'),(201,'payment',NULL,127,NULL,'Spree::Order','balance_due','2013-12-29 03:50:34','2013-12-29 03:50:34'),(202,'shipment',NULL,127,NULL,'Spree::Order',NULL,'2013-12-29 03:50:34','2013-12-29 03:50:34'),(203,'order','cart',127,NULL,'Spree::Order','complete','2013-12-29 03:50:40','2013-12-29 03:50:40'),(204,'payment',NULL,129,NULL,'Spree::Order','balance_due','2013-12-29 04:05:31','2013-12-29 04:05:31'),(205,'shipment',NULL,129,NULL,'Spree::Order',NULL,'2013-12-29 04:05:31','2013-12-29 04:05:31'),(206,'order','cart',129,NULL,'Spree::Order','complete','2013-12-29 04:05:38','2013-12-29 04:05:38'),(207,'payment',NULL,130,NULL,'Spree::Order','balance_due','2013-12-29 04:09:40','2013-12-29 04:09:40'),(208,'shipment',NULL,130,NULL,'Spree::Order',NULL,'2013-12-29 04:09:40','2013-12-29 04:09:40'),(209,'order','cart',130,NULL,'Spree::Order','complete','2013-12-29 04:09:47','2013-12-29 04:09:47'),(210,'payment',NULL,131,NULL,'Spree::Order','balance_due','2013-12-29 15:51:18','2013-12-29 15:51:18'),(211,'shipment',NULL,131,NULL,'Spree::Order',NULL,'2013-12-29 15:51:18','2013-12-29 15:51:18'),(212,'order','cart',131,NULL,'Spree::Order','complete','2013-12-29 15:51:19','2013-12-29 15:51:19'),(213,'payment',NULL,132,NULL,'Spree::Order','balance_due','2013-12-31 21:49:10','2013-12-31 21:49:10'),(214,'shipment',NULL,132,NULL,'Spree::Order',NULL,'2013-12-31 21:49:10','2013-12-31 21:49:10'),(215,'order','cart',132,NULL,'Spree::Order','complete','2013-12-31 21:49:10','2013-12-31 21:49:10'),(216,'payment','balance_due',75,2,'Spree::Order','balance_due','2014-01-07 14:50:03','2014-01-07 14:50:03'),(217,'shipment','backorder',75,2,'Spree::Order','backorder','2014-01-07 14:50:03','2014-01-07 14:50:03'),(218,'payment','balance_due',75,2,'Spree::Order','balance_due','2014-01-07 14:50:03','2014-01-07 14:50:03'),(219,'shipment','backorder',75,2,'Spree::Order','backorder','2014-01-07 14:50:03','2014-01-07 14:50:03'),(220,'payment','balance_due',75,2,'Spree::Order','balance_due','2014-01-07 14:50:03','2014-01-07 14:50:03'),(221,'shipment','backorder',75,2,'Spree::Order','backorder','2014-01-07 14:50:03','2014-01-07 14:50:03'),(222,'payment',NULL,137,1,'Spree::Order','balance_due','2014-01-08 22:06:06','2014-01-08 22:06:06'),(223,'shipment',NULL,137,1,'Spree::Order',NULL,'2014-01-08 22:06:06','2014-01-08 22:06:06'),(224,'order','cart',137,1,'Spree::Order','complete','2014-01-08 22:06:07','2014-01-08 22:06:07'),(225,'payment',NULL,138,1,'Spree::Order','balance_due','2014-01-08 22:19:00','2014-01-08 22:19:00'),(226,'shipment',NULL,138,1,'Spree::Order',NULL,'2014-01-08 22:19:00','2014-01-08 22:19:00'),(227,'order','cart',138,1,'Spree::Order','complete','2014-01-08 22:19:00','2014-01-08 22:19:00'),(228,'payment',NULL,140,NULL,'Spree::Order','balance_due','2014-01-08 23:01:50','2014-01-08 23:01:50'),(229,'shipment',NULL,140,NULL,'Spree::Order',NULL,'2014-01-08 23:01:50','2014-01-08 23:01:50'),(230,'order','cart',140,NULL,'Spree::Order','complete','2014-01-08 23:01:50','2014-01-08 23:01:50'),(231,'payment',NULL,139,1,'Spree::Order','balance_due','2014-01-08 23:14:40','2014-01-08 23:14:40'),(232,'shipment',NULL,139,1,'Spree::Order',NULL,'2014-01-08 23:14:40','2014-01-08 23:14:40'),(233,'order','cart',139,1,'Spree::Order','complete','2014-01-08 23:14:41','2014-01-08 23:14:41'),(234,'payment',NULL,141,1,'Spree::Order','balance_due','2014-01-09 15:14:57','2014-01-09 15:14:57'),(235,'shipment',NULL,141,1,'Spree::Order',NULL,'2014-01-09 15:14:57','2014-01-09 15:14:57'),(236,'order','cart',141,1,'Spree::Order','complete','2014-01-09 15:15:05','2014-01-09 15:15:05'),(237,'payment',NULL,143,NULL,'Spree::Order','balance_due','2014-01-09 16:05:55','2014-01-09 16:05:55'),(238,'shipment',NULL,143,NULL,'Spree::Order',NULL,'2014-01-09 16:05:55','2014-01-09 16:05:55'),(239,'order','cart',143,NULL,'Spree::Order','complete','2014-01-09 16:05:56','2014-01-09 16:05:56'),(240,'payment',NULL,144,NULL,'Spree::Order','balance_due','2014-01-09 16:36:33','2014-01-09 16:36:33'),(241,'shipment',NULL,144,NULL,'Spree::Order','pending','2014-01-09 16:36:33','2014-01-09 16:36:33'),(242,'order','cart',144,NULL,'Spree::Order','complete','2014-01-09 16:36:34','2014-01-09 16:36:34'),(243,'payment',NULL,145,NULL,'Spree::Order','balance_due','2014-01-09 17:24:21','2014-01-09 17:24:21'),(244,'shipment',NULL,145,NULL,'Spree::Order','pending','2014-01-09 17:24:21','2014-01-09 17:24:21'),(245,'order','cart',145,NULL,'Spree::Order','complete','2014-01-09 17:24:28','2014-01-09 17:24:28'),(246,'payment',NULL,147,NULL,'Spree::Order','balance_due','2014-01-09 21:53:20','2014-01-09 21:53:20'),(247,'shipment',NULL,147,NULL,'Spree::Order','pending','2014-01-09 21:53:20','2014-01-09 21:53:20'),(248,'order','cart',147,NULL,'Spree::Order','complete','2014-01-09 21:53:20','2014-01-09 21:53:20');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Michigan','MI',49,'2013-11-07 21:47:19'),(2,'South Dakota','SD',49,'2013-11-07 21:47:19'),(3,'Washington','WA',49,'2013-11-07 21:47:19'),(4,'Wisconsin','WI',49,'2013-11-07 21:47:19'),(5,'Arizona','AZ',49,'2013-11-07 21:47:19'),(6,'Illinois','IL',49,'2013-11-07 21:47:19'),(7,'New Hampshire','NH',49,'2013-11-07 21:47:19'),(8,'North Carolina','NC',49,'2013-11-07 21:47:19'),(9,'Kansas','KS',49,'2013-11-07 21:47:19'),(10,'Missouri','MO',49,'2013-11-07 21:47:19'),(11,'Arkansas','AR',49,'2013-11-07 21:47:19'),(12,'Nevada','NV',49,'2013-11-07 21:47:19'),(13,'District of Columbia','DC',49,'2013-11-07 21:47:19'),(14,'Idaho','ID',49,'2013-11-07 21:47:19'),(15,'Nebraska','NE',49,'2013-11-07 21:47:19'),(16,'Pennsylvania','PA',49,'2013-11-07 21:47:19'),(17,'Hawaii','HI',49,'2013-11-07 21:47:19'),(18,'Utah','UT',49,'2013-11-07 21:47:19'),(19,'Vermont','VT',49,'2013-11-07 21:47:19'),(20,'Delaware','DE',49,'2013-11-07 21:47:19'),(21,'Rhode Island','RI',49,'2013-11-07 21:47:19'),(22,'Oklahoma','OK',49,'2013-11-07 21:47:19'),(23,'Louisiana','LA',49,'2013-11-07 21:47:19'),(24,'Montana','MT',49,'2013-11-07 21:47:19'),(25,'Tennessee','TN',49,'2013-11-07 21:47:19'),(26,'Maryland','MD',49,'2013-11-07 21:47:19'),(27,'Florida','FL',49,'2013-11-07 21:47:19'),(28,'Virginia','VA',49,'2013-11-07 21:47:19'),(29,'Minnesota','MN',49,'2013-11-07 21:47:19'),(30,'New Jersey','NJ',49,'2013-11-07 21:47:19'),(31,'Ohio','OH',49,'2013-11-07 21:47:19'),(32,'California','CA',49,'2013-11-07 21:47:19'),(33,'North Dakota','ND',49,'2013-11-07 21:47:19'),(34,'Maine','ME',49,'2013-11-07 21:47:19'),(35,'Indiana','IN',49,'2013-11-07 21:47:19'),(36,'Texas','TX',49,'2013-11-07 21:47:19'),(37,'Oregon','OR',49,'2013-11-07 21:47:19'),(38,'Wyoming','WY',49,'2013-11-07 21:47:19'),(39,'Alabama','AL',49,'2013-11-07 21:47:19'),(40,'Iowa','IA',49,'2013-11-07 21:47:19'),(41,'Mississippi','MS',49,'2013-11-07 21:47:19'),(42,'Kentucky','KY',49,'2013-11-07 21:47:19'),(43,'New Mexico','NM',49,'2013-11-07 21:47:19'),(44,'Georgia','GA',49,'2013-11-07 21:47:19'),(45,'Colorado','CO',49,'2013-11-07 21:47:19'),(46,'Massachusetts','MA',49,'2013-11-07 21:47:19'),(47,'Connecticut','CT',49,'2013-11-07 21:47:19'),(48,'New York','NY',49,'2013-11-07 21:47:19'),(49,'South Carolina','SC',49,'2013-11-07 21:47:19'),(50,'Alaska','AK',49,'2013-11-07 21:47:19'),(51,'West Virginia','WV',49,'2013-11-07 21:47:19'),(52,'U.S. Armed Forces - Americas','AA',49,'2013-11-07 21:47:19'),(53,'U.S. Armed Forces - Europe','AE',49,'2013-11-07 21:47:19'),(54,'U.S. Armed Forces - Pacific','AP',49,'2013-11-07 21:47:19'),(55,'Not applicable','NA',1,'2013-12-19 19:44:16'),(56,'Not applicable','NA',2,'2013-12-19 19:44:16'),(57,'Not applicable','NA',3,'2013-12-19 19:44:16'),(58,'Not applicable','NA',4,'2013-12-19 19:44:16'),(59,'Not applicable','NA',5,'2013-12-19 19:44:16'),(60,'Not applicable','NA',6,'2013-12-19 19:44:16'),(61,'Not applicable','NA',7,'2013-12-19 19:44:16'),(62,'Not applicable','NA',8,'2013-12-19 19:44:16'),(63,'Not applicable','NA',9,'2013-12-19 19:44:16'),(64,'Not applicable','NA',10,'2013-12-19 19:44:16'),(65,'Not applicable','NA',11,'2013-12-19 19:44:16'),(66,'Not applicable','NA',12,'2013-12-19 19:44:16'),(67,'Not applicable','NA',13,'2013-12-19 19:44:16'),(68,'Not applicable','NA',14,'2013-12-19 19:44:16'),(69,'Not applicable','NA',15,'2013-12-19 19:44:16'),(70,'Not applicable','NA',16,'2013-12-19 19:44:16'),(71,'Not applicable','NA',17,'2013-12-19 19:44:16'),(72,'Not applicable','NA',18,'2013-12-19 19:44:16'),(73,'Not applicable','NA',19,'2013-12-19 19:44:16'),(74,'Not applicable','NA',20,'2013-12-19 19:44:16'),(75,'Not applicable','NA',21,'2013-12-19 19:44:16'),(76,'Not applicable','NA',22,'2013-12-19 19:44:17'),(77,'Not applicable','NA',23,'2013-12-19 19:44:17'),(78,'Not applicable','NA',24,'2013-12-19 19:44:17'),(79,'Not applicable','NA',25,'2013-12-19 19:44:17'),(80,'Not applicable','NA',26,'2013-12-19 19:44:17'),(81,'Not applicable','NA',27,'2013-12-19 19:44:17'),(82,'Not applicable','NA',28,'2013-12-19 19:44:17'),(83,'Not applicable','NA',29,'2013-12-19 19:44:17'),(84,'Not applicable','NA',30,'2013-12-19 19:44:17'),(85,'Not applicable','NA',31,'2013-12-19 19:44:17'),(86,'Not applicable','NA',32,'2013-12-19 19:44:17'),(87,'Not applicable','NA',33,'2013-12-19 19:44:17'),(88,'Not applicable','NA',34,'2013-12-19 19:44:17'),(89,'Not applicable','NA',35,'2013-12-19 19:44:17'),(90,'Not applicable','NA',36,'2013-12-19 19:44:17'),(91,'Not applicable','NA',37,'2013-12-19 19:44:17'),(92,'Not applicable','NA',38,'2013-12-19 19:44:17'),(93,'Not applicable','NA',39,'2013-12-19 19:44:17'),(94,'Not applicable','NA',40,'2013-12-19 19:44:17'),(95,'Not applicable','NA',41,'2013-12-19 19:44:17'),(96,'Not applicable','NA',42,'2013-12-19 19:44:17'),(97,'Not applicable','NA',43,'2013-12-19 19:44:17'),(98,'Not applicable','NA',44,'2013-12-19 19:44:17'),(99,'Not applicable','NA',45,'2013-12-19 19:44:17'),(100,'Not applicable','NA',46,'2013-12-19 19:44:17'),(101,'Not applicable','NA',47,'2013-12-19 19:44:17'),(102,'Not applicable','NA',48,'2013-12-19 19:44:17'),(103,'Not applicable','NA',49,'2013-12-19 19:44:17'),(104,'Not applicable','NA',50,'2013-12-19 19:44:17'),(105,'Not applicable','NA',51,'2013-12-19 19:44:17'),(106,'Not applicable','NA',52,'2013-12-19 19:44:17'),(107,'Not applicable','NA',53,'2013-12-19 19:44:17'),(108,'Not applicable','NA',54,'2013-12-19 19:44:17'),(109,'Not applicable','NA',55,'2013-12-19 19:44:17'),(110,'Not applicable','NA',56,'2013-12-19 19:44:17'),(111,'Not applicable','NA',57,'2013-12-19 19:44:17'),(112,'Not applicable','NA',58,'2013-12-19 19:44:17'),(113,'Not applicable','NA',59,'2013-12-19 19:44:17'),(114,'Not applicable','NA',60,'2013-12-19 19:44:17'),(115,'Not applicable','NA',61,'2013-12-19 19:44:17'),(116,'Not applicable','NA',62,'2013-12-19 19:44:17'),(117,'Not applicable','NA',63,'2013-12-19 19:44:17'),(118,'Not applicable','NA',64,'2013-12-19 19:44:17'),(119,'Not applicable','NA',65,'2013-12-19 19:44:17'),(120,'Not applicable','NA',66,'2013-12-19 19:44:17'),(121,'Not applicable','NA',67,'2013-12-19 19:44:17'),(122,'Not applicable','NA',68,'2013-12-19 19:44:17'),(123,'Not applicable','NA',69,'2013-12-19 19:44:17'),(124,'Not applicable','NA',70,'2013-12-19 19:44:18'),(125,'Not applicable','NA',71,'2013-12-19 19:44:18'),(126,'Not applicable','NA',72,'2013-12-19 19:44:18'),(127,'Not applicable','NA',73,'2013-12-19 19:44:18'),(128,'Not applicable','NA',74,'2013-12-19 19:44:18'),(129,'Not applicable','NA',75,'2013-12-19 19:44:18'),(130,'Not applicable','NA',76,'2013-12-19 19:44:18'),(131,'Not applicable','NA',77,'2013-12-19 19:44:18'),(132,'Not applicable','NA',78,'2013-12-19 19:44:18'),(133,'Not applicable','NA',79,'2013-12-19 19:44:18'),(134,'Not applicable','NA',80,'2013-12-19 19:44:18'),(135,'Not applicable','NA',81,'2013-12-19 19:44:18'),(136,'Not applicable','NA',82,'2013-12-19 19:44:18'),(137,'Not applicable','NA',83,'2013-12-19 19:44:18'),(138,'Not applicable','NA',84,'2013-12-19 19:44:18'),(139,'Not applicable','NA',85,'2013-12-19 19:44:18'),(140,'Not applicable','NA',86,'2013-12-19 19:44:18'),(141,'Not applicable','NA',87,'2013-12-19 19:44:18'),(142,'Not applicable','NA',88,'2013-12-19 19:44:18'),(143,'Not applicable','NA',89,'2013-12-19 19:44:18'),(144,'Not applicable','NA',90,'2013-12-19 19:44:18'),(145,'Not applicable','NA',91,'2013-12-19 19:44:18'),(146,'Not applicable','NA',92,'2013-12-19 19:44:18'),(147,'Not applicable','NA',93,'2013-12-19 19:44:18'),(148,'Not applicable','NA',94,'2013-12-19 19:44:18'),(149,'Not applicable','NA',95,'2013-12-19 19:44:18'),(150,'Not applicable','NA',96,'2013-12-19 19:44:18'),(151,'Not applicable','NA',97,'2013-12-19 19:44:18'),(152,'Not applicable','NA',98,'2013-12-19 19:44:18'),(153,'Not applicable','NA',99,'2013-12-19 19:44:18'),(154,'Not applicable','NA',100,'2013-12-19 19:44:18'),(155,'Not applicable','NA',101,'2013-12-19 19:44:18'),(156,'Not applicable','NA',102,'2013-12-19 19:44:18'),(157,'Not applicable','NA',103,'2013-12-19 19:44:18'),(158,'Not applicable','NA',104,'2013-12-19 19:44:18'),(159,'Not applicable','NA',105,'2013-12-19 19:44:18'),(160,'Not applicable','NA',106,'2013-12-19 19:44:18'),(161,'Not applicable','NA',107,'2013-12-19 19:44:18'),(162,'Not applicable','NA',108,'2013-12-19 19:44:18'),(163,'Not applicable','NA',109,'2013-12-19 19:44:18'),(164,'Not applicable','NA',110,'2013-12-19 19:44:18'),(165,'Not applicable','NA',111,'2013-12-19 19:44:18'),(166,'Not applicable','NA',112,'2013-12-19 19:44:18'),(167,'Not applicable','NA',113,'2013-12-19 19:44:18'),(168,'Not applicable','NA',114,'2013-12-19 19:44:18'),(169,'Not applicable','NA',115,'2013-12-19 19:44:18'),(170,'Not applicable','NA',116,'2013-12-19 19:44:18'),(171,'Not applicable','NA',117,'2013-12-19 19:44:18'),(172,'Not applicable','NA',118,'2013-12-19 19:44:19'),(173,'Not applicable','NA',119,'2013-12-19 19:44:19'),(174,'Not applicable','NA',120,'2013-12-19 19:44:19'),(175,'Not applicable','NA',121,'2013-12-19 19:44:19'),(176,'Not applicable','NA',122,'2013-12-19 19:44:19'),(177,'Not applicable','NA',123,'2013-12-19 19:44:19'),(178,'Not applicable','NA',124,'2013-12-19 19:44:19'),(179,'Not applicable','NA',125,'2013-12-19 19:44:19'),(180,'Not applicable','NA',126,'2013-12-19 19:44:19'),(181,'Not applicable','NA',127,'2013-12-19 19:44:19'),(182,'Not applicable','NA',128,'2013-12-19 19:44:19'),(183,'Not applicable','NA',129,'2013-12-19 19:44:19'),(184,'Not applicable','NA',130,'2013-12-19 19:44:19'),(185,'Not applicable','NA',131,'2013-12-19 19:44:19'),(186,'Not applicable','NA',132,'2013-12-19 19:44:19'),(187,'Not applicable','NA',133,'2013-12-19 19:44:19'),(188,'Not applicable','NA',134,'2013-12-19 19:44:19'),(189,'Not applicable','NA',135,'2013-12-19 19:44:19'),(190,'Not applicable','NA',136,'2013-12-19 19:44:19'),(191,'Not applicable','NA',137,'2013-12-19 19:44:19'),(192,'Not applicable','NA',138,'2013-12-19 19:44:19'),(193,'Not applicable','NA',139,'2013-12-19 19:44:19'),(194,'Not applicable','NA',140,'2013-12-19 19:44:19'),(195,'Not applicable','NA',141,'2013-12-19 19:44:19'),(196,'Not applicable','NA',142,'2013-12-19 19:44:19'),(197,'Not applicable','NA',143,'2013-12-19 19:44:19'),(198,'Not applicable','NA',144,'2013-12-19 19:44:19'),(199,'Not applicable','NA',145,'2013-12-19 19:44:19'),(200,'Not applicable','NA',146,'2013-12-19 19:44:19'),(201,'Not applicable','NA',147,'2013-12-19 19:44:19'),(202,'Not applicable','NA',148,'2013-12-19 19:44:19'),(203,'Not applicable','NA',149,'2013-12-19 19:44:19'),(204,'Not applicable','NA',150,'2013-12-19 19:44:19'),(205,'Not applicable','NA',151,'2013-12-19 19:44:19'),(206,'Not applicable','NA',152,'2013-12-19 19:44:19'),(207,'Not applicable','NA',153,'2013-12-19 19:44:19'),(208,'Not applicable','NA',154,'2013-12-19 19:44:19'),(209,'Not applicable','NA',155,'2013-12-19 19:44:19'),(210,'Not applicable','NA',156,'2013-12-19 19:44:19'),(211,'Not applicable','NA',157,'2013-12-19 19:44:19'),(212,'Not applicable','NA',158,'2013-12-19 19:44:19'),(213,'Not applicable','NA',159,'2013-12-19 19:44:19'),(214,'Not applicable','NA',160,'2013-12-19 19:44:19'),(215,'Not applicable','NA',161,'2013-12-19 19:44:19'),(216,'Not applicable','NA',162,'2013-12-19 19:44:19'),(217,'Not applicable','NA',163,'2013-12-19 19:44:19'),(218,'Not applicable','NA',164,'2013-12-19 19:44:19'),(219,'Not applicable','NA',165,'2013-12-19 19:44:20'),(220,'Not applicable','NA',166,'2013-12-19 19:44:20'),(221,'Not applicable','NA',167,'2013-12-19 19:44:20'),(222,'Not applicable','NA',168,'2013-12-19 19:44:20'),(223,'Not applicable','NA',169,'2013-12-19 19:44:20'),(224,'Not applicable','NA',170,'2013-12-19 19:44:20'),(225,'Not applicable','NA',171,'2013-12-19 19:44:20'),(226,'Not applicable','NA',172,'2013-12-19 19:44:20'),(227,'Not applicable','NA',173,'2013-12-19 19:44:20'),(228,'Not applicable','NA',174,'2013-12-19 19:44:20'),(229,'Not applicable','NA',175,'2013-12-19 19:44:20'),(230,'Not applicable','NA',176,'2013-12-19 19:44:20'),(231,'Not applicable','NA',177,'2013-12-19 19:44:20'),(232,'Not applicable','NA',178,'2013-12-19 19:44:20'),(233,'Not applicable','NA',179,'2013-12-19 19:44:20'),(234,'Not applicable','NA',180,'2013-12-19 19:44:20'),(235,'Not applicable','NA',181,'2013-12-19 19:44:20'),(236,'Not applicable','NA',182,'2013-12-19 19:44:20'),(237,'Not applicable','NA',183,'2013-12-19 19:44:20'),(238,'Not applicable','NA',184,'2013-12-19 19:44:20'),(239,'Not applicable','NA',185,'2013-12-19 19:44:20'),(240,'Not applicable','NA',186,'2013-12-19 19:44:20'),(241,'Not applicable','NA',187,'2013-12-19 19:44:20'),(242,'Not applicable','NA',188,'2013-12-19 19:44:20'),(243,'Not applicable','NA',189,'2013-12-19 19:44:20'),(244,'Not applicable','NA',190,'2013-12-19 19:44:20'),(245,'Not applicable','NA',191,'2013-12-19 19:44:20'),(246,'Not applicable','NA',192,'2013-12-19 19:44:20'),(247,'Not applicable','NA',193,'2013-12-19 19:44:20'),(248,'Not applicable','NA',194,'2013-12-19 19:44:20'),(249,'Not applicable','NA',195,'2013-12-19 19:44:20'),(250,'Not applicable','NA',196,'2013-12-19 19:44:20'),(251,'Not applicable','NA',197,'2013-12-19 19:44:20'),(252,'Not applicable','NA',198,'2013-12-19 19:44:20'),(253,'Not applicable','NA',199,'2013-12-19 19:44:20'),(254,'Not applicable','NA',200,'2013-12-19 19:44:20'),(255,'Not applicable','NA',201,'2013-12-19 19:44:20'),(256,'Not applicable','NA',202,'2013-12-19 19:44:20'),(257,'Not applicable','NA',203,'2013-12-19 19:44:20'),(258,'Not applicable','NA',204,'2013-12-19 19:44:20'),(259,'Not applicable','NA',205,'2013-12-19 19:44:20'),(260,'Not applicable','NA',206,'2013-12-19 19:44:20'),(261,'Not applicable','NA',207,'2013-12-19 19:44:21'),(262,'Not applicable','NA',208,'2013-12-19 19:44:21'),(263,'Not applicable','NA',209,'2013-12-19 19:44:21'),(264,'Not applicable','NA',210,'2013-12-19 19:44:21'),(265,'Not applicable','NA',211,'2013-12-19 19:44:21'),(266,'Not applicable','NA',212,'2013-12-19 19:44:21'),(267,'Not applicable','NA',213,'2013-12-19 19:44:21'),(268,'Not applicable','NA',214,'2013-12-19 19:44:21'),(269,'Not applicable','NA',215,'2013-12-19 19:44:21'),(270,'Not applicable','NA',216,'2013-12-19 19:44:21'),(271,'Not applicable','NA',217,'2013-12-19 19:44:21'),(272,'Not applicable','NA',218,'2013-12-19 19:44:21'),(273,'Not applicable','NA',219,'2013-12-19 19:44:21'),(274,'Not applicable','NA',220,'2013-12-19 19:44:21'),(275,'Not applicable','NA',221,'2013-12-19 19:44:21'),(276,'Not applicable','NA',222,'2013-12-19 19:44:21'),(277,'Not applicable','NA',223,'2013-12-19 19:44:21'),(278,'Not applicable','NA',224,'2013-12-19 19:44:21'),(279,'Not applicable','NA',225,'2013-12-19 19:44:21'),(280,'Not applicable','NA',226,'2013-12-19 19:44:21'),(281,'Not applicable','NA',227,'2013-12-19 19:44:21');
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,-12,'2013-11-07 21:48:09','2013-12-24 20:39:36',1,'2014-01-08 20:26:27'),(2,1,2,10,'2013-11-07 21:48:09','2013-11-07 21:48:14',1,'2013-12-13 17:04:16'),(3,1,3,10,'2013-11-07 21:48:09','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(4,1,4,30,'2013-11-07 21:48:09','2013-12-24 20:33:23',1,'2014-01-08 20:26:32'),(5,1,5,2,'2013-11-07 21:48:10','2013-12-05 19:28:17',1,'2013-12-13 17:01:26'),(6,1,6,8,'2013-11-07 21:48:10','2013-12-05 18:29:05',1,'2013-12-13 17:04:13'),(7,1,7,9,'2013-11-07 21:48:10','2013-12-05 18:42:55',1,'2013-12-13 17:04:09'),(8,1,8,10,'2013-11-07 21:48:10','2013-11-07 21:48:14',1,'2013-12-13 17:03:04'),(9,1,9,10,'2013-11-07 21:48:10','2013-11-07 21:48:14',1,'2013-12-13 17:04:58'),(10,1,10,10,'2013-11-07 21:48:10','2013-11-07 21:48:14',1,'2013-12-13 17:04:30'),(11,1,11,10,'2013-11-07 21:48:10','2013-11-07 21:48:14',1,'2013-12-13 17:04:40'),(12,1,12,5,'2013-11-07 21:48:10','2013-12-28 01:30:49',1,'2014-01-08 20:25:52'),(13,1,13,10,'2013-11-07 21:48:10','2013-11-07 21:48:14',1,'2013-12-13 17:04:53'),(14,1,14,10,'2013-11-07 21:48:11','2013-11-07 21:48:14',1,'2013-12-13 17:04:36'),(15,1,15,10,'2013-11-07 21:48:11','2013-11-07 21:48:14',1,'2013-12-13 17:05:04'),(16,1,16,2,'2013-11-07 21:48:11','2013-12-28 02:32:31',1,'2014-01-08 20:25:45'),(17,1,17,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(18,1,18,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(19,1,19,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(20,1,20,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(21,1,21,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(22,1,22,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(23,1,23,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(24,1,24,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(25,1,25,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(26,1,26,10,'2013-11-07 21:48:13','2013-11-07 21:48:14',1,'2013-12-13 17:04:21'),(27,1,27,98,'2013-12-13 16:53:38','2013-12-28 02:32:34',1,'2014-01-08 20:25:35'),(28,1,28,52,'2013-12-24 19:40:46','2014-01-10 18:04:26',0,NULL),(31,1,31,54,'2014-01-08 21:01:18','2014-01-09 21:53:20',1,NULL),(32,1,32,55,'2014-01-08 21:08:50','2014-01-08 21:11:06',1,NULL),(33,1,33,0,'2014-01-08 21:14:40','2014-01-08 21:14:40',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2013-11-07 21:47:09','2013-11-07 21:48:14',NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(2,2,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(3,3,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(4,4,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(5,5,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(6,6,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(7,7,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(8,8,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(9,9,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(10,10,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(11,11,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(12,12,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(13,13,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(14,14,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(15,15,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(16,16,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(17,17,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(18,18,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(19,19,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(20,20,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(21,21,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(22,22,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(23,23,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(24,24,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(25,25,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(26,26,10,NULL,'2013-11-07 21:48:14','2013-11-07 21:48:14',NULL,NULL),(27,5,-1,NULL,'2013-12-03 14:59:59','2013-12-03 14:59:59',3,'Spree::Shipment'),(28,6,-1,NULL,'2013-12-03 15:25:02','2013-12-03 15:25:02',5,'Spree::Shipment'),(29,1,-1,NULL,'2013-12-05 18:10:27','2013-12-05 18:10:27',7,'Spree::Shipment'),(30,6,-1,NULL,'2013-12-05 18:29:05','2013-12-05 18:29:05',9,'Spree::Shipment'),(31,5,-2,NULL,'2013-12-05 18:29:05','2013-12-05 18:29:05',9,'Spree::Shipment'),(32,5,-1,NULL,'2013-12-05 18:35:58','2013-12-05 18:35:58',10,'Spree::Shipment'),(33,5,-1,NULL,'2013-12-05 18:42:55','2013-12-05 18:42:55',11,'Spree::Shipment'),(34,7,-1,NULL,'2013-12-05 18:42:55','2013-12-05 18:42:55',11,'Spree::Shipment'),(35,5,-2,NULL,'2013-12-05 18:47:54','2013-12-05 18:47:54',12,'Spree::Shipment'),(36,5,-1,NULL,'2013-12-05 19:28:17','2013-12-05 19:28:17',14,'Spree::Shipment'),(37,1,-2,NULL,'2013-12-05 21:29:43','2013-12-05 21:29:43',15,'Spree::Shipment'),(38,4,1,NULL,'2013-12-17 18:50:36','2013-12-17 18:50:36',NULL,NULL),(39,4,1,NULL,'2013-12-17 18:51:03','2013-12-17 18:51:03',NULL,NULL),(40,4,1,NULL,'2013-12-17 18:54:54','2013-12-17 18:54:54',NULL,NULL),(41,4,1,NULL,'2013-12-17 19:08:47','2013-12-17 19:08:47',NULL,NULL),(42,4,1,NULL,'2013-12-17 19:09:13','2013-12-17 19:09:13',NULL,NULL),(43,4,1,NULL,'2013-12-17 19:09:38','2013-12-17 19:09:38',NULL,NULL),(44,4,1,NULL,'2013-12-17 19:11:16','2013-12-17 19:11:16',NULL,NULL),(45,4,1,NULL,'2013-12-17 19:24:19','2013-12-17 19:24:19',NULL,NULL),(46,4,1,NULL,'2013-12-17 20:12:57','2013-12-17 20:12:57',NULL,NULL),(47,4,1,NULL,'2013-12-17 20:15:51','2013-12-17 20:15:51',NULL,NULL),(48,4,1,NULL,'2013-12-17 20:16:58','2013-12-17 20:16:58',NULL,NULL),(49,4,1,NULL,'2013-12-17 20:17:58','2013-12-17 20:17:58',NULL,NULL),(50,4,1,NULL,'2013-12-17 20:19:28','2013-12-17 20:19:28',NULL,NULL),(51,4,1,NULL,'2013-12-17 20:24:46','2013-12-17 20:24:46',NULL,NULL),(52,4,1,NULL,'2013-12-17 20:59:53','2013-12-17 20:59:53',NULL,NULL),(53,4,1,NULL,'2013-12-17 21:38:22','2013-12-17 21:38:22',NULL,NULL),(54,4,1,NULL,'2013-12-17 21:54:12','2013-12-17 21:54:12',NULL,NULL),(55,4,1,NULL,'2013-12-17 21:56:09','2013-12-17 21:56:09',NULL,NULL),(56,4,1,NULL,'2013-12-17 21:59:09','2013-12-17 21:59:09',NULL,NULL),(57,4,1,NULL,'2013-12-17 22:14:02','2013-12-17 22:14:02',NULL,NULL),(58,4,1,NULL,'2013-12-17 22:19:41','2013-12-17 22:19:41',NULL,NULL),(59,4,1,NULL,'2013-12-17 22:24:44','2013-12-17 22:24:44',NULL,NULL),(60,4,1,NULL,'2013-12-17 22:25:26','2013-12-17 22:25:26',NULL,NULL),(61,4,1,NULL,'2013-12-17 22:43:36','2013-12-17 22:43:36',NULL,NULL),(62,4,1,NULL,'2013-12-17 22:56:48','2013-12-17 22:56:48',NULL,NULL),(63,4,1,NULL,'2013-12-17 23:04:49','2013-12-17 23:04:49',NULL,NULL),(64,4,1,NULL,'2013-12-17 23:06:21','2013-12-17 23:06:21',NULL,NULL),(65,4,1,NULL,'2013-12-17 23:08:08','2013-12-17 23:08:08',NULL,NULL),(66,4,1,NULL,'2013-12-18 14:54:04','2013-12-18 14:54:04',NULL,NULL),(67,4,1,NULL,'2013-12-18 14:55:51','2013-12-18 14:55:51',NULL,NULL),(68,1,2,NULL,'2013-12-18 15:06:39','2013-12-18 15:06:39',15,'Spree::Shipment'),(69,4,1,NULL,'2013-12-18 15:09:24','2013-12-18 15:09:24',NULL,NULL),(70,27,100,NULL,'2013-12-20 18:45:18','2013-12-20 18:45:18',NULL,NULL),(71,27,1,NULL,'2013-12-20 18:46:20','2013-12-20 18:46:20',NULL,NULL),(72,1,-1,NULL,'2013-12-23 21:35:37','2013-12-23 21:35:37',33,'Spree::Shipment'),(73,1,-7,NULL,'2013-12-23 21:40:30','2013-12-23 21:40:30',34,'Spree::Shipment'),(74,4,-2,NULL,'2013-12-23 21:40:30','2013-12-23 21:40:30',34,'Spree::Shipment'),(75,12,-2,NULL,'2013-12-23 21:40:30','2013-12-23 21:40:30',34,'Spree::Shipment'),(76,4,-1,NULL,'2013-12-23 21:51:45','2013-12-23 21:51:45',35,'Spree::Shipment'),(77,1,-1,NULL,'2013-12-23 21:56:51','2013-12-23 21:56:51',36,'Spree::Shipment'),(78,27,-1,NULL,'2013-12-23 21:59:38','2013-12-23 21:59:38',37,'Spree::Shipment'),(79,1,-1,NULL,'2013-12-23 22:03:46','2013-12-23 22:03:46',38,'Spree::Shipment'),(80,12,-1,NULL,'2013-12-23 22:56:02','2013-12-23 22:56:02',39,'Spree::Shipment'),(81,1,-1,NULL,'2013-12-23 22:56:17','2013-12-23 22:56:17',40,'Spree::Shipment'),(82,1,-1,NULL,'2013-12-23 23:29:43','2013-12-23 23:29:43',41,'Spree::Shipment'),(83,4,-1,NULL,'2013-12-23 23:34:28','2013-12-23 23:34:28',42,'Spree::Shipment'),(84,1,-1,NULL,'2013-12-23 23:41:54','2013-12-23 23:41:54',43,'Spree::Shipment'),(85,4,-1,NULL,'2013-12-23 23:49:45','2013-12-23 23:49:45',44,'Spree::Shipment'),(86,1,-2,NULL,'2013-12-23 23:56:35','2013-12-23 23:56:35',45,'Spree::Shipment'),(87,27,-1,NULL,'2013-12-23 23:56:38','2013-12-23 23:56:38',46,'Spree::Shipment'),(88,1,-1,NULL,'2013-12-24 00:02:26','2013-12-24 00:02:26',47,'Spree::Shipment'),(89,27,-1,NULL,'2013-12-24 15:38:01','2013-12-24 15:38:01',51,'Spree::Shipment'),(90,4,-1,NULL,'2013-12-24 15:38:01','2013-12-24 15:38:01',52,'Spree::Shipment'),(91,12,-5,NULL,'2013-12-24 15:38:05','2013-12-24 15:38:05',52,'Spree::Shipment'),(92,1,-3,NULL,'2013-12-24 15:38:08','2013-12-24 15:38:08',53,'Spree::Shipment'),(93,28,12,NULL,'2013-12-24 19:44:03','2013-12-24 19:44:03',NULL,NULL),(94,1,2,NULL,'2013-12-24 20:13:36','2013-12-24 20:13:36',15,'Spree::Shipment'),(95,27,1,NULL,'2013-12-24 20:14:30','2013-12-24 20:14:30',51,'Spree::Shipment'),(96,4,1,NULL,'2013-12-24 20:14:30','2013-12-24 20:14:30',52,'Spree::Shipment'),(97,12,5,NULL,'2013-12-24 20:14:35','2013-12-24 20:14:35',52,'Spree::Shipment'),(98,1,3,NULL,'2013-12-24 20:14:38','2013-12-24 20:14:38',53,'Spree::Shipment'),(99,4,-5,NULL,'2013-12-24 20:30:18','2013-12-24 20:30:18',54,'Spree::Shipment'),(100,1,-4,NULL,'2013-12-24 20:30:25','2013-12-24 20:30:25',55,'Spree::Shipment'),(101,4,-1,NULL,'2013-12-24 20:33:23','2013-12-24 20:33:23',56,'Spree::Shipment'),(102,1,-3,NULL,'2013-12-24 20:39:36','2013-12-24 20:39:36',58,'Spree::Shipment'),(103,16,-7,NULL,'2013-12-24 20:42:45','2013-12-24 20:42:45',59,'Spree::Shipment'),(104,28,-5,NULL,'2013-12-24 20:52:19','2013-12-24 20:52:19',60,'Spree::Shipment'),(105,12,-1,NULL,'2013-12-26 05:14:57','2013-12-26 05:14:57',61,'Spree::Shipment'),(106,12,-1,NULL,'2013-12-28 01:30:49','2013-12-28 01:30:49',64,'Spree::Shipment'),(107,16,-1,NULL,'2013-12-28 02:32:31','2013-12-28 02:32:31',66,'Spree::Shipment'),(108,27,-1,NULL,'2013-12-28 02:32:34','2013-12-28 02:32:34',67,'Spree::Shipment'),(109,28,48,NULL,'2014-01-08 20:37:22','2014-01-08 20:37:22',NULL,NULL),(110,31,55,NULL,'2014-01-08 21:03:01','2014-01-08 21:03:01',NULL,NULL),(111,32,55,NULL,'2014-01-08 21:11:06','2014-01-08 21:11:06',NULL,NULL),(112,28,-1,NULL,'2014-01-09 16:36:33','2014-01-09 16:36:33',68,'Spree::Shipment'),(113,28,-1,NULL,'2014-01-09 17:24:21','2014-01-09 17:24:21',69,'Spree::Shipment'),(114,31,-1,NULL,'2014-01-09 21:53:20','2014-01-09 21:53:20',71,'Spree::Shipment'),(115,28,-1,NULL,'2014-01-09 21:53:20','2014-01-09 21:53:20',71,'Spree::Shipment');
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2013-11-07 21:48:09','2013-11-07 21:48:09'),(2,'Food',NULL,0,NULL,'2013-11-07 21:48:09','2013-11-07 21:48:09');
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,'0.05000',2,1,0,'2013-11-07 21:48:09','2013-11-07 21:48:09','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (5,'Angostura® Aromatic Bitters','2013-12-02 18:01:08','2014-01-07 20:47:03',0),(6,'Angostura® LLB','2013-12-02 18:01:32','2014-01-07 20:11:30',0),(7,'Angostura® Orange Bitters','2013-12-02 18:01:51','2014-01-07 20:01:48',0),(9,'Angostura ® 1824','2014-01-07 14:52:55','2014-01-07 20:03:25',0),(10,'Angostura ®1919','2014-01-07 14:54:47','2014-01-07 20:05:37',0),(11,'Angostura ® 5 Year old','2014-01-07 14:55:25','2014-01-07 20:06:43',0),(12,'Angostura ® 7 Year old','2014-01-07 14:56:45','2014-01-07 20:07:53',0),(13,'Angostura ® Reserva','2014-01-07 15:34:34','2014-01-07 20:08:22',0),(14,'General','2014-01-08 14:59:30','2014-01-08 15:02:47',0);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (13,NULL,0,'Slider','slider',3,1,2,NULL,NULL,NULL,NULL,NULL,'2013-11-12 17:58:07','2013-11-12 17:58:07',NULL,NULL,NULL,0),(14,NULL,0,'Featured','featured',3,3,4,NULL,NULL,NULL,NULL,NULL,'2013-11-12 17:58:07','2013-11-12 17:58:07',NULL,NULL,NULL,0),(15,NULL,0,'Latest','latest',3,5,6,NULL,NULL,NULL,NULL,NULL,'2013-11-12 17:58:07','2013-11-12 17:58:07',NULL,NULL,NULL,0),(17,NULL,0,'Slider','slider',4,7,8,NULL,NULL,NULL,NULL,NULL,'2013-11-12 18:38:44','2013-11-12 18:38:44',NULL,NULL,NULL,0),(18,NULL,0,'Featured','featured',4,9,10,NULL,NULL,NULL,NULL,NULL,'2013-11-12 18:38:44','2013-11-12 18:38:44',NULL,NULL,NULL,0),(19,NULL,0,'Latest','latest',4,11,12,NULL,NULL,NULL,NULL,NULL,'2013-11-12 18:38:44','2013-11-12 18:38:44',NULL,NULL,NULL,0),(20,NULL,0,'Angostura® Aromatic Bitters','angostura-r-aromatic-bitters',5,13,16,'bitters.png','image/png',57344,'2014-01-07 20:47:01','Testing ','2013-12-02 18:01:08','2014-01-07 20:47:02','','','',0),(21,NULL,0,'Angostura® LLB','angostura-r-llb',6,17,18,'llb.jpg','image/jpeg',522775,'2014-01-07 20:11:28','','2013-12-02 18:01:32','2014-01-07 20:11:30','','','',0),(22,NULL,0,'Angostura® Orange Bitters','angostura-r-orange-bitters',7,19,20,'orange_bitters.jpg','image/jpeg',59242,'2014-01-07 20:01:46','','2013-12-02 18:01:51','2014-01-07 20:01:48','','','',0),(23,20,0,'Testing','angostura-r-aromatic-bitters/testing',5,14,15,'image_bittersBottles.png','image/png',93407,'2013-12-02 18:18:30','','2013-12-02 18:18:18','2013-12-02 18:18:31','','','',1),(25,NULL,0,'Angostura ® 1824','angostura-r-1824',9,21,22,'ANGOSTURA_12yrs_RUM_1824_750ml.jpg','image/jpeg',53826,'2014-01-07 20:03:23','','2014-01-07 14:52:55','2014-01-07 20:03:25','','','',0),(26,NULL,0,'Angostura ®1919','angostura-1919',10,23,24,'1919.jpg','image/jpeg',48151,'2014-01-07 20:05:35','','2014-01-07 14:54:47','2014-01-07 20:05:37','','','',0),(27,NULL,0,'Angostura ® 5 Year old','angostura-r-5-year-old',11,25,26,'5_years.jpg','image/jpeg',628659,'2014-01-07 20:06:41','','2014-01-07 14:55:25','2014-01-07 20:06:43','','','',0),(28,NULL,0,'Angostura ® 7 Year old','angostura-r-7-year-old',12,27,28,'angostura-7-year.jpg','image/jpeg',17438,'2014-01-07 20:07:52','','2014-01-07 14:56:45','2014-01-07 20:07:53','','','',0),(29,NULL,0,'Angostura ® Reserva','angostura-r-reserva',13,29,30,'AngosturaReserva.jpg','image/jpeg',8990,'2014-01-07 20:08:20','','2014-01-07 15:34:34','2014-01-07 20:08:22','','','',0),(30,NULL,0,'General','general',14,31,32,'Angostura_logo_big_regular_regular.png','image/png',59843,'2014-01-08 15:02:46','','2014-01-08 14:59:31','2014-01-08 15:02:47','','','',0);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','435a177fd8b37216','2013-11-07 21:48:35','2013-11-07 21:48:35'),(2,2,'Spree::Order','f6b7c4d0ef3198dc','2013-11-07 21:48:35','2013-11-07 21:48:35'),(3,3,'Spree::Order','982b57a984f870c5','2013-11-11 14:48:57','2013-11-11 14:48:57'),(4,4,'Spree::Order','a5265e669c69b67c','2013-12-03 14:57:27','2013-12-03 14:57:27'),(5,5,'Spree::Order','197e269ea799e039','2013-12-03 15:00:01','2013-12-03 15:00:01'),(6,6,'Spree::Order','a503189454590d74','2013-12-03 15:10:37','2013-12-03 15:10:37'),(7,7,'Spree::Order','73af1c95ae5da64b','2013-12-03 15:23:30','2013-12-03 15:23:30'),(8,8,'Spree::Order','d447e3527cf8e784','2013-12-03 15:25:03','2013-12-03 15:25:03'),(9,9,'Spree::Order','8c493939fcdb09f3','2013-12-03 15:57:49','2013-12-03 15:57:49'),(10,10,'Spree::Order','e060af0f05bf2cfd','2013-12-03 16:06:05','2013-12-03 16:06:05'),(11,11,'Spree::Order','f888733262ae8dba','2013-12-03 17:09:24','2013-12-03 17:09:24'),(12,12,'Spree::Order','d1de8180bfc9db9e','2013-12-03 23:41:08','2013-12-03 23:41:08'),(13,13,'Spree::Order','a7438910f794f930','2013-12-03 23:50:47','2013-12-03 23:50:47'),(14,14,'Spree::Order','f9c879fc70cd488f','2013-12-04 17:01:58','2013-12-04 17:01:58'),(15,15,'Spree::Order','2f2f16ff98c00030','2013-12-04 20:31:09','2013-12-04 20:31:09'),(16,16,'Spree::Order','b7cc7371f8286020','2013-12-05 16:19:47','2013-12-05 16:19:47'),(17,17,'Spree::Order','fd7288619df069dc','2013-12-05 17:52:35','2013-12-05 17:52:35'),(18,18,'Spree::Order','ef842e048bd8a3d4','2013-12-05 18:10:31','2013-12-05 18:10:31'),(19,19,'Spree::Order','3a2ae27725f44d7e','2013-12-05 18:29:07','2013-12-05 18:29:07'),(20,20,'Spree::Order','69102ed51dfbe1bc','2013-12-05 18:36:01','2013-12-05 18:36:01'),(21,21,'Spree::Order','c3ad404dc3bcb9fc','2013-12-05 18:42:58','2013-12-05 18:42:58'),(22,22,'Spree::Order','2b74532f94296e74','2013-12-05 18:47:57','2013-12-05 18:47:57'),(23,23,'Spree::Order','f85efac1d78f0764','2013-12-05 19:28:21','2013-12-05 19:28:21'),(24,24,'Spree::Order','da51c23ffd7228ac','2013-12-05 21:29:56','2013-12-05 21:29:56'),(25,25,'Spree::Order','86f20b18e74e38e5','2013-12-06 17:42:57','2013-12-06 17:42:57'),(26,26,'Spree::Order','ee02102aa4a4e183','2013-12-16 23:09:02','2013-12-16 23:09:02'),(27,27,'Spree::Order','98687fff189b7674','2013-12-17 16:31:11','2013-12-17 16:31:11'),(28,28,'Spree::Order','b1f1c0d6031477f5','2013-12-19 18:54:19','2013-12-19 18:54:19'),(29,29,'Spree::Order','ca343270b7800367','2013-12-19 19:47:58','2013-12-19 19:47:58'),(30,30,'Spree::Order','9e9f0b261e6c9212','2013-12-19 19:51:25','2013-12-19 19:51:25'),(31,31,'Spree::Order','7c565065306675af','2013-12-19 20:23:39','2013-12-19 20:23:39'),(32,32,'Spree::Order','815f6fde5cedbb3f','2013-12-19 20:30:00','2013-12-19 20:30:00'),(33,33,'Spree::Order','236f9137ec28701b','2013-12-19 20:35:59','2013-12-19 20:35:59'),(34,34,'Spree::Order','6e1f700307a2c98c','2013-12-19 20:42:35','2013-12-19 20:42:35'),(35,35,'Spree::Order','5daee80c10a29e11','2013-12-19 20:48:18','2013-12-19 20:48:18'),(36,36,'Spree::Order','a3f2b58d61fedd1d','2013-12-23 14:40:48','2013-12-23 14:40:48'),(37,37,'Spree::Order','9de36bbd604d1a73','2013-12-23 14:43:15','2013-12-23 14:43:15'),(38,38,'Spree::Order','83f35f4610eb3f02','2013-12-23 15:52:10','2013-12-23 15:52:10'),(39,39,'Spree::Order','569d4fa27a1ed5d9','2013-12-23 21:27:02','2013-12-23 21:27:02'),(40,40,'Spree::Order','3e333bdabc5f268a','2013-12-23 21:35:37','2013-12-23 21:35:37'),(41,41,'Spree::Order','660540f87d190d36','2013-12-23 21:39:31','2013-12-23 21:39:31'),(42,42,'Spree::Order','68298349cb1da486','2013-12-23 21:40:30','2013-12-23 21:40:30'),(43,43,'Spree::Order','8e2746ee8b54e58b','2013-12-23 21:51:45','2013-12-23 21:51:45'),(44,44,'Spree::Order','c1e5bdfb25aad290','2013-12-23 21:56:51','2013-12-23 21:56:51'),(45,45,'Spree::Order','de8a9f7553246fca','2013-12-23 21:59:38','2013-12-23 21:59:38'),(46,46,'Spree::Order','1b8a8efa20754496','2013-12-23 22:03:05','2013-12-23 22:03:05'),(47,47,'Spree::Order','0ad61c07a6189d1d','2013-12-23 22:04:11','2013-12-23 22:04:11'),(48,48,'Spree::Order','e45626f7564b3b16','2013-12-23 22:54:31','2013-12-23 22:54:31'),(49,49,'Spree::Order','4dc46504040f7b45','2013-12-23 22:55:02','2013-12-23 22:55:02'),(50,50,'Spree::Order','2ca84eb5f1a505ea','2013-12-23 22:56:42','2013-12-23 22:56:42'),(51,51,'Spree::Order','49ac454f0670ae19','2013-12-23 23:28:52','2013-12-23 23:28:52'),(52,52,'Spree::Order','4e27a1f7c6b2903d','2013-12-23 23:29:50','2013-12-23 23:29:50'),(53,53,'Spree::Order','007f31f375d4a36f','2013-12-23 23:34:34','2013-12-23 23:34:34'),(54,54,'Spree::Order','5f0074ef6b7ef8fe','2013-12-23 23:40:50','2013-12-23 23:40:50'),(55,55,'Spree::Order','9e9a163911b69889','2013-12-23 23:42:01','2013-12-23 23:42:01'),(56,56,'Spree::Order','2ea475e976d4578f','2013-12-23 23:44:22','2013-12-23 23:44:22'),(57,57,'Spree::Order','6fbb816748f067bb','2013-12-23 23:47:21','2013-12-23 23:47:21'),(58,58,'Spree::Order','b8ef46ea35f5ab55','2013-12-23 23:49:52','2013-12-23 23:49:52'),(59,59,'Spree::Order','e340ef78fd54f943','2013-12-23 23:54:40','2013-12-23 23:54:40'),(60,60,'Spree::Order','8c63d3af2c6a57ce','2013-12-23 23:55:53','2013-12-23 23:55:53'),(61,61,'Spree::Order','b0b2a1633461a219','2013-12-23 23:56:41','2013-12-23 23:56:41'),(62,62,'Spree::Order','f549100fb1141804','2013-12-23 23:59:26','2013-12-23 23:59:26'),(63,63,'Spree::Order','26294402a23820f9','2013-12-24 00:01:57','2013-12-24 00:01:57'),(64,64,'Spree::Order','f471aca1aa7b7174','2013-12-24 00:02:33','2013-12-24 00:02:33'),(65,65,'Spree::Order','630e54054011c687','2013-12-24 00:05:21','2013-12-24 00:05:21'),(66,66,'Spree::Order','49bc493e4760df02','2013-12-24 00:07:21','2013-12-24 00:07:21'),(67,67,'Spree::Order','76608be426246a5d','2013-12-24 00:17:22','2013-12-24 00:17:22'),(68,68,'Spree::Order','881acf644c5f38b4','2013-12-24 00:27:09','2013-12-24 00:27:09'),(69,69,'Spree::Order','7104cc720345343d','2013-12-24 00:28:55','2013-12-24 00:28:55'),(70,70,'Spree::Order','c45c949c03f9f757','2013-12-24 00:34:31','2013-12-24 00:34:31'),(71,71,'Spree::Order','770fd7eb2e3272f9','2013-12-24 00:35:18','2013-12-24 00:35:18'),(72,72,'Spree::Order','57359f1915bebd54','2013-12-24 00:38:57','2013-12-24 00:38:57'),(73,73,'Spree::Order','59aa3a097fe46652','2013-12-24 00:42:30','2013-12-24 00:42:30'),(74,74,'Spree::Order','c1c914a2c99b4a63','2013-12-24 00:45:27','2013-12-24 00:45:27'),(75,75,'Spree::Order','807f5f113803ed0c','2013-12-24 00:53:33','2013-12-24 00:53:33'),(76,76,'Spree::Order','295d67b208f4a3ab','2013-12-24 03:22:20','2013-12-24 03:22:20'),(77,77,'Spree::Order','726b83f51c74663e','2013-12-24 04:41:22','2013-12-24 04:41:22'),(78,78,'Spree::Order','3e532599559f4fac','2013-12-24 05:10:47','2013-12-24 05:10:47'),(79,79,'Spree::Order','64b6a0ccc5c0fbc0','2013-12-24 15:38:15','2013-12-24 15:38:15'),(80,80,'Spree::Order','613104325f1e470f','2013-12-24 17:08:30','2013-12-24 17:08:30'),(81,81,'Spree::Order','a177040b7a2a53f5','2013-12-24 19:13:35','2013-12-24 19:13:35'),(82,82,'Spree::Order','1d516b1697657fb0','2013-12-24 20:30:32','2013-12-24 20:30:32'),(83,83,'Spree::Order','c1ae4263376c60c4','2013-12-24 20:33:29','2013-12-24 20:33:29'),(84,84,'Spree::Order','d6b8edce9aaa54f5','2013-12-24 20:37:06','2013-12-24 20:37:06'),(85,85,'Spree::Order','16a8be57a19e1768','2013-12-24 20:38:22','2013-12-24 20:38:22'),(86,86,'Spree::Order','3e4aa798b6989f24','2013-12-24 20:42:13','2013-12-24 20:42:13'),(87,87,'Spree::Order','932dbc752d62acde','2013-12-24 20:51:33','2013-12-24 20:51:33'),(88,88,'Spree::Order','8190d08fa08c167b','2013-12-24 20:52:27','2013-12-24 20:52:27'),(89,89,'Spree::Order','3c2c68c6df629779','2013-12-24 20:52:27','2013-12-24 20:52:27'),(90,90,'Spree::Order','a82530db10fff1f7','2013-12-25 20:37:01','2013-12-25 20:37:01'),(91,91,'Spree::Order','7e67e25a72d8970e','2013-12-25 21:26:20','2013-12-25 21:26:20'),(92,92,'Spree::Order','231da78565a777ad','2013-12-26 03:45:47','2013-12-26 03:45:47'),(93,93,'Spree::Order','fc3b5a0f5e07dcb9','2013-12-26 03:47:58','2013-12-26 03:47:58'),(94,94,'Spree::Order','9f00a74d9e2c9203','2013-12-26 04:00:10','2013-12-26 04:00:10'),(95,95,'Spree::Order','c03e32eb748cbf88','2013-12-26 04:23:52','2013-12-26 04:23:52'),(96,96,'Spree::Order','58a01044d1fa89bc','2013-12-26 04:29:39','2013-12-26 04:29:39'),(97,97,'Spree::Order','05aac47d32fd8f1a','2013-12-26 04:35:21','2013-12-26 04:35:21'),(98,98,'Spree::Order','68453a1ac37cacf4','2013-12-26 04:45:50','2013-12-26 04:45:50'),(99,99,'Spree::Order','b89017871a5dc215','2013-12-26 04:47:31','2013-12-26 04:47:31'),(100,100,'Spree::Order','e92e6fda08193e1e','2013-12-26 05:12:47','2013-12-26 05:12:47'),(101,101,'Spree::Order','274c4398d8c85d07','2013-12-26 05:19:01','2013-12-26 05:19:01'),(102,102,'Spree::Order','46ad8a54c952e82e','2013-12-26 05:21:36','2013-12-26 05:21:36'),(103,103,'Spree::Order','071d0f41607153af','2013-12-26 15:26:07','2013-12-26 15:26:07'),(104,104,'Spree::Order','2e0f51052ecbb92e','2013-12-27 15:41:28','2013-12-27 15:41:28'),(105,105,'Spree::Order','1ff32a482c2d513d','2013-12-28 01:30:57','2013-12-28 01:30:57'),(106,106,'Spree::Order','47d8117527694023','2013-12-28 02:32:38','2013-12-28 02:32:38'),(107,107,'Spree::Order','d08b0b2b8dd97094','2013-12-28 02:35:16','2013-12-28 02:35:16'),(108,108,'Spree::Order','768a80d3a8ac22cc','2013-12-28 23:13:34','2013-12-28 23:13:34'),(109,109,'Spree::Order','7207b184f9a36962','2013-12-28 23:15:48','2013-12-28 23:15:48'),(110,110,'Spree::Order','61fc4f0bcb6315a7','2013-12-28 23:47:43','2013-12-28 23:47:43'),(111,111,'Spree::Order','341f50731811676f','2013-12-28 23:53:50','2013-12-28 23:53:50'),(112,112,'Spree::Order','2967eebef88b7242','2013-12-29 01:05:30','2013-12-29 01:05:30'),(113,113,'Spree::Order','b1a37b7d468925ad','2013-12-29 01:13:41','2013-12-29 01:13:41'),(114,114,'Spree::Order','9bc4de86af2fad34','2013-12-29 01:23:29','2013-12-29 01:23:29'),(115,115,'Spree::Order','1f41727f8dafaf07','2013-12-29 01:27:40','2013-12-29 01:27:40'),(116,116,'Spree::Order','e30e3f5dcc1540ba','2013-12-29 01:36:09','2013-12-29 01:36:09'),(117,117,'Spree::Order','2de72d931878a2f8','2013-12-29 01:49:48','2013-12-29 01:49:48'),(118,118,'Spree::Order','0760b4554826bd13','2013-12-29 02:06:25','2013-12-29 02:06:25'),(119,119,'Spree::Order','eab123453d2fcc46','2013-12-29 02:10:44','2013-12-29 02:10:44'),(120,120,'Spree::Order','7dba41f50ebb9b7e','2013-12-29 02:15:07','2013-12-29 02:15:07'),(121,121,'Spree::Order','69a43d169ab9a78f','2013-12-29 02:25:09','2013-12-29 02:25:09'),(122,122,'Spree::Order','874de82cc53bbe6c','2013-12-29 02:39:47','2013-12-29 02:39:47'),(123,123,'Spree::Order','a21217f5598e6b27','2013-12-29 03:00:18','2013-12-29 03:00:18'),(124,124,'Spree::Order','17290e0f4b04c8f3','2013-12-29 03:01:46','2013-12-29 03:01:46'),(125,125,'Spree::Order','16cec4cd10b0427f','2013-12-29 03:09:26','2013-12-29 03:09:26'),(126,126,'Spree::Order','b9bc2246fde648c3','2013-12-29 03:40:48','2013-12-29 03:40:48'),(127,127,'Spree::Order','9ba5a8321d551328','2013-12-29 03:49:37','2013-12-29 03:49:37'),(128,128,'Spree::Order','994726bd1de344b1','2013-12-29 03:56:02','2013-12-29 03:56:02'),(129,129,'Spree::Order','fb857f875b9356d4','2013-12-29 04:04:55','2013-12-29 04:04:55'),(130,130,'Spree::Order','3ffaefbbcf5d9e73','2013-12-29 04:09:22','2013-12-29 04:09:22'),(131,131,'Spree::Order','6aa086e676b38dd8','2013-12-29 15:50:42','2013-12-29 15:50:42'),(132,132,'Spree::Order','d4ce82dacc187413','2013-12-31 21:47:27','2013-12-31 21:47:27'),(133,133,'Spree::Order','d55ae7c80a67bf99','2013-12-31 21:50:58','2013-12-31 21:50:58'),(134,134,'Spree::Order','1a92b22ea2eabaa8','2013-12-31 21:51:38','2013-12-31 21:51:38'),(135,135,'Spree::Order','8d4bc08ca4dc8d98','2014-01-01 03:23:23','2014-01-01 03:23:23'),(136,136,'Spree::Order','f29705da6a87bff1','2014-01-06 20:55:48','2014-01-06 20:55:48'),(137,137,'Spree::Order','2f6551bd7ac6c209','2014-01-08 14:55:50','2014-01-08 14:55:50'),(138,138,'Spree::Order','e6fdd736689f2778','2014-01-08 22:06:07','2014-01-08 22:06:07'),(139,139,'Spree::Order','5f59ea9103787c9e','2014-01-08 22:19:00','2014-01-08 22:19:00'),(140,140,'Spree::Order','2e45a8357b4d78e5','2014-01-08 23:01:36','2014-01-08 23:01:36'),(141,141,'Spree::Order','a4777054349a0370','2014-01-08 23:14:41','2014-01-08 23:14:41'),(142,142,'Spree::Order','1f55568e9fbc5b91','2014-01-09 15:15:06','2014-01-09 15:15:06'),(143,143,'Spree::Order','6e75c91de2373767','2014-01-09 16:05:28','2014-01-09 16:05:28'),(144,144,'Spree::Order','b6cdbc25954380d6','2014-01-09 16:36:05','2014-01-09 16:36:05'),(145,145,'Spree::Order','f567d0b8ce2cd71b','2014-01-09 17:23:57','2014-01-09 17:23:57'),(146,146,'Spree::Order','c85913b25a7e340e','2014-01-09 18:24:57','2014-01-09 18:24:57'),(147,147,'Spree::Order','00ff9c0d293a6b66','2014-01-09 21:24:46','2014-01-09 21:24:46'),(148,148,'Spree::Order','85b3ee42821ba296','2014-01-10 17:51:58','2014-01-10 17:51:58'),(149,149,'Spree::Order','e58fd43fa8b11b52','2014-01-10 18:49:00','2014-01-10 18:49:00'),(150,150,'Spree::Order','4f45dbbba1613efd','2014-01-10 19:57:52','2014-01-10 19:57:52'),(151,151,'Spree::Order','04d637313365131d','2014-01-14 18:40:27','2014-01-14 18:40:27'),(152,152,'Spree::Order','b02c1731be4719ca','2014-01-15 14:35:54','2014-01-15 14:35:54'),(153,153,'Spree::Order','71b0de258aef8192','2014-01-20 20:19:46','2014-01-20 20:19:46');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'7b0262291f33785ccd3d21b98f358957268197c66dae082008638e8185cf3bc4ecf0fd40aad2f3f9e037e318ce4696be3a0f9d695b4bbd6bdca7b5a206a3317c','3bW_JaSJbLwu1kews6CD','xnet.angostura@gmail.com',NULL,NULL,NULL,NULL,57,0,NULL,'2014-01-10 17:54:32','2014-01-09 21:55:38','190.213.80.193','190.213.80.193','dion.santana@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-11-07 21:48:03','2014-01-10 17:54:32','d9356a43a8f76b31399e6d593e3265bcebb05a38520bb2c6',NULL),(2,'e5d43dd2af0eddbbe5eb925a10d08b4c99b15dc5095576bd56aa4eb32c471a1b7ad02b0244f876467dceca56b3ec0b6a98a057caa079ed8579ad48c5518aa3b0','tw5VP8z1xccaqzYgj3jn','user.axnet@gmail.com',NULL,NULL,NULL,NULL,34,0,NULL,'2013-12-24 00:53:43','2013-12-24 00:45:36','190.213.80.193','190.213.80.193','dion@monstermediagroup.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-12-03 14:56:19','2014-01-09 16:59:57','32603b1bd4dcc5399d9e82d32372f5cfd8df7cfe075252a5',NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011',NULL,NULL,NULL,NULL,'2014-01-08 20:26:27',1,1,'17.00',1,'USD'),(2,'ROR-00012',NULL,NULL,NULL,NULL,'2013-12-13 17:04:16',1,2,'21.00',1,'USD'),(3,'ROR-001',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',1,3,'17.00',1,'USD'),(4,'ROR-00013',NULL,NULL,NULL,NULL,'2014-01-08 20:26:32',1,4,'17.00',1,'USD'),(5,'ROR-00015',NULL,NULL,NULL,NULL,'2013-12-13 17:01:26',1,5,'17.00',1,'USD'),(6,'RUB-00001',NULL,NULL,NULL,NULL,'2013-12-13 17:04:13',1,6,'17.00',1,'USD'),(7,'APC-00001',NULL,NULL,NULL,NULL,'2013-12-13 17:04:09',1,7,'17.00',1,'USD'),(8,'SPR-00001',NULL,NULL,NULL,NULL,'2013-12-13 17:03:04',1,8,'17.00',1,'USD'),(9,'SPR-00013',NULL,NULL,NULL,NULL,'2013-12-13 17:04:58',1,9,'17.00',1,'USD'),(10,'SPR-00015',NULL,NULL,NULL,NULL,'2013-12-13 17:04:31',1,10,'17.00',1,'USD'),(11,'SPR-00011',NULL,NULL,NULL,NULL,'2013-12-13 17:04:40',1,11,'13.00',1,'USD'),(12,'SPR-00012',NULL,NULL,NULL,NULL,'2014-01-08 20:25:52',1,12,'21.00',1,'USD'),(13,'ROR-00014',NULL,NULL,NULL,NULL,'2013-12-13 17:04:53',1,13,'11.00',1,'USD'),(14,'ROR-00016',NULL,NULL,NULL,NULL,'2013-12-13 17:04:36',1,14,'15.00',1,'USD'),(15,'SPR-00016',NULL,NULL,NULL,NULL,'2013-12-13 17:05:04',1,15,'15.00',1,'USD'),(16,'SPR-00014',NULL,NULL,NULL,NULL,'2014-01-08 20:25:45',1,16,'11.00',1,'USD'),(17,'ROR-00001',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',1,'USD'),(18,'ROR-00002',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',2,'USD'),(19,'ROR-00003',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',3,'USD'),(20,'ROR-00004',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',4,'USD'),(21,'ROR-00005',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',5,'USD'),(22,'ROR-00006',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',6,'USD'),(23,'ROR-00007',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',7,'USD'),(24,'ROR-00008',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',8,'USD'),(25,'ROR-00009',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',9,'USD'),(26,'ROR-00012',NULL,NULL,NULL,NULL,'2013-12-13 17:04:21',0,3,'17.00',10,'USD'),(27,'jashgxa7878',NULL,NULL,NULL,NULL,'2014-01-08 20:25:35',1,17,NULL,1,'USD'),(28,'uy867to',NULL,NULL,NULL,NULL,NULL,1,18,'12.00',1,'USD'),(31,'t4tet4g45',NULL,NULL,NULL,NULL,NULL,1,21,NULL,1,'USD'),(32,'tuty5666',NULL,NULL,NULL,NULL,NULL,1,22,NULL,1,'USD'),(33,'hbnn675',NULL,NULL,NULL,NULL,NULL,1,23,NULL,1,'USD');
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,72,'Spree::Country',1,'2013-11-07 21:47:19','2013-11-07 21:47:19'),(2,10,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(3,76,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(4,94,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(5,155,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(6,13,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(7,164,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(8,217,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(9,167,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(10,20,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(11,111,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(12,175,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(13,24,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(14,29,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(15,98,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(16,180,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(17,182,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(18,44,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(19,206,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(20,46,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(21,211,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(22,135,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(23,56,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(24,207,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(25,210,'Spree::Country',1,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(26,49,'Spree::Country',2,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(27,204,'Spree::Country',2,'2013-11-07 21:47:20','2013-11-07 21:47:20'),(28,177,'Spree::Country',3,'2013-12-23 21:26:05','2013-12-23 21:26:05'),(29,125,'Spree::Country',3,'2013-12-23 21:26:05','2013-12-23 21:26:05');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2013-11-07 21:47:19','2013-11-07 21:47:19'),(2,'North America','USA + Canada',0,2,'2013-11-07 21:47:19','2013-11-07 21:47:19'),(3,'International','',0,2,'2013-12-23 21:26:05','2013-12-23 21:26:05');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `curriculum_vitae` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,'Alison Gibb','Brand Manager','alison.gibb@angostura.eu','alison_getty_thumb.jpg','International Brand Manager - Angostura','Alison joined Angostura in May 2007 from Morrison Bowmore Distillers Ltd where she was Communications and PR Manager. While at Morrison Bowmore, Alison was responsible for the re-launch of Bowmore Malt Whisky from a communications perspective.\r\n\r\nBefore joining Morrison Bowmore Distillers she spent two years at Baxters Food Group as Communications Manager. Working across the group brands including Baxters, Garner’s and Simply Delicious, Alison was responsible for PR, corporate communications and crisis management.\r\n\r\nPrior to this, Alison spent four years at Motorola, where she worked initially in project management before moving into new product development and product marketing in the automotive electronics sector.\r\n\r\nEducated at The Robert Gordon University, Aberdeen, Alison graduated with a 1st Class Honours in Technology & Business and a MSC in Information Systems.','2013-11-29 20:23:06','2013-11-29 20:24:11'),(2,'Jillian Kalloo','Brand Officer - Marketing','jkalloo@angostura.com','jillian.jpg','','','2013-11-29 21:06:05','2013-11-29 21:06:05');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  KEY `index_users_on_address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xnet.angostura@gmail.com','$2a$10$TT8DlHQUp5Q0EbD903AQUOZ5tGEr1uIgDJU1NvRsHB7JA1x.inCrm',NULL,NULL,NULL,56,'2014-01-17 16:17:40','2014-01-17 15:18:16','190.213.8.123','190.213.8.123','2013-11-21 21:26:56','2014-01-21 21:14:56',11,'d9356a43a8f76b31399e6d593e3265bcebb05a38520bb2c6',NULL,NULL,'Diosan','Xaquerry',NULL,'2014-01-21 19:24:57',NULL),(2,'user.axnet@gmail.com','$2a$10$Zhkv6xsqiZYzOvm3iokCmebT1Y6.636iiZ9AuOybTd2UXypSxZFOe',NULL,NULL,'2014-01-21 21:17:51',163,'2014-01-23 19:33:08','2014-01-21 21:17:51','190.213.8.123','190.213.8.123','2013-12-05 16:42:04','2014-01-23 19:33:08',26,'d9356a43a8f76b31399e6d593e3265bcebb05a38520bb2c6',NULL,NULL,NULL,NULL,NULL,'2014-01-21 19:24:57',NULL),(21,'dion.santana@gmail.com','$2a$10$vBu/RSAt.2agV5Fc6cJDy.VE8KtPCxrFiHMM4HSCB4TQf1VmJe9PK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-01-23 21:30:08','2014-01-23 21:30:08',NULL,NULL,NULL,NULL,'Dion','Santana',NULL,NULL,NULL);
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

-- Dump completed on 2014-01-24  8:38:33
