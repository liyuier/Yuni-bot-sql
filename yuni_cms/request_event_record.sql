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

 Date: 07/04/2024 23:52:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for request_event_record
-- ----------------------------
DROP TABLE IF EXISTS `request_event_record`;
CREATE TABLE `request_event_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `time` datetime NOT NULL COMMENT '收到请求的时间戳',
  `self_id` bigint NOT NULL COMMENT '收到消息的机器人 QQ 号',
  `request_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求类型。加好友请求frend；加群/邀请请求group',
  `sub_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求子类型。只有加群/邀请请求有效。加群请求add；邀请请求invite',
  `user_id` bigint NULL DEFAULT NULL COMMENT '发送请求者 QQ 号。只有加好友请求有效。',
  `group_id` bigint NULL DEFAULT NULL COMMENT '群号。只有加群/邀请请求有效。',
  `comment` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '验证信息。',
  `flag` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求 flag，在调用处理请求的 API 时需要传入',
  `del_flag` int NOT NULL DEFAULT 0 COMMENT '删除标志，默认0，表示未删除；1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
