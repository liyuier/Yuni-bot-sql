/*
 Navicat Premium Data Transfer

 Source Server         : yuni
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : localhost:3306
 Source Schema         : yuni_cms

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 08/04/2024 00:24:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_group_message_record
-- ----------------------------
DROP TABLE IF EXISTS `cms_group_message_record`;
CREATE TABLE `cms_group_message_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `time` datetime NOT NULL COMMENT '收到消息的时间戳',
  `self_id` bigint NOT NULL COMMENT '收到消息的机器人 QQ 号',
  `message_id` bigint NOT NULL COMMENT '消息ID',
  `group_id` bigint NOT NULL COMMENT '群号',
  `user_id` bigint NOT NULL COMMENT '发送者 QQ 号',
  `anonymous` int NOT NULL DEFAULT 0 COMMENT '默认0，表示不是匿名信息；1表示是匿名信息',
  `anonymous_id` bigint NULL DEFAULT NULL COMMENT '匿名用户ID',
  `anonymous_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '匿名用户名称',
  `anonymous_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '匿名用户 flag，调用禁言API时传入',
  `message` json NOT NULL COMMENT '消息内容',
  `raw_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '原始消息内容',
  `del_flag` int NOT NULL DEFAULT 0 COMMENT '删除标志，默认0，表示未删除；1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
