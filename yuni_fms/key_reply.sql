/*
 Navicat Premium Data Transfer

 Source Server         : yuni
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : localhost:3306
 Source Schema         : yuni_fms

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 07/04/2024 23:54:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for key_reply
-- ----------------------------
DROP TABLE IF EXISTS `key_reply`;
CREATE TABLE `key_reply`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` bigint NOT NULL COMMENT '群组ID',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关键字',
  `reply` json NOT NULL COMMENT '回复，消息段格式',
  `del_flag` int NOT NULL DEFAULT 0 COMMENT '删除标志，默认0，表示未删除；1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
