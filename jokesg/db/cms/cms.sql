/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-12-20 10:15:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_user_info
-- ----------------------------
DROP TABLE IF EXISTS `gg_user_info`;
CREATE TABLE `gg_user_info` (
  `Id` varchar(64) COLLATE utf8_bin NOT NULL,
  `Name` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `EnName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '英文名称',
  `Sex` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '性别[0：其它 1:男 2:女]',
  `Age` tinyint(4) DEFAULT NULL COMMENT '年龄.1-200之间',
  `TelPhone` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '手机号',
  `IdCard` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `Address` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `Seat` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '所在地',
  `Hometown` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '故乡',
  `Birth` datetime DEFAULT NULL COMMENT '生日',
  `TwelveZodiac` char(2) COLLATE utf8_bin DEFAULT '0' COMMENT '生肖[0：其它 1：鼠 2：牛 3：虎4：兔5：龙6：蛇7：马8：羊9：猴10：鸡11：狗12：猪]',
  `Zodiac` char(2) COLLATE utf8_bin DEFAULT '0' COMMENT '星座[0:其它 1：白羊座 2：金牛座 3：双子座 4：双子座 5：狮子座 6：处女座 7：天秤座 8：天蝎座 9：射手座 10：摩羯座 11：水瓶座 12：双鱼座]',
  `BloodType` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '血型[0：其它 1：A型 2：B型 3：AB型 4：O型]',
  `Profession` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '职业',
  `School` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '学校',
  `Academic` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '学历[0:其它 1：小学及以下 2：初中 3：高中 4：中专 5：大专 6：本科 7：研究生 8：博士及以上]',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品订单明细表';

-- ----------------------------
-- Records of gg_user_info
-- ----------------------------
INSERT INTO `gg_user_info` VALUES ('1', '李建章', 'stealth.Lee', '1', '20', '15230297756', '130627199510021234', null, null, '保定', '1995-10-02 00:00:00', '12', '8', '0', 'java工程师', '唐县四中', '5', '1', '2016-11-22 16:56:41', '1', '2016-11-23 14:42:33', null, '1');
