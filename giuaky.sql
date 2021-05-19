/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : giuaky

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 19/05/2021 13:58:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `matkhau` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gioitinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `trinhdo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ngaysinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Bùi Hoàng Gia ', 'Nam', 'Cấp 3', 'Đà Nẵng', '2021-05-13', '0776729207', 13);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', 'Nam', 'Cấp 3', 'Đà Nẵng', '2021-05-13', '0776729207', 14);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', 'Nam', 'Cấp 3', 'Đà Nẵng', '2021-05-13', '0776729207', 15);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', 'Nam', 'Cấp 1', 'Hồ Chí Minh', '2021-05-22', '0776729207', 16);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'giabui21', 'Nam', 'Cấp 1', 'Hồ Chí Minh', '2021-05-22', '0776729207', 17);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', 'Nữ', 'Đại Học', 'Cần Thơ', '2021-05-14', '0776729207', 18);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', 'Nữ', 'Đại Học', 'Cần Thơ', '2021-05-14', '0776729207', 19);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', NULL, 'Cấp 1', 'Hồ Chí Minh', '2021-05-28', '', 20);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', NULL, 'Cấp 1', 'Hồ Chí Minh', '2021-05-14', '', 21);
INSERT INTO `customer` VALUES ('giabui21@gmail.com', '12345678', 'Giabui', NULL, 'Cấp 1', 'Hồ Chí Minh', '2021-05-21', '', 22);
INSERT INTO `customer` VALUES ('giabui22@gmail.com', '12345678', 'giabui21', 'Nữ', 'Cấp 1', 'Hồ Chí Minh', '2021-05-13', '0776729207', 23);
INSERT INTO `customer` VALUES ('giabui25@gmail.com', '12345678', 'Giabui', 'Nữ', 'Cấp 1', 'Hồ Chí Minh', '2021-05-30', '', 24);

SET FOREIGN_KEY_CHECKS = 1;
