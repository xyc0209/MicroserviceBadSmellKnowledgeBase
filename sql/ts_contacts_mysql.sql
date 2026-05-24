/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_contacts_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:10:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_type` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('21003d85-580a-4206-bae6-4e1ce3f14bc4', '4d2a46c7-71cb-4cf1-b5bb-b68406d9da6f', 'DocumentNumber_One', 1, 'Contacts_One', 'ContactsPhoneNum_One');
INSERT INTO `contacts` VALUES ('3e9f849e-3dfd-4c12-b0ae-0c0e772fd8c4', '4d2a46c7-71cb-4cf1-b5bb-b68406d9da6f', 'DocumentNumber_Two', 1, 'Contacts_Two', 'ContactsPhoneNum_Two');
INSERT INTO `contacts` VALUES ('3e5a07f4-4a9c-44cd-9997-1ce77883fc40', '3e5a07f4-4a9c-44cd-9997-1ce77883fc45', '371302199202064332', 0, 'xyc', '17862563245');
INSERT INTO `contacts` VALUES ('ee59a434-e4f3-4724-986c-edf61428e98e', 'fe1b6b5f-710e-4836-abdc-42445b60c231', '371302199202064333', 0, 'ywp', '371302199202064332');
INSERT INTO `contacts` VALUES ('499c056c-d329-470b-89d6-e02a199e18fd', 'fe1b6b5f-710e-4836-abdc-42445b60c230', '371302199202064334', 0, 'zzz', '371302199202064332');
INSERT INTO `contacts` VALUES ('7d4cb93c-9c17-4785-96f3-49c82e8a9ef2', 'fe1b6b5f-710e-4836-abdc-42445b60c240', '371302199202064395', 0, 'zzz', '371302199202064332');

SET FOREIGN_KEY_CHECKS = 1;
