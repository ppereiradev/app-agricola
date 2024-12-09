-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_contenttype','Can add content type'),(14,4,'change_contenttype','Can change content type'),(15,4,'delete_contenttype','Can delete content type'),(16,4,'view_contenttype','Can view content type'),(17,5,'add_session','Can add session'),(18,5,'change_session','Can change session'),(19,5,'delete_session','Can delete session'),(20,5,'view_session','Can view session'),(21,6,'add_user','Can add user'),(22,6,'change_user','Can change user'),(23,6,'delete_user','Can delete user'),(24,6,'view_user','Can view user'),(25,7,'add_product','Can add product'),(26,7,'change_product','Can change product'),(27,7,'delete_product','Can delete product'),(28,7,'view_product','Can view product'),(29,8,'add_sale','Can add sale'),(30,8,'change_sale','Can change sale'),(31,8,'delete_sale','Can delete sale'),(32,8,'view_sale','Can view sale'),(33,9,'add_cart','Can add cart'),(34,9,'change_cart','Can change cart'),(35,9,'delete_cart','Can delete cart'),(36,9,'view_cart','Can view cart'),(37,10,'add_cartitem','Can add cart item'),(38,10,'change_cartitem','Can change cart item'),(39,10,'delete_cartitem','Can delete cart item'),(40,10,'view_cartitem','Can view cart item');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cart` (
  `id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `buyer_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartitem`
--

DROP TABLE IF EXISTS `cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cartitem` (
  `id` varchar(0) DEFAULT NULL,
  `quantity` varchar(0) DEFAULT NULL,
  `subtotal` varchar(0) DEFAULT NULL,
  `cart_id` varchar(0) DEFAULT NULL,
  `product_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartitem`
--

LOCK TABLES `cart_cartitem` WRITE;
/*!40000 ALTER TABLE `cart_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` varchar(0) DEFAULT NULL,
  `object_id` varchar(0) DEFAULT NULL,
  `object_repr` varchar(0) DEFAULT NULL,
  `action_flag` varchar(0) DEFAULT NULL,
  `change_message` varchar(0) DEFAULT NULL,
  `content_type_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `action_time` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(9,'cart','cart'),(10,'cart','cartitem'),(4,'contenttypes','contenttype'),(7,'products','product'),(8,'sales','sale'),(5,'sessions','session'),(6,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(61) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-12-08'),(2,'contenttypes','0002_remove_content_type_name','2024-12-08'),(3,'auth','0001_initial','2024-12-08'),(4,'auth','0002_alter_permission_name_max_length','2024-12-08'),(5,'auth','0003_alter_user_email_max_length','2024-12-08'),(6,'auth','0004_alter_user_username_opts','2024-12-08'),(7,'auth','0005_alter_user_last_login_null','2024-12-08'),(8,'auth','0006_require_contenttypes_0002','2024-12-08'),(9,'auth','0007_alter_validators_add_error_messages','2024-12-08'),(10,'auth','0008_alter_user_username_max_length','2024-12-08'),(11,'auth','0009_alter_user_last_name_max_length','2024-12-08'),(12,'auth','0010_alter_group_name_max_length','2024-12-08'),(13,'auth','0011_update_proxy_permissions','2024-12-08'),(14,'auth','0012_alter_user_first_name_max_length','2024-12-08'),(15,'users','0001_initial','2024-12-08'),(16,'admin','0001_initial','2024-12-08'),(17,'admin','0002_logentry_remove_auto_add','2024-12-08'),(18,'admin','0003_logentry_add_action_flag_choices','2024-12-08'),(19,'users','0002_alter_user_role','2024-12-08'),(20,'users','0003_remove_user_address_remove_user_phone_and_more','2024-12-08'),(21,'users','0004_buyer_seller_alter_user_email_alter_user_groups_and_more','2024-12-08'),(22,'products','0001_initial','2024-12-08'),(23,'cart','0001_initial','2024-12-08'),(24,'cart','0002_alter_cart_buyer','2024-12-08'),(25,'cart','0003_alter_cart_buyer','2024-12-08'),(26,'products','0002_alter_product_seller','2024-12-08'),(27,'products','0003_alter_product_seller','2024-12-08'),(28,'products','0004_alter_product_image','2024-12-08'),(29,'sales','0001_initial','2024-12-08'),(30,'sales','0002_remove_sale_seller_alter_sale_cart','2024-12-08'),(31,'sessions','0001_initial','2024-12-08'),(32,'users','0005_delete_buyer_delete_seller','2024-12-08');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(0) DEFAULT NULL,
  `session_data` varchar(0) DEFAULT NULL,
  `expire_date` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_product` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(14) DEFAULT NULL,
  `price` tinyint(4) DEFAULT NULL,
  `quantity_available` tinyint(4) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL,
  `seller_id` tinyint(4) DEFAULT NULL,
  `image` varchar(139) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'Alface',5,10,'2024-12-08','2024-12-08',2,'https://acdn.mitiendanube.com/stores/746/397/products/alface_americana11-7c616220db963bc60e15220186949640-640-0.jpg'),(2,'Cenoura',3,10,'2024-12-08','2024-12-08',2,'https://mercadoorganico.com/6443-large_default/cenoura-organica-500g-osm.jpg'),(3,'Beterraba',6,10,'2024-12-08','2024-12-08',2,'https://www.frutiver.com.br/app/uploads/2022/10/beterraba.jpg'),(4,'Beringela',9,10,'2024-12-08','2024-12-08',2,'https://redeital.org/wp-content/uploads/2020/08/Prancheta-26-1.jpg'),(5,'Batata doce',9,10,'2024-12-08','2024-12-08',2,'https://mercadoorganico.com/6320-large_default/batata-doce-organica-500g-osm.jpg'),(6,'Batata Inglesa',6,10,'2024-12-08','2024-12-08',3,'https://cdn.awsli.com.br/2599/2599960/produto/261377217/batatinha-lavada-lisa-saco25kg-f0929be9-xlqkmey8uu-zskgewg1da-atfa6n6sr7.jpg'),(7,'Coentro',3,10,'2024-12-08','2024-12-08',3,'https://images.tcdn.com.br/img/img_prod/763396/coentro_157_1_20200320124409.jpg'),(8,'Cebolinha',3,10,'2024-12-08','2024-12-08',3,'https://www.amigao.com/media/catalog/product/C/e/Cebolinha_Verde_Unidade_0000000028707_89.jpg'),(9,'Salsinha',3,10,'2024-12-08','2024-12-08',3,'https://adaptive-images.uooucdn.com.br/tr:w-1100,h-1594,c-at_max,pr-true,q-80/a22275-ogxythlxqt0/pv/b5/95/a5/f64626487ce3ccc8f594a96a3a.jpg'),(10,'Tomilho',7,10,'2024-12-08','2024-12-08',3,'https://sapucaia.com.br/wp-content/uploads/elementor/thumbs/tomilho-p18nnv6dqkfw0y1w3zder7qjiii6oc6nu8ve2a1lls.jpg'),(11,'Uva Thompson',12,10,'2024-12-09','2024-12-09',4,'https://52586.cdn.lojaquevende.com.br/static/52586/sku/frutas-uva-verde-sem-semente--p-1610106700609.png'),(12,'Uva Vitória',15,10,'2024-12-09','2024-12-09',4,'https://images.tcdn.com.br/img/img_prod/763396/uva_vitoria_595_1_d15e38825df951ec16c1beb14d28613c.jpg'),(13,'Morango',15,10,'2024-12-09','2024-12-09',4,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/PerfectStrawberry.jpg/220px-PerfectStrawberry.jpg'),(14,'Manga',6,10,'2024-12-09','2024-12-09',4,'https://static.mundoeducacao.uol.com.br/mundoeducacao/2021/05/manga.jpg'),(15,'Kiwi',10,10,'2024-12-09','2024-12-09',4,'https://upload.wikimedia.org/wikipedia/commons/b/b8/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg');
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_sale`
--

DROP TABLE IF EXISTS `sales_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_sale` (
  `id` varchar(0) DEFAULT NULL,
  `location` varchar(0) DEFAULT NULL,
  `total` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `cart_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_sale`
--

LOCK TABLES `sales_sale` WRITE;
/*!40000 ALTER TABLE `sales_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',32),('django_content_type',10),('auth_permission',40),('auth_group',0),('django_admin_log',0),('users_user',11),('products_product',15),('sales_sale',0);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(0) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(9) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL,
  `role` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$870000$QdtYvqusj2zOxscst7NpD7$ItMgu5udAla7pCBWXXuCOToDk1DE5M3i9+E/jJl9SiE=','',1,'admin','','','',1,1,'2024-12-08','2024-12-08','2024-12-08',''),(2,'teste123456789','',1,'vendedor1','Vendedor1','Agricola1','vendedor1@email.com',0,1,'2024-12-08','2024-12-08','2024-12-08','SELLER'),(3,'teste123456789','',1,'vendedor2','Vendedor2','Agricola2','vendedor2@email.com',0,1,'2024-12-08','2024-12-08','2024-12-08','SELLER'),(4,'teste123456789','',1,'vendedor3','Vendedor3','Agricola3','vendedor3@email.com',0,1,'2024-12-08','2024-12-08','2024-12-08','SELLER'),(7,'teste123456789','',1,'comprador1','Comprador1','Agricola1','comprador1@email.com',0,1,'2024-12-08','2024-12-08','2024-12-08','BUYER'),(8,'teste123456789','',1,'comprador2','Comprador2','Agricola2','comprador2@email.com',0,1,'2024-12-08','2024-12-08','2024-12-08','BUYER');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:47
