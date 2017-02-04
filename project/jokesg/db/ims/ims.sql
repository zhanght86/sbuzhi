/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-12-20 10:13:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_circle_friends
-- ----------------------------
DROP TABLE IF EXISTS `gg_circle_friends`;
CREATE TABLE `gg_circle_friends` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `Content` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `PicUrl` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `Source` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '来源',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gg_circle_friends
-- ----------------------------
INSERT INTO `gg_circle_friends` VALUES ('1', '1', '上半个月我吃啥狗吃啥，下半个月狗吃啥我吃啥，月底厉害了准备吃狗', 'OSS_PHOTO_1', 'iPhone100', '1', '2016-11-15 16:36:12', '1', '2016-11-15 16:36:17', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('2', '3', '今天心情不错', null, 'iPhone100', '1', '2016-12-05 16:36:52', '1', '2016-12-05 16:36:55', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('3', '2', '好开心哦，要换手机了', null, 'iPhone100', '1', '2016-11-01 16:37:44', '1', '2016-11-01 16:37:52', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('4', '1', '听说马上就要出iPhone100了，我要赶紧抢一台', null, 'iPhone99 plus', '1', '2016-10-26 16:38:40', '1', '2016-10-26 16:38:45', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('5', '61', '这是一条测试内容', '', 'vivo xp', '1', '2016-12-05 17:11:34', '1', '2016-12-05 17:11:34', '', '1');
INSERT INTO `gg_circle_friends` VALUES ('6', '2', 'fasdfaf&nbsp;', null, 'jokesg', '1', '2016-12-05 18:03:24', '1', '2016-12-05 18:03:24', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('7', '2', '你好', null, 'jokesg', '1', '2016-12-06 09:10:42', '1', '2016-12-06 09:10:42', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('8', '1', '阿法法师打发', null, 'jokesg', '1', '2016-12-06 09:19:36', '1', '2016-12-06 09:19:36', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('9', '1', '发的多', null, 'jokesg', '1', '2016-12-06 09:22:41', '1', '2016-12-06 09:22:41', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('10', '1', 'afsdasdfasdf adsf发个', 'OSS_PHOTO_10', 'jokesg', '1', '2016-12-06 09:28:03', '1', '2016-12-06 09:28:03', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('11', '1', '打发大师傅', 'OSS_PHOTO_11', 'jokesg', '1', '2016-12-06 09:35:25', '1', '2016-12-06 09:35:25', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('12', '61', '打发大师傅', 'OSS_PHOTO_12', 'jokesg', '1', '2016-12-06 09:38:28', '1', '2016-12-06 09:38:28', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('13', '1', '名字地方哈打发', 'OSS_PHOTO_13', 'jokesg', '1', '2016-12-06 09:40:03', '1', '2016-12-06 09:40:03', null, '1');
INSERT INTO `gg_circle_friends` VALUES ('14', '1', '女神，I love you !', 'OSS_PHOTO_14', 'jokesg', '1', '2016-12-06 09:57:13', '1', '2016-12-06 09:57:13', null, '1');

-- ----------------------------
-- Table structure for gg_fans
-- ----------------------------
DROP TABLE IF EXISTS `gg_fans`;
CREATE TABLE `gg_fans` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FansId` varchar(64) DEFAULT NULL COMMENT '粉丝ID',
  `UserId` varchar(64) DEFAULT NULL COMMENT '被关注用户ID',
  `InsertBy` varchar(64) NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) DEFAULT NULL,
  `DelFlag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户粉丝表';

-- ----------------------------
-- Records of gg_fans
-- ----------------------------
INSERT INTO `gg_fans` VALUES ('1', '1', '61', '1', '2016-11-26 22:23:58', '1', '2016-11-29 09:41:25', null, '1');
INSERT INTO `gg_fans` VALUES ('2', '3', '2', '3', '2016-11-26 22:27:09', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('3', '1', '62', '3', '2016-11-26 22:30:01', '1', '2016-11-29 11:32:02', null, '0');
INSERT INTO `gg_fans` VALUES ('4', '62', '2', '3', '2016-11-26 22:30:08', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('5', '61', '1', '3', '2016-11-26 22:30:31', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('6', '62', '1', '3', '2016-11-26 22:31:19', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('7', '63', '1', '3', '2016-11-26 22:31:47', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('8', '64', '1', '3', '2016-11-26 22:31:52', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('9', '65', '1', '3', '2016-11-26 22:33:39', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('10', '68', '1', '3', '2016-11-26 22:34:00', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('11', '67', '1', '3', '2016-11-26 22:34:59', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('12', '2', '1', '3', '2016-11-26 22:35:52', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('13', '3', '1', '3', '2016-11-26 22:35:57', '3', '2016-11-26 22:36:04', null, '1');
INSERT INTO `gg_fans` VALUES ('14', '1', '2', '1', '2016-11-29 09:41:56', '1', '2016-12-12 16:04:48', null, '0');
INSERT INTO `gg_fans` VALUES ('15', '1', '3', '1', '2016-11-29 09:44:45', '1', '2016-11-29 10:25:36', null, '1');
INSERT INTO `gg_fans` VALUES ('16', '71', '1', '1', '2016-11-29 10:53:48', '1', '2016-11-29 10:57:41', null, '1');
INSERT INTO `gg_fans` VALUES ('17', '72', '1', '1', '2016-11-29 10:57:09', '1', '2016-11-29 10:57:41', null, '1');
INSERT INTO `gg_fans` VALUES ('18', '73', '1', '1', '2016-11-29 10:57:38', '1', '2016-11-29 10:57:41', null, '1');
INSERT INTO `gg_fans` VALUES ('19', '1', '63', '1', '2016-11-29 10:57:45', '1', '2016-11-29 10:57:45', null, '1');
INSERT INTO `gg_fans` VALUES ('20', '74', '1', '1', '2016-11-29 10:58:31', '1', '2016-11-29 10:58:32', null, '1');
INSERT INTO `gg_fans` VALUES ('21', '1', '64', '1', '2016-11-29 10:58:34', '1', '2016-11-29 10:58:34', null, '1');
INSERT INTO `gg_fans` VALUES ('22', '1', '62', '1', '2016-11-29 11:32:04', '1', '2016-11-29 11:32:04', null, '1');
INSERT INTO `gg_fans` VALUES ('23', '1', '2', '1', '2016-12-12 15:55:00', '1', '2016-12-12 16:04:48', null, '0');
INSERT INTO `gg_fans` VALUES ('24', '1', '2', '1', '2016-12-12 15:55:05', '1', '2016-12-12 16:04:48', null, '0');
INSERT INTO `gg_fans` VALUES ('25', '1', '2', '1', '2016-12-12 16:02:32', '1', '2016-12-12 16:04:48', null, '0');
INSERT INTO `gg_fans` VALUES ('26', '1', '2', '1', '2016-12-12 16:04:32', '1', '2016-12-12 16:04:48', null, '0');
INSERT INTO `gg_fans` VALUES ('27', '1', '2', '1', '2016-12-12 16:04:53', '1', '2016-12-12 16:04:53', null, '1');

-- ----------------------------
-- Table structure for gg_story
-- ----------------------------
DROP TABLE IF EXISTS `gg_story`;
CREATE TABLE `gg_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Story` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '故事内容',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gg_story
-- ----------------------------
INSERT INTO `gg_story` VALUES ('1', '上半个月我吃啥狗吃啥，下半个月狗吃啥我吃啥，月底厉害了准备吃狗', '1', '2016-12-01 17:26:21', '', '2016-12-01 17:26:23', null, '1');

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
