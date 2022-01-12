/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.8.132（上课专用）
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.8.132:3306
 Source Schema         : gpmall

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 08/01/2022 22:52:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册邮箱',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '性别',
  `state` int NULL DEFAULT 0 COMMENT '状态（1，有效，0，无效）',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `points` int NULL DEFAULT 0 COMMENT '积分',
  `balance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `created` datetime(0) NOT NULL,
  `updated` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ums_user
-- ----------------------------
INSERT INTO `ums_user` VALUES (62, 'test', '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, NULL, 1, 'https://gper.club/server-img/avatars/000/00/00/user_origin_30.jpg?time1565591384242', NULL, NULL, NULL, '2017-09-05 21:27:54', '2017-10-08 18:13:51');
INSERT INTO `ums_user` VALUES (66, 'mic', '4eea1e5de59fbc61cb3ab480dbbf6a5f', NULL, NULL, NULL, 1, 'https://gper.club/server-img/avatars/000/00/00/user_origin_30.jpg?time1565591384242', NULL, NULL, NULL, '2019-08-06 00:15:48', '2019-08-06 00:15:48');

SET FOREIGN_KEY_CHECKS = 1;
