/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_train_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:11:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for train_type
-- ----------------------------
DROP TABLE IF EXISTS `train_type`;
CREATE TABLE `train_type`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `average_speed` int NULL DEFAULT NULL,
  `confort_class` int NULL DEFAULT NULL,
  `economy_class` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train_type
-- ----------------------------
INSERT INTO `train_type` VALUES ('b907f649-5b62-4240-bcc3-23f54d0b3ec0', 250, 2147483647, 2147483647, 'GaoTieOne');
INSERT INTO `train_type` VALUES ('c508d3dc-f3de-46f5-a950-62c84368ed82', 200, 2147483647, 2147483647, 'GaoTieTwo');
INSERT INTO `train_type` VALUES ('04047111-0553-4d1a-8610-8ca052207586', 180, 2147483647, 2147483647, 'DongCheOne');
INSERT INTO `train_type` VALUES ('39bd89b6-f042-4607-a8ba-735ab733b9a4', 120, 2147483647, 2147483647, 'ZhiDa');
INSERT INTO `train_type` VALUES ('4a829a1f-e69c-46f4-ad51-75db3ea8ca36', 120, 2147483647, 2147483647, 'TeKuai');
INSERT INTO `train_type` VALUES ('f77b271a-ba08-4519-bd51-ad1de991a2bc', 90, 2147483647, 2147483647, 'KuaiSu');

SET FOREIGN_KEY_CHECKS = 1;
