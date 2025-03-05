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

 Date: 05/03/2025 15:05:35
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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '<技术杂谈>文章的数据库表\'' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_tech_articles
-- ----------------------------
INSERT INTO `blog_tech_articles` VALUES (1, 1, 'C/C++测试文章标题1', 'C/C++测试文章内容1', 'https://haowallpaper.com/link/common/file/previewFileImg/15556743616106816', '2024-11-23 16:44:48', '2024-11-23 16:44:53', 0);
INSERT INTO `blog_tech_articles` VALUES (2, 1, 'C/C++测试文章标题2', 'C/C++测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691089397322048', '2024-11-26 21:51:22', '2024-11-26 21:51:26', 0);
INSERT INTO `blog_tech_articles` VALUES (3, 2, 'C#测试文章标题1', 'C#测试文章内容1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15430251672539456', '2024-12-02 21:51:24', '2024-12-02 21:51:15', 0);
INSERT INTO `blog_tech_articles` VALUES (4, 2, 'C#测试文章标题2', 'C#测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/786d50481e9c29b09d0ced4c83ca67f0786d50481e9c29b09d0ced4c83ca67f0', '2024-12-02 21:52:20', '2024-12-02 21:52:15', 0);
INSERT INTO `blog_tech_articles` VALUES (5, 3, 'Java测试文章标题1', 'Java测试文章内容1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691097845895488', '2024-12-05 14:03:33', '2024-12-05 14:03:35', 0);
INSERT INTO `blog_tech_articles` VALUES (6, 3, 'Java测试文章标题2', 'Java测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15500236980785472', '2024-12-05 14:05:49', '2024-12-05 14:05:51', 0);
INSERT INTO `blog_tech_articles` VALUES (7, 4, '前端测试文章标题1', '前端测试文章标题1', 'https://haowallpaper.com/link/common/file/getCroppingImg/15691092177686848', '2024-12-05 14:06:24', '2024-12-05 14:06:27', 0);
INSERT INTO `blog_tech_articles` VALUES (8, 4, '前端测试文章标题2', '前端测试文章内容2', 'https://haowallpaper.com/link/common/file/getCroppingImg/15053616164736320', '2024-12-05 14:07:00', '2024-12-05 14:07:03', 0);
INSERT INTO `blog_tech_articles` VALUES (17, 1, '1111', '<p>11111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:21:48', '2025-01-22 14:21:48', 0);
INSERT INTO `blog_tech_articles` VALUES (18, 2, '1111', '<p>1111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:40:00', '2025-01-22 14:40:00', 0);
INSERT INTO `blog_tech_articles` VALUES (19, 2, '1111', '<p>1111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:40:20', '2025-01-22 14:40:20', 0);
INSERT INTO `blog_tech_articles` VALUES (20, 3, '1111', '<p>111111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:44:29', '2025-01-22 14:44:29', 0);
INSERT INTO `blog_tech_articles` VALUES (21, 3, '1111', '<p>1111111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:45:50', '2025-01-22 14:45:50', 0);
INSERT INTO `blog_tech_articles` VALUES (22, 3, '1111', '<p>1111111</p>', 'https://haowallpaper.com/link/common/file/previewFileImg/15942630369381760', '2025-01-22 14:48:08', '2025-01-22 14:48:08', 0);

-- ----------------------------
-- Table structure for blog_tech_articles_types
-- ----------------------------
DROP TABLE IF EXISTS `blog_tech_articles_types`;
CREATE TABLE `blog_tech_articles_types`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '<技术杂谈>文章类型的数据库表' ROW_FORMAT = Dynamic;

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
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` int(0) DEFAULT NULL,
  `created_date` datetime(0) DEFAULT NULL,
  `updated_date` datetime(0) DEFAULT NULL,
  `delete_flag` tinyint(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_users
-- ----------------------------
INSERT INTO `blog_users` VALUES (1, 'admin', 'admin', '管理员', 0, '2025-03-04 13:43:46', '2025-03-04 13:43:49', 0);

SET FOREIGN_KEY_CHECKS = 1;
