/*
 Navicat Premium Data Transfer

 Source Server         : yuni
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : localhost:3306
 Source Schema         : yuni_dms

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 07/04/2024 23:53:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sub_uper
-- ----------------------------
DROP TABLE IF EXISTS `sub_uper`;
CREATE TABLE `sub_uper`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sub_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订阅地点，群组group，或私聊private',
  `suber_id` bigint NOT NULL COMMENT '订阅地点ID，群组ID或用户ID',
  `uper_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订阅的主播UID',
  `uper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订阅的主播昵称',
  `user_limit` int NOT NULL DEFAULT 0 COMMENT '用户身份限制，由低到高，限制逐渐加强。默认无限制。只有群组订阅时有效。',
  `uper_dynamic` int NOT NULL DEFAULT 1 COMMENT '是否开启动态推送。默认1，开启推送。',
  `uper_video` int NOT NULL DEFAULT 1 COMMENT '是否开启视频推送。默认1，开启推送。',
  `uper_live` int NOT NULL DEFAULT 1 COMMENT '是否开启直播推送。默认1，开启推送。',
  `at_everyone` int NOT NULL DEFAULT 0 COMMENT '是否@全体成员。默认0，不艾特。只有群组订阅时有效。',
  `del_flag` int NOT NULL DEFAULT 0 COMMENT '删除标志，默认0，表示未删除；1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
