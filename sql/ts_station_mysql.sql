/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_station_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:11:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for station
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stay_time` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_gnneuc0peq2qi08yftdjhy7ok`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station
-- ----------------------------
INSERT INTO `station` VALUES ('10a64b39-9bac-45d8-a938-8493d4a279e5', 'nanjing', 8);
INSERT INTO `station` VALUES ('35870294-42d1-4464-8e1e-b8ba2125d1cd', 'suzhou', 3);
INSERT INTO `station` VALUES ('3bf415e3-00e1-4fab-90e4-4cc150e4ac64', 'xuzhou', 7);
INSERT INTO `station` VALUES ('43d7e9e1-bbff-4e08-870a-2cac18ab1b8e', 'beijing', 10);
INSERT INTO `station` VALUES ('5dc47912-601a-4b51-990e-bb72bbd5b17a', 'jiaxingnan', 2);
INSERT INTO `station` VALUES ('790b257f-5abe-48ab-8bbe-8d329bcc0169', 'zhenjiang', 2);
INSERT INTO `station` VALUES ('8e610dc1-a210-47a8-b278-b6feed1236af', 'taiyuan', 5);
INSERT INTO `station` VALUES ('9b0abda1-e6b7-43e8-a82d-e2b5301ec302', 'shanghaihongqiao', 10);
INSERT INTO `station` VALUES ('be2b303c-b808-459f-a2ff-e1639e11f555', 'shanghai', 10);
INSERT INTO `station` VALUES ('d0dd4b6e-bbf7-48a3-a599-60cd84838e71', 'hangzhou', 9);
INSERT INTO `station` VALUES ('e34cfe24-4111-4cf6-ac79-520860c41bb0', 'wuxi', 3);
INSERT INTO `station` VALUES ('f609f199-41b9-4519-b0ef-bbad23b49995', 'jinan', 5);
INSERT INTO `station` VALUES ('fec3a90a-7ecd-4d04-ac59-51ba630385eb', 'shijiazhuang', 8);
INSERT INTO `station` VALUES ('fec3a90a-7ecd-4d04-ac59-51ba630385ef', 'taian', 5);
INSERT INTO `station` VALUES ('fec3a90a-7ecd-4d04-ac59-51ba630385eg', 'qingdao', 8);
INSERT INTO `station` VALUES ('fec3a90a-7ecd-4d04-ac59-51ba630385eh', 'yantai', 5);
INSERT INTO `station` VALUES ('fec3a90a-7ecd-4d04-ac59-51ba630385ei', 'weihai', 5);

SET FOREIGN_KEY_CHECKS = 1;
