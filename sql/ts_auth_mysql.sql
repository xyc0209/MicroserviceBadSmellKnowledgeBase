/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_auth_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:09:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('4d2a46c7-71cb-4cf1-b5bb-b68406d9da6f', '$2a$10$3jwwxHRM.kz8eCOluSq8JOIUvcKiByUhixzmodV17N.Di5D6DI1wa', 'fdse_microservice');
INSERT INTO `auth_user` VALUES ('df328c54-188b-4782-828f-dce6c688e22f', '$2a$10$.A20CPs/ojZjg1kS/yxF5Osqw1rp87zj1/Lo5Q.0d5elFmkydm1lO', 'admin');
INSERT INTO `auth_user` VALUES ('3e5a07f4-4a9c-44cd-9997-1ce77883fc45', '$2a$10$7/jgAp9WarntRrpTiv0KPuVajgWyCLJSlmEIqmyhOISWw6T4zxuUG', 'xyc');
INSERT INTO `auth_user` VALUES ('fe1b6b5f-710e-4836-abdc-42445b60c231', '$2a$10$2I6iYGug.eJFiN7fPlbco.0f9YukMThc3frYy/5FI5yNeyGSfugg6', 'ywp');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `FKmdtdu7txekccv58vkr6emnl1m`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('4d2a46c7-71cb-4cf1-b5bb-b68406d9da6f', 'ROLE_USER');
INSERT INTO `user_roles` VALUES ('df328c54-188b-4782-828f-dce6c688e22f', 'ROLE_ADMIN');
INSERT INTO `user_roles` VALUES ('3e5a07f4-4a9c-44cd-9997-1ce77883fc45', 'ROLE_ADMIN');
INSERT INTO `user_roles` VALUES ('fe1b6b5f-710e-4836-abdc-42445b60c231', 'ROLE_USER');

SET FOREIGN_KEY_CHECKS = 1;
