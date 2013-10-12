# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: fitv4
# Generation Time: 2013-10-03 20:44:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table brands
# ------------------------------------------------------------

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`)
VALUES
  (1,'7 for All Mankind',NULL,NULL),
  (2,'Calvin Klein',NULL,NULL),
  (3,'Big Star',NULL,NULL),
  (4,'BKE',NULL,NULL),
  (5,'Billabong',NULL,NULL),
  (6,'Cherokee',NULL,NULL),
  (7,'Brooks',NULL,NULL),
  (8,'Carhartt',NULL,NULL),
  (9,'Columbia',NULL,NULL),
  (10,'Diesel',NULL,NULL),
  (11,'DKNY',NULL,NULL),
  (12,'Eddie Bauer',NULL,NULL),
  (13,'Ex Officio',NULL,NULL),
  (14,'Express',NULL,NULL),
  (15,'Fossil',NULL,NULL),
  (16,'Gap',NULL,NULL),
  (17,'Gramicci',NULL,NULL);

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

LOCK TABLES `pants` WRITE;
/*!40000 ALTER TABLE `pants` DISABLE KEYS */;

INSERT INTO `pants` (`id`, `name`, `year`, `style`, `price_range`, `pant_type`, `leg_cut`, `body_shape`, `rise`, `exact_rise`, `brand_id`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`)
VALUES
  (1,'Skinny Straight Leg Dark Wash',2013,NULL,NULL,1,2,2,3,7,1,'2013-10-11 19:14:36','2013-10-11 19:31:57','skinny_straight_7.jpeg','image/jpeg',67248,'2013-10-11 19:31:56'),
  (2,'Skinny Bootcut NY Dark Wash',2013,NULL,NULL,1,3,1,2,7,1,'2013-10-11 19:31:41','2013-10-11 19:31:41','boot_cut.jpeg','image/jpeg',69246,'2013-10-11 19:31:41'),
  (3,'A-Pocket Flare, Nouveau NY Wash',2013,NULL,NULL,1,6,1,2,7,1,'2013-10-11 19:35:22','2013-10-11 19:35:22','a-pocket_7.jpeg','image/jpeg',62813,'2013-10-11 19:35:22');

/*!40000 ALTER TABLE `pants` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `store_links` WRITE;
/*!40000 ALTER TABLE `store_links` DISABLE KEYS */;

INSERT INTO `store_links` (`id`, `name`, `source`, `url`, `pant_id`, `created_at`, `updated_at`)
VALUES
  (1,'Macys Test',NULL,'http://www1.macys.com/shop/product/7-for-all-mankind-jeans-skinny-straight-leg-dark-wash?ID=643573&CategoryID=3111&RVI=PDP_2',1,'2013-10-11 21:49:46','2013-10-11 23:10:17'),
  (2,'Macy\'s',NULL,'http://www1.macys.com/shop/product/7-for-all-mankind-jeans-a-pocket-flare-nouveau-ny-wash?ID=645606&CategoryID=3111&LinkType=PDPZ1',3,'2013-10-11 21:52:09','2013-10-11 21:52:09'),
  (3,'Macys',NULL,'http://www1.macys.com/shop/product/7-for-all-mankind-jeans-skinny-bootcut-ny-dark-wash?ID=643574&CategoryID=3111&RVI=PDP_1',2,'2013-10-11 22:27:53','2013-10-11 22:27:53');

/*!40000 ALTER TABLE `store_links` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;