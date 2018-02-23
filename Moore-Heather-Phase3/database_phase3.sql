-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: alchemortem
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `bill_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `billing_state_id_foreign` (`state_id`),
  CONSTRAINT `billing_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'https://i.imgur.com/tvtH4G7.jpg'),(2,'https://i.imgur.com/hBTIGR7.jpg'),(3,'https://i.imgur.com/Cr3jKd1.jpg'),(4,'https://i.imgur.com/FRY8IdW.jpg'),(5,'https://i.imgur.com/10Eo23d.jpg'),(6,'https://i.imgur.com/55tKUXW.jpg'),(7,'https://i.imgur.com/RgxRb0Z.jpg'),(8,'https://i.imgur.com/zbBrZJL.jpg'),(9,'https://i.imgur.com/5BfMPm5.jpg'),(10,'https://i.imgur.com/kIcM6Hc.jpg'),(11,'https://i.imgur.com/V1mCYq3.jpg'),(12,'https://i.imgur.com/qsHA6Mh.jpg'),(13,'https://i.imgur.com/HvU4VCt.jpg'),(14,'https://i.imgur.com/X8HWyHv.jpg'),(15,'https://i.imgur.com/ONBhVe9.jpg'),(16,'https://i.imgur.com/Ci69uSq.jpg'),(17,'https://i.imgur.com/cdIbh8N.jpg'),(18,'https://i.imgur.com/xoIzl6k.jpg'),(19,'https://i.imgur.com/WxbdzvJ.jpg'),(20,'https://i.imgur.com/286cwqu.jpg'),(21,'https://i.imgur.com/8xb2kN8.jpg'),(22,'https://i.imgur.com/BexrRZ6.jpg'),(23,'https://i.imgur.com/z0SETjI.jpg'),(24,'https://i.imgur.com/Bn6dTMe.jpg'),(25,'https://i.imgur.com/f5Ik2pz.jpg'),(26,'https://i.imgur.com/WBEdv4M.jpg'),(27,'https://i.imgur.com/wCQLm8q.jpg'),(28,'https://i.imgur.com/39FmveJ.jpg'),(29,'https://i.imgur.com/2BaADQm.jpg'),(30,'https://i.imgur.com/8XuTcfY.jpg'),(31,'https://i.imgur.com/cdIbh8N.jpg'),(32,'https://i.imgur.com/E8aRSzK.jpg'),(33,'https://i.imgur.com/WxbdzvJ.jpg'),(34,'https://i.imgur.com/PhXdSgB.jpg'),(35,'https://i.imgur.com/8Z9fDOd.jpg'),(36,'https://i.imgur.com/yEdUETm.jpg'),(37,'https://i.imgur.com/tkWHtgh.jpg'),(38,'https://i.imgur.com/x2mhKNr.jpg'),(39,'https://i.imgur.com/3ZWTyLb.jpg'),(40,'https://i.imgur.com/dvj0aBI.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_02_05_162658_create_states_table',1),(2,'2018_02_06_163237_create_billing_table',1),(3,'2018_02_06_163332_create_shipping_table',1),(4,'2018_02_06_163516_create_payment_table',1),(5,'2018_02_06_163552_create_roles_table',1),(6,'2018_02_06_163819_create_users_table',1),(7,'2018_02_06_163918_create_password_resets_table',1),(8,'2018_02_06_164155_create_orders_table',1),(9,'2018_02_12_193757_create_images_table',1),(10,'2018_02_13_163426_create_products_table',1),(11,'2018_02_13_164246_create_order_lines_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_lines` (
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  KEY `order_lines_order_id_foreign` (`order_id`),
  KEY `order_lines_product_id_foreign` (`product_id`),
  CONSTRAINT `order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `shipDate` date NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `payment_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_payment_id_foreign` (`payment_id`),
  KEY `orderDate` (`orderDate`),
  CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Stripe'),(2,'Square');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` int(10) unsigned NOT NULL,
  `image2` int(10) unsigned NOT NULL,
  `image3` int(10) unsigned DEFAULT NULL,
  `image4` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `materials` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `products_image1_foreign` (`image1`),
  KEY `products_image2_foreign` (`image2`),
  KEY `products_image3_foreign` (`image3`),
  KEY `products_image4_foreign` (`image4`),
  KEY `productName` (`productName`),
  CONSTRAINT `products_image1_foreign` FOREIGN KEY (`image1`) REFERENCES `images` (`image_id`),
  CONSTRAINT `products_image2_foreign` FOREIGN KEY (`image2`) REFERENCES `images` (`image_id`),
  CONSTRAINT `products_image3_foreign` FOREIGN KEY (`image3`) REFERENCES `images` (`image_id`),
  CONSTRAINT `products_image4_foreign` FOREIGN KEY (`image4`) REFERENCES `images` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Snake Rib Earrings - Black',1,2,3,NULL,'These snake rib earrings have been dyed black and are attached with brass french hooks. There are 5 ribs on each earring.','snake ribs, brass french hooks','2.5 in','earrings',25),(2,'Snake Rib Earrings - Blue',4,5,NULL,NULL,'These snake rib earrings have been dyed blue and are attached with silver french hooks. There are 2 ribs on each earring with a small vertebrae just below the hook.','snake ribs, vertebrae, silver french hooks','2.5 in','earrings',20),(3,'Ombre Green Bead Vertebrae Hoops',6,7,NULL,NULL,'These hoops have multiple vertebrae separated by ombre style green beads.','vertebrae, silver french hooks, green beads, silver hoops','45mm','earrings',30),(4,'Jawbone Earrings',8,9,10,NULL,'These jawbone earrings are attached by chain with brass french hooks.','jawbone, brass french hooks, brass chain','3.75 in','earrings',25),(5,'Large Vertebrae Hoops',11,12,13,14,'These vertebrae hoops have multiple vertebrae per hoop. The earrings have a leverback closing.','vertebrae, leverback silver hoops','70mm','earrings',35),(6,'Medium Vertebrae Hoops - Purple',15,16,17,NULL,'These silver hoops encircle a single vertebrae per earring topped by ombre purple beads. There hoops include silver french hooks.','vertebrae, silver french hooks, purple beads, silver hoops','45mm','earrings',30),(7,'Medium Vertebrae Hoops',18,19,20,NULL,'These vertebrae are attached with silver french hooks. There are multiple vertebrae on each earring.','vertebrae, silver french hooks, silver hoops','45mm','earrings',30),(8,'Medium Vertabrae Hoops - Black',21,22,23,NULL,'These vertebrae have been dyed black and are attached with silver french hooks. There are multiple vertebrae on each earring.','vertebrae, silver french hooks, silver hoops','45mm','earrings',30),(9,'African Porcupine Quill Earrings',24,25,NULL,NULL,'These earrings hold one black porcupine quill per earring. The quills are topped with two aqua blue beads and silver french hooks.','quills, silver french hooks','5 in','earrings',20),(10,'Snake Rib Earrings - Rainbow',26,27,28,NULL,'These snake rib earrings have been dyed multiple colors on the tips and are attached with brass french hooks. There are 5 ribs on each earring.','snake ribs, silver french hooks','3 in','earrings',25),(11,'Small 4 Vertebrae Hoops',29,30,31,NULL,'These brass hoops encircle 4 vertebrae. The hoops include brass french hooks','vertebrae, brass french hooks, brass hoops','30mm','earrings',25),(12,'Small Vertebrae Earrings',32,33,34,NULL,'These vertebrae are attached with brass french hooks. There are multiple vertebrae on each earring.','vertebrae, brass french hooks, brass hoops','30mm','earrings',25),(13,'Stingray Barb Earrings',35,36,37,NULL,'These earrings hold one stingray barb per earring. They are held by brass french hooks.','stingray barb, brass french hooks','5.5 in','earrings',20),(14,'Snake Rib Earrings',38,39,40,NULL,'These snake rib earrings are attached with brass french hooks. There is one rib on each earring with a small vertebrae just below the hook.','snake rib, vertebrae, brass french hooks','3 in','earrings',20);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'member');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `ship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `ship_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ship_id`),
  KEY `shipping_state_id_foreign` (`state_id`),
  CONSTRAINT `shipping_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stateAbbrev` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'AL','Alabama'),(2,'AK','Alaska'),(3,'AZ','Arizona'),(4,'AR','Arkansas'),(5,'CA','California'),(6,'CO','Colorado'),(7,'CT','Connecticut'),(8,'DE','Delaware'),(9,'FL','Florida'),(10,'GA','Georgia'),(11,'HI','Hawaii'),(12,'ID','Idaho'),(13,'IL','Illinois'),(14,'IN','Indiana'),(15,'IA','Iowa'),(16,'KS','Kansas'),(17,'KY','Kentucky'),(18,'LA','Louisiana'),(19,'ME','Maine'),(20,'MD','Maryland'),(21,'MA','Massachusetts'),(22,'MI','Michigan'),(23,'MN','Minnesota'),(24,'MS','Mississippi'),(25,'MO','Missouri'),(26,'MT','Montana'),(27,'NE','Nebraska'),(28,'NV','Nevada'),(29,'NH','New Hampshire'),(30,'NJ','New Jersey'),(31,'NM','New Mexico'),(32,'NY','New York'),(33,'NC','North Carolina'),(34,'ND','North Dakota'),(35,'OH','Ohio'),(36,'OK','Oklahoma'),(37,'OR','Oregon'),(38,'PA','Pennsylvania'),(39,'RI','Rhode Island'),(40,'SC','South Carolina'),(41,'SD','South Dakota'),(42,'TN','Tennessee'),(43,'TX','Texas'),(44,'UT','Utah'),(45,'VT','Vermont'),(46,'VA','Virgina'),(47,'WA','Washington'),(48,'WV','West Virgina'),(49,'WI','Wisconsin'),(50,'WY','Wyoming'),(51,'GU','Guam'),(52,'PR','Puerto Rico'),(53,'VI','Virgin Islands');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_fName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_lName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_id` int(10) unsigned NOT NULL,
  `ship_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_user_email_unique` (`user_email`),
  KEY `users_bill_id_foreign` (`bill_id`),
  KEY `users_ship_id_foreign` (`ship_id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `billing` (`bill_id`) ON DELETE CASCADE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `users_ship_id_foreign` FOREIGN KEY (`ship_id`) REFERENCES `shipping` (`ship_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'alchemortem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-21 17:35:16
