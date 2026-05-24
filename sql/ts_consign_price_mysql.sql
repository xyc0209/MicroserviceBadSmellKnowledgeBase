/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_consign_price_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:10:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for consign_price
-- ----------------------------
DROP TABLE IF EXISTS `consign_price`;
CREATE TABLE `consign_price`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `beyond_price` double NULL DEFAULT NULL,
  `idx` int NULL DEFAULT NULL,
  `initial_price` double NULL DEFAULT NULL,
  `initial_weight` double NULL DEFAULT NULL,
  `within_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_lgier9psog5spnqru5luet1sv`(`idx`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consign_price
-- ----------------------------
INSERT INTO `consign_price` VALUES ('64d29c42-8ff5-4d32-ab70-368bb3da3077', 4, 0, 8, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
