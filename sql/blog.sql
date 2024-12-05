/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 05/12/2024 17:21:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_tech_articles
-- ----------------------------
DROP TABLE IF EXISTS `blog_tech_articles`;
CREATE TABLE `blog_tech_articles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `type_id` int(0) NOT NULL COMMENT '文章的类型ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文章标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文章内容',
  `cover_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文章封面图像的URL',
  `created_date` datetime(0) NOT NULL COMMENT '文章创建的日期',
  `updated_date` datetime(0) NOT NULL COMMENT '文章修改的日期',
  `delete_flag` tinyint(1) NOT NULL COMMENT '是否删除的FLAG',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '<技术杂谈>文章的数据库表\'' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_tech_articles
-- ----------------------------
INSERT INTO `blog_tech_articles` VALUES (1, 1, 'C/C++测试文章标题1', 'C/C++测试文章内容1', 'https://haowallpaper.com/link/common/file/previewFileImg/15556743616106816', '2024-11-23 16:44:48', '2024-11-23 16:44:53', 0);
INSERT INTO `blog_tech_articles` VALUES (2, 1, 'C/C++测试文章标题2', 'C/C++测试文章内容1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691089397322048', '2024-11-26 21:51:22', '2024-11-26 21:51:26', 0);
INSERT INTO `blog_tech_articles` VALUES (3, 2, 'C#测试文章标题1', 'C#测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15430251672539456', '2024-12-02 21:51:24', '2024-12-02 21:51:15', 0);
INSERT INTO `blog_tech_articles` VALUES (4, 2, 'C#测试文章标题2', 'C#测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/786d50481e9c29b09d0ced4c83ca67f0786d50481e9c29b09d0ced4c83ca67f0', '2024-12-02 21:52:20', '2024-12-02 21:52:15', 0);
INSERT INTO `blog_tech_articles` VALUES (5, 3, 'Java测试文章标题1', 'Java测试文章内容1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691097845895488', '2024-12-05 14:03:33', '2024-12-05 14:03:35', 0);
INSERT INTO `blog_tech_articles` VALUES (6, 3, 'Java测试文章标题2', 'Java测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15500236980785472', '2024-12-05 14:05:49', '2024-12-05 14:05:51', 0);
INSERT INTO `blog_tech_articles` VALUES (7, 4, '前端测试文章标题1', '前端测试文章标题1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691092177686848', '2024-12-05 14:06:24', '2024-12-05 14:06:27', 0);
INSERT INTO `blog_tech_articles` VALUES (8, 4, '前端测试文章标题2', '前端测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15053616164736320', '2024-12-05 14:07:00', '2024-12-05 14:07:03', 0);

-- ----------------------------
-- Table structure for blog_tech_articles_types
-- ----------------------------
DROP TABLE IF EXISTS `blog_tech_articles_types`;
CREATE TABLE `blog_tech_articles_types`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '<技术杂谈>文章类型的数据库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_tech_articles_types
-- ----------------------------
INSERT INTO `blog_tech_articles_types` VALUES (1, 'C/C++', 0);
INSERT INTO `blog_tech_articles_types` VALUES (2, 'C#', 0);
INSERT INTO `blog_tech_articles_types` VALUES (3, 'Java', 0);
INSERT INTO `blog_tech_articles_types` VALUES (4, '前端', 0);

-- ----------------------------
-- Table structure for blog_users
-- ----------------------------
DROP TABLE IF EXISTS `blog_users`;
CREATE TABLE `blog_users`  (
  `id` int(0) DEFAULT NULL,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  INDEX `idx_blog_users_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_users
-- ----------------------------
INSERT INTO `blog_users` VALUES (1, 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 13:48:43.228', '2024-12-03 13:48:43.228', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 14:09:00.656', '2024-12-03 14:09:00.656', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 14:09:52.130', '2024-12-03 14:09:52.130', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 14:25:07.273', '2024-12-03 14:25:07.273', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 14:31:58.825', '2024-12-03 14:31:58.825', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-03 14:33:33.573', '2024-12-03 14:33:33.573', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 10:34:55.011', '2024-12-05 10:34:55.011', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 10:57:03.059', '2024-12-05 10:57:03.059', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 10:58:12.005', '2024-12-05 10:58:12.005', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 11:29:43.986', '2024-12-05 11:29:43.986', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 11:53:51.387', '2024-12-05 11:53:51.387', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 13:33:48.784', '2024-12-05 13:33:48.784', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 13:42:09.225', '2024-12-05 13:42:09.225', NULL, NULL);
INSERT INTO `blog_users` VALUES (1, '', '', '2024-12-05 13:59:41.015', '2024-12-05 13:59:41.015', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
