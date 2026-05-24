/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.184.139阿里云知识库
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : 47.104.184.139:3306
 Source Schema         : ts_travel_mysql

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 20/05/2025 11:11:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for trip
-- ----------------------------
DROP TABLE IF EXISTS `trip`;
CREATE TABLE `trip`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `route_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_station_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stations_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `terminal_station_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `train_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trip
-- ----------------------------
INSERT INTO `trip` VALUES ('307bb1b0-37b3-4962-8e3b-ad62d7c78880', '2013-05-04 15:51:52', '92708982-77af-4318-be25-57ccb0ff69ad', 'shanghai', '2013-05-04 09:00:00', 'suzhou', 'taiyuan', 'GaoTieOne', '1234', 0);
INSERT INTO `trip` VALUES ('d8916010-5974-4c31-bae5-7b87c501c0a7', '2013-05-04 17:51:52', 'aefcef3f-3f42-46e8-afd7-6cb2a928bd3d', 'shanghai', '2013-05-04 12:00:00', 'suzhou', 'taiyuan', 'GaoTieOne', '1235', 0);
INSERT INTO `trip` VALUES ('c710e217-e224-487b-9beb-590f0a32ac66', '2013-05-04 20:51:52', 'a3f256c1-0e43-4f7d-9c21-121bf258101f', 'shanghai', '2013-05-04 14:00:00', 'suzhou', 'taiyuan', 'GaoTieOne', '1236', 0);
INSERT INTO `trip` VALUES ('5e185747-561a-4776-b552-04b40934bbac', '2013-05-04 17:21:52', '084837bb-53c8-4438-87c8-0321a4d09917', 'shanghai', '2013-05-04 08:00:00', 'suzhou', 'taiyuan', 'GaoTieTwo', '1237', 0);
INSERT INTO `trip` VALUES ('2683bff6-74a7-4541-b15b-493a5dd317c4', '2013-05-04 19:59:52', 'f3d4d4ef-693b-4456-8eed-59c0d717dd08', 'shanghai', '2013-05-04 07:00:00', 'suzhou', 'taiyuan', 'DongCheOne', '1345', 1);
INSERT INTO `trip` VALUES ('3ccb6246-c69c-49fa-9aa2-15dd9fac6861', '2023-10-01 12:47:52', 'da7ba435-d103-41b7-b6d8-b37dccd6dc46', 'jinan', '2023-10-01 09:04:00', 'qingdao', 'weihai', 'GaoTieTwo', '6983', 0);

SET FOREIGN_KEY_CHECKS = 1;
