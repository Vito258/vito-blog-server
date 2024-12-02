-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_tech_articles`
--

DROP TABLE IF EXISTS `blog_tech_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_tech_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `type_id` int(11) NOT NULL COMMENT '文章的类型ID',
  `title` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '文章标题',
  `content` text COLLATE utf8_bin NOT NULL COMMENT '文章内容',
  `cover_image_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章封面图像的URL',
  `created_date` datetime NOT NULL COMMENT '文章创建的日期',
  `updated_date` datetime NOT NULL COMMENT '文章修改的日期',
  `delete_flag` tinyint(1) NOT NULL COMMENT '是否删除的FLAG',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='<技术杂谈>文章的数据库表''';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tech_articles`
--

LOCK TABLES `blog_tech_articles` WRITE;
/*!40000 ALTER TABLE `blog_tech_articles` DISABLE KEYS */;
INSERT INTO `blog_tech_articles` VALUES (1,1,'C/C++测试文章标题1','C/C++测试文章内容1','http://hbimg.huaban.com/a54adad260fad3c65d90212f2ca2eb39b397533c100a6b-MBBJn8','2024-11-23 16:44:48','2024-11-23 16:44:53',0),(2,1,'C/C++测试文章标题2','C/C++测试文章内容1','http://hbimg.huaban.com/a54adad260fad3c65d90212f2ca2eb39b397533c100a6b-MBBJn8','2024-11-26 21:51:22','2024-11-26 21:51:26',0),(3,2,'C#测试文章标题1','C#测试文章内容2','http://hbimg.huaban.com/a54adad260fad3c65d90212f2ca2eb39b397533c100a6b-MBBJn8','2024-12-02 21:51:24','2024-12-02 21:51:15',0),(4,2,'C#测试文章标题2','C#测试文章内容2','http://hbimg.huaban.com/a54adad260fad3c65d90212f2ca2eb39b397533c100a6b-MBBJn8','2024-12-02 21:52:20','2024-12-02 21:52:15',0);
/*!40000 ALTER TABLE `blog_tech_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tech_articles_types`
--

DROP TABLE IF EXISTS `blog_tech_articles_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_tech_articles_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='<技术杂谈>文章类型的数据库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tech_articles_types`
--

LOCK TABLES `blog_tech_articles_types` WRITE;
/*!40000 ALTER TABLE `blog_tech_articles_types` DISABLE KEYS */;
INSERT INTO `blog_tech_articles_types` VALUES (1,'C/C++',0),(2,'C#',0),(3,'Java',0),(4,'前端',0);
/*!40000 ALTER TABLE `blog_tech_articles_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_users`
--

DROP TABLE IF EXISTS `blog_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_users` (
  `id` int(11) DEFAULT NULL,
  `username` longtext COLLATE utf8_bin,
  `password` longtext COLLATE utf8_bin,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_name` longtext COLLATE utf8_bin,
  KEY `idx_blog_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_users`
--

LOCK TABLES `blog_users` WRITE;
/*!40000 ALTER TABLE `blog_users` DISABLE KEYS */;
INSERT INTO `blog_users` VALUES (1,'admin','admin',NULL,NULL,NULL,NULL),(1,NULL,NULL,'2024-11-25 22:56:01.702','2024-11-25 22:56:01.702',NULL,''),(1,NULL,NULL,'2024-11-26 20:22:37.850','2024-11-26 20:22:37.850',NULL,''),(1,NULL,NULL,'2024-11-26 20:22:57.726','2024-11-26 20:22:57.726',NULL,''),(1,NULL,NULL,'2024-11-26 20:41:52.187','2024-11-26 20:41:52.187',NULL,''),(1,NULL,NULL,'2024-11-26 20:45:35.681','2024-11-26 20:45:35.681',NULL,''),(1,NULL,NULL,'2024-11-26 20:46:24.865','2024-11-26 20:46:24.865',NULL,''),(1,NULL,NULL,'2024-11-26 20:46:48.586','2024-11-26 20:46:48.586',NULL,''),(1,NULL,NULL,'2024-11-26 20:46:48.653','2024-11-26 20:46:48.653',NULL,''),(1,NULL,NULL,'2024-11-26 20:47:09.909','2024-11-26 20:47:09.909',NULL,''),(1,NULL,NULL,'2024-11-26 20:47:09.969','2024-11-26 20:47:09.969',NULL,''),(1,NULL,NULL,'2024-11-26 20:47:10.255','2024-11-26 20:47:10.255',NULL,''),(1,NULL,NULL,'2024-11-26 20:47:10.279','2024-11-26 20:47:10.279',NULL,''),(1,NULL,NULL,'2024-11-26 20:47:56.348','2024-11-26 20:47:56.348',NULL,''),(1,NULL,NULL,'2024-11-26 20:48:08.709','2024-11-26 20:48:08.709',NULL,''),(1,NULL,NULL,'2024-11-26 20:49:07.130','2024-11-26 20:49:07.130',NULL,''),(1,'',NULL,'2024-11-26 20:55:06.758','2024-11-26 20:55:06.758',NULL,NULL),(1,'','','2024-11-26 20:56:49.104','2024-11-26 20:56:49.104',NULL,NULL),(1,'','','2024-11-26 21:04:37.335','2024-11-26 21:04:37.335',NULL,NULL),(1,'','','2024-11-26 21:16:18.533','2024-11-26 21:16:18.533',NULL,NULL),(1,'','','2024-11-26 21:16:50.906','2024-11-26 21:16:50.906',NULL,NULL),(1,'','','2024-11-26 21:18:35.304','2024-11-26 21:18:35.304',NULL,NULL),(1,'','','2024-11-27 21:50:17.371','2024-11-27 21:50:17.371',NULL,NULL),(1,'','','2024-12-02 21:44:26.508','2024-12-02 21:44:26.508',NULL,NULL);
/*!40000 ALTER TABLE `blog_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 22:05:42
