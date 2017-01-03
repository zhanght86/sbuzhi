/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-12-20 10:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_gift
-- ----------------------------
DROP TABLE IF EXISTS `gg_gift`;
CREATE TABLE `gg_gift` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收礼物的用户ID',
  `GivingGiftsId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '送礼物的用户ID',
  `ProductsId` int(11) DEFAULT NULL COMMENT '礼物ID',
  `ProductsNub` int(11) DEFAULT NULL COMMENT '礼物数量',
  `ProductsPrice` decimal(10,0) DEFAULT NULL COMMENT '礼物总价格',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='礼物表';

-- ----------------------------
-- Records of gg_gift
-- ----------------------------

-- ----------------------------
-- Table structure for gg_order
-- ----------------------------
DROP TABLE IF EXISTS `gg_order`;
CREATE TABLE `gg_order` (
  `Id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '订单ID',
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `Price` decimal(10,0) DEFAULT NULL COMMENT '订单总价格',
  `Status` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '状态[0:已取消 1：待付款 2：已结账 3：错误订单]',
  `CustomerName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户姓名',
  `CustomerPhone` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户电话',
  `CustomerAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户地址',
  `CustomerConsignee` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户订单表';

-- ----------------------------
-- Records of gg_order
-- ----------------------------
INSERT INTO `gg_order` VALUES ('20141206', '1', '10', '1', null, null, null, null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', null, '1');
INSERT INTO `gg_order` VALUES ('20161207', '1', '15', '1', null, null, null, null, '1', '2016-12-06 17:54:16', '1', '2016-12-06 17:54:18', null, '1');

-- ----------------------------
-- Table structure for gg_order_info
-- ----------------------------
DROP TABLE IF EXISTS `gg_order_info`;
CREATE TABLE `gg_order_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductsId` int(11) DEFAULT NULL COMMENT '商品ID',
  `OrderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '订单ID',
  `ProductsNub` int(11) DEFAULT NULL COMMENT '商品数量',
  `Price` decimal(10,0) DEFAULT NULL COMMENT '商品总价格',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gg_order_info
-- ----------------------------
INSERT INTO `gg_order_info` VALUES ('1', '1', '20161206', '10', '10');
INSERT INTO `gg_order_info` VALUES ('2', '1', '20161207', '10', '10');
INSERT INTO `gg_order_info` VALUES ('3', '2', '20161207', '5', '5');

-- ----------------------------
-- Table structure for gg_products
-- ----------------------------
DROP TABLE IF EXISTS `gg_products`;
CREATE TABLE `gg_products` (
  `Id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品ID',
  `Name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `Price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `RalPrice` decimal(10,0) DEFAULT NULL COMMENT '商品真实价格',
  `Pic` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片',
  `Type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '商品类型[1:站内商品 2：站外商品]',
  `Stock` int(11) DEFAULT '-1' COMMENT '库存[-1:无上限]',
  `Order` int(11) DEFAULT NULL COMMENT '排序',
  `InsertBy` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品描述',
  `DelFlag` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品表';

-- ----------------------------
-- Records of gg_products
-- ----------------------------
INSERT INTO `gg_products` VALUES ('1', 'G币', '1', '1', 'fa fa-glide fa-4x', '1', '-1', '1', '1', '2016-12-01 10:35:45', '1', '2016-12-01 10:35:47', 'G币', '1');
INSERT INTO `gg_products` VALUES ('10', '月费VIP', '20', '20', 'fa fa-tint fa-3x', '1', '-1', '10', '1', '2016-12-01 10:41:31', '1', '2016-12-01 10:41:33', '高大上的VIP', '1');
INSERT INTO `gg_products` VALUES ('11', '年费VIP', '200', '200', 'fa fa-tint fa-4x', '1', '-1', '11', '1', '2016-12-01 10:42:09', '1', '2016-12-01 10:42:11', '高大上的VIP(年费立省40)', '1');
INSERT INTO `gg_products` VALUES ('2', '西北风', '1', '1', null, '1', '-1', '2', '1', '2016-12-01 10:37:46', '1', '2016-12-01 10:37:48', '礼物：1元100西北风', '1');
INSERT INTO `gg_products` VALUES ('3', '铃铛', '1', '1', 'fa fa-bell fa-4x', '1', '-1', '3', '1', '2016-12-01 10:26:45', '1', '2016-12-01 10:26:56', '礼物：1元铃铛', '1');
INSERT INTO `gg_products` VALUES ('4', '自行车', '6', '6', 'fa fa-bicycle fa-4x', '1', '-1', '4', '1', '2016-12-01 10:28:12', '1', '2016-12-01 10:28:16', '礼物：6元自行车', '1');
INSERT INTO `gg_products` VALUES ('5', '摩托', '10', '10', 'fa fa-motorcycle fa-4x', '1', '-1', '5', '1', '2016-12-01 10:29:10', '1', '2016-12-01 10:29:13', '礼物：10元摩托', '1');
INSERT INTO `gg_products` VALUES ('6', '小汽车', '50', '50', 'fa fa-car fa-4x', '1', '-1', '6', '1', '2016-12-01 10:31:23', '1', '2016-12-01 10:31:25', '礼物：50元小汽车', '1');
INSERT INTO `gg_products` VALUES ('7', '坦克', '100', '100', 'fa fa-space-shuttle fa-4x', '1', '-1', '7', '1', '2016-12-01 10:33:46', '1', '2016-12-01 10:33:51', '礼物：100元灰机', '1');
INSERT INTO `gg_products` VALUES ('8', '火箭', '400', '400', 'fa fa-rocket fa-4x', '1', '-1', '8', '1', '2016-12-01 10:34:40', '1', '2016-12-01 10:34:41', '礼物：400元火箭', '1');

-- ----------------------------
-- Table structure for gg_user_products
-- ----------------------------
DROP TABLE IF EXISTS `gg_user_products`;
CREATE TABLE `gg_user_products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `ProductsId` int(11) DEFAULT NULL COMMENT '商品ID',
  `Number` int(11) DEFAULT NULL COMMENT '数量',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户商品表';

-- ----------------------------
-- Records of gg_user_products
-- ----------------------------
INSERT INTO `gg_user_products` VALUES ('1', '1', '1', '3000', '1', '2016-12-05 10:15:20', '1', '2016-12-05 10:15:22', null, '1');
INSERT INTO `gg_user_products` VALUES ('2', '1', '2', '500', '1', '2016-12-05 10:17:54', '1', '2016-12-05 10:17:56', null, '1');
INSERT INTO `gg_user_products` VALUES ('3', '1', '3', '5000', '1', '2016-12-05 10:18:16', '1', '2016-12-05 10:18:18', null, '1');
INSERT INTO `gg_user_products` VALUES ('4', '2', '7', '3', '1', '2016-12-05 10:25:25', '1', '2016-12-05 10:25:27', null, '1');

-- ----------------------------
-- Table structure for gg_visitor
-- ----------------------------
DROP TABLE IF EXISTS `gg_visitor`;
CREATE TABLE `gg_visitor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `VisitorId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '访客ID',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` date NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gg_visitor
-- ----------------------------
INSERT INTO `gg_visitor` VALUES ('1', '1', '2', '1', '2016-12-19', '1', '2016-11-22 18:00:19', '', '1');
INSERT INTO `gg_visitor` VALUES ('2', '1', '2', '1', '2016-12-19', '1', '2016-12-01 18:01:03', '', '1');
INSERT INTO `gg_visitor` VALUES ('3', '1', '3', '1', '2016-12-19', '1', '2016-12-02 09:13:16', null, '1');
INSERT INTO `gg_visitor` VALUES ('4', '2', '1', '1', '2016-12-19', '1', '2016-12-02 10:19:33', null, '1');
INSERT INTO `gg_visitor` VALUES ('5', '3', '1', '1', '2016-12-19', '1', '2016-12-02 09:36:32', null, '1');
INSERT INTO `gg_visitor` VALUES ('6', '3', '2', '1', '2016-12-19', '1', '2016-12-02 09:36:32', '', '1');
INSERT INTO `gg_visitor` VALUES ('7', '3', '4', '1', '2016-12-19', '1', '2016-12-02 09:36:32', '', '1');
INSERT INTO `gg_visitor` VALUES ('8', '1', '4', '1', '2016-12-19', '1', '2016-12-02 09:36:32', '', '1');
INSERT INTO `gg_visitor` VALUES ('9', '1', '5', '1', '2016-12-19', '1', '2016-12-02 09:36:32', '', '1');
INSERT INTO `gg_visitor` VALUES ('10', '2', '1', '1', '2016-12-19', '1', '2016-12-12 16:07:10', null, '1');
