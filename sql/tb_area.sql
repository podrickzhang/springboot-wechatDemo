/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50018
 Source Host           : localhost:3306
 Source Schema         : o2o

 Target Server Type    : MySQL
 Target Server Version : 50018
 File Encoding         : 65001

 Date: 27/09/2018 10:17:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area`  (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `update_time` date NULL DEFAULT NULL,
  `last_edit_time` date NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`area_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES (2, '南苑', '2', '2018-09-27', NULL, '2018-09-27');

SET FOREIGN_KEY_CHECKS = 1;
