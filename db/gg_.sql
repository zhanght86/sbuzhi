/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2017-01-10 18:06:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_
-- ----------------------------
DROP TABLE IF EXISTS `gg_`;
CREATE TABLE `gg_` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='统一表';

-- ----------------------------
-- Records of gg_
-- ----------------------------

-- ----------------------------
-- Table structure for gg_album
-- ----------------------------
DROP TABLE IF EXISTS `gg_album`;
CREATE TABLE `gg_album` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '专辑名称',
  `Actor` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主演',
  `Director` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '导演',
  `Url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '专辑连接',
  `PicUrl` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '专辑封面图',
  `Language` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '语言',
  `Score` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '评分',
  `Year` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '年份',
  `Cnt` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '集数',
  `VideoType` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '类型[1:电视剧 2:电影 3:音乐 4:jokesg 0:其它]',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='专辑表';

-- ----------------------------
-- Records of gg_album
-- ----------------------------

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
-- Table structure for gg_code
-- ----------------------------
DROP TABLE IF EXISTS `gg_code`;
CREATE TABLE `gg_code` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `Code` varchar(64) DEFAULT NULL COMMENT '状态码',
  `Type` char(1) NOT NULL COMMENT '验证码类型[1:邮箱验证  2：手机验证]',
  `InsertBy` varchar(64) NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) DEFAULT NULL,
  `DelFlag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户状态码表';

-- ----------------------------
-- Records of gg_code
-- ----------------------------
INSERT INTO `gg_code` VALUES ('3', '738e925711e44d9bac7846cbea93df45', '9a4b72d6a32cb891997f6db487c2877f', '1', 'f2e6b22bb08e439182e0cec9de1a49fc', '2016-10-31 17:19:24', 'f2e6b22bb08e439182e0cec9de1a49fc', '2016-10-31 17:19:24', null, '0');
INSERT INTO `gg_code` VALUES ('4', '54dbc1e1a8b7488dbf4d3fcfc15c1ef6', '44636da76fa5354fd1903082f4191989', '1', '3ab2713a60ef4a4faf320f113a3af1d2', '2016-10-31 17:33:51', '3ab2713a60ef4a4faf320f113a3af1d2', '2016-10-31 17:33:51', null, '0');
INSERT INTO `gg_code` VALUES ('5', 'd51b4df187614a75920d123c809ee434', 'fdfe7a011af20326ac7ab49ef0cc51a8', '1', '351dc8e57e8c480ab477fcc12decb7f3', '2016-10-31 17:44:27', '351dc8e57e8c480ab477fcc12decb7f3', '2016-10-31 17:44:27', null, '0');
INSERT INTO `gg_code` VALUES ('6', '1b87c1b3d5044a24b51d386bdd7abd99', '74d85a8e668313b6875f68b4b936faab', '1', '23bb1837668e4b7390bc448b6665ed48', '2016-10-31 17:48:56', '23bb1837668e4b7390bc448b6665ed48', '2016-10-31 17:48:56', null, '0');
INSERT INTO `gg_code` VALUES ('7', 'c9fa6b2aeaef4cd2b5efd53d8d1fb951', 'd4818846d32b82dbc029429cbb9d0899', '1', '45671c367b7b485886ee8b89b5d2aa39', '2016-10-31 17:56:02', '45671c367b7b485886ee8b89b5d2aa39', '2016-10-31 17:56:02', null, '0');
INSERT INTO `gg_code` VALUES ('8', 'ff13727f95e044b6a97269b93f7438c3', 'e340daebf5b4619561bd843f8c6b6de4', '1', '7c070d47dbc846d69e2e89560c50bd2c', '2016-10-31 18:03:35', '7c070d47dbc846d69e2e89560c50bd2c', '2016-10-31 18:03:35', null, '0');
INSERT INTO `gg_code` VALUES ('9', '6f316c74bc81408e8e330d541adec028', '3449c32854efbad1917d7adb43833365', '1', 'f49ca98c09ba48abbf08ce50dbaaa7ed', '2016-11-01 09:00:33', 'f49ca98c09ba48abbf08ce50dbaaa7ed', '2016-11-01 09:00:33', null, '1');
INSERT INTO `gg_code` VALUES ('11', '9d685fc590f94eafb0f308771344d439', '8c167b87d44cac92ffcf830345ea0a89', '1', 'bd18de3048b94b6f9ac441a50718c062', '2016-11-01 10:43:05', 'bd18de3048b94b6f9ac441a50718c062', '2016-11-01 10:43:05', null, '1');
INSERT INTO `gg_code` VALUES ('12', '317ee0dea2164dec9fec58fb3cb8109a', 'b956ae058644ecd020f0be45623590d0', '1', '7e0b5c0c1ce944989a25ba2e372f9edf', '2016-11-01 10:52:52', '7e0b5c0c1ce944989a25ba2e372f9edf', '2016-11-01 10:52:52', null, '1');
INSERT INTO `gg_code` VALUES ('13', null, '2d6f40b20e441bedd264169be630c6b5', '1', '0ebe42a8b30f48e3a4f2e28a2ca902e6', '2016-11-01 10:56:31', '0ebe42a8b30f48e3a4f2e28a2ca902e6', '2016-11-01 10:56:31', null, '1');
INSERT INTO `gg_code` VALUES ('14', '41b129e18782483e934eeec10664e859', '3424b1b0735f5b074e7a4a81e580b2e5', '1', '8d3fe98e81254a7298449b2e0722a95f', '2016-11-01 11:01:22', '8d3fe98e81254a7298449b2e0722a95f', '2016-11-01 11:01:22', null, '1');
INSERT INTO `gg_code` VALUES ('15', null, 'dfea68295dc5c5c18da1c9397069bfae', '1', 'ea2e77764a344eb09f852240c4177479', '2016-11-01 11:01:41', 'ea2e77764a344eb09f852240c4177479', '2016-11-01 11:01:41', null, '1');

-- ----------------------------
-- Table structure for gg_comment
-- ----------------------------
DROP TABLE IF EXISTS `gg_comment`;
CREATE TABLE `gg_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JokesgId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'JokesgID',
  `VideosId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'VideosId',
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `Content` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '评论内容',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户评论表';

-- ----------------------------
-- Records of gg_comment
-- ----------------------------
INSERT INTO `gg_comment` VALUES ('1', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '  最帅老头！', '1', '2016-12-13 09:34:22', '1', '2016-12-13 09:34:22', null, '1');
INSERT INTO `gg_comment` VALUES ('2', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '3', '    6666', '1', '2016-12-13 09:36:47', '1', '2016-12-13 09:36:47', null, '1');
INSERT INTO `gg_comment` VALUES ('3', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '厉害了', '1', '2016-12-13 09:38:06', '1', '2016-12-13 09:38:06', null, '1');
INSERT INTO `gg_comment` VALUES ('4', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '2', '打发大师傅啊', '1', '2016-12-13 09:44:57', '1', '2016-12-13 09:44:57', null, '1');
INSERT INTO `gg_comment` VALUES ('5', '0dba51c1d70448d4908a15266fba3129', null, '1', '第三方', '1', '2016-12-13 09:49:55', '1', '2016-12-13 09:49:55', null, '1');
INSERT INTO `gg_comment` VALUES ('6', '68', null, '1', '我歌！', '1', '2016-12-13 16:06:36', '1', '2016-12-13 16:06:36', null, '1');
INSERT INTO `gg_comment` VALUES ('7', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:29', '1', '2016-12-13 16:12:29', null, '1');
INSERT INTO `gg_comment` VALUES ('8', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:29', '1', '2016-12-13 16:12:29', null, '1');
INSERT INTO `gg_comment` VALUES ('9', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:30', '1', '2016-12-13 16:12:30', null, '1');
INSERT INTO `gg_comment` VALUES ('10', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:30', '1', '2016-12-13 16:12:30', null, '1');
INSERT INTO `gg_comment` VALUES ('11', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:30', '1', '2016-12-13 16:12:30', null, '1');
INSERT INTO `gg_comment` VALUES ('12', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:30', '1', '2016-12-13 16:12:30', null, '1');
INSERT INTO `gg_comment` VALUES ('13', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:30', '1', '2016-12-13 16:12:30', null, '1');
INSERT INTO `gg_comment` VALUES ('14', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('15', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('16', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('17', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('18', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('19', '68', null, '1', '我歌！', '1', '2016-12-13 16:12:31', '1', '2016-12-13 16:12:31', null, '1');
INSERT INTO `gg_comment` VALUES ('20', '68', null, '1', '我歌！范德萨发', '1', '2016-12-13 16:12:33', '1', '2016-12-13 16:12:33', null, '1');
INSERT INTO `gg_comment` VALUES ('21', '68', null, '1', '我歌！范德萨发', '1', '2016-12-13 16:12:33', '1', '2016-12-13 16:12:33', null, '1');
INSERT INTO `gg_comment` VALUES ('22', '68', null, '1', '我歌！范德萨发', '1', '2016-12-13 16:12:34', '1', '2016-12-13 16:12:34', null, '1');
INSERT INTO `gg_comment` VALUES ('23', '68', null, '1', '', '1', '2016-12-13 16:12:52', '1', '2016-12-13 16:12:52', null, '1');
INSERT INTO `gg_comment` VALUES ('24', '68', null, '1', '', '1', '2016-12-13 16:12:53', '1', '2016-12-13 16:12:53', null, '1');
INSERT INTO `gg_comment` VALUES ('25', '69', null, '1', 'asdfds', '1', '2016-12-13 16:35:03', '1', '2016-12-13 16:35:03', null, '1');
INSERT INTO `gg_comment` VALUES ('26', '3', null, '1', '我歌', '1', '2016-12-13 16:47:18', '1', '2016-12-13 16:47:18', null, '1');
INSERT INTO `gg_comment` VALUES ('27', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '很励志', '1', '2016-12-13 17:01:11', '1', '2016-12-13 17:01:11', null, '1');
INSERT INTO `gg_comment` VALUES ('28', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '很励志！', '1', '2016-12-13 17:01:38', '1', '2016-12-13 17:01:38', null, '1');
INSERT INTO `gg_comment` VALUES ('29', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '阿道夫', '1', '2016-12-13 17:01:55', '1', '2016-12-13 17:01:55', null, '1');
INSERT INTO `gg_comment` VALUES ('30', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '阿发', '1', '2016-12-13 17:02:04', '1', '2016-12-13 17:02:04', null, '1');
INSERT INTO `gg_comment` VALUES ('31', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '发', '1', '2016-12-13 17:02:27', '1', '2016-12-13 17:02:27', null, '1');
INSERT INTO `gg_comment` VALUES ('32', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '大师傅', '1', '2016-12-13 17:02:54', '1', '2016-12-13 17:02:54', null, '1');
INSERT INTO `gg_comment` VALUES ('33', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '阿打算发', '1', '2016-12-13 17:03:14', '1', '2016-12-13 17:03:14', null, '1');
INSERT INTO `gg_comment` VALUES ('34', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '？？？', '1', '2016-12-13 17:06:18', '1', '2016-12-13 17:06:18', null, '1');
INSERT INTO `gg_comment` VALUES ('35', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '阿发斯蒂芬', '1', '2016-12-13 17:07:12', '1', '2016-12-13 17:07:12', null, '1');
INSERT INTO `gg_comment` VALUES ('36', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '按时打发第三方啊', '1', '2016-12-13 17:07:30', '1', '2016-12-13 17:07:30', null, '1');
INSERT INTO `gg_comment` VALUES ('37', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '啊发发', '1', '2016-12-13 17:08:02', '1', '2016-12-13 17:08:02', null, '1');
INSERT INTO `gg_comment` VALUES ('38', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '打发斯蒂芬', '1', '2016-12-13 17:09:23', '1', '2016-12-13 17:09:23', null, '1');
INSERT INTO `gg_comment` VALUES ('39', '9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '按时发打发', '1', '2016-12-13 17:09:34', '1', '2016-12-13 17:09:34', null, '1');
INSERT INTO `gg_comment` VALUES ('40', 'e2fc4cc229c44c739f1b0371b4a99f6e', null, '1', '我是天蝎座\r\n', '1', '2016-12-13 17:12:17', '1', '2016-12-13 17:12:17', null, '1');
INSERT INTO `gg_comment` VALUES ('41', '4c29c6531e5b49168dc027fe2a9a1bb7', null, '1', '我是天蝎座', '1', '2016-12-13 17:13:24', '1', '2016-12-13 17:13:24', null, '1');
INSERT INTO `gg_comment` VALUES ('42', '4c29c6531e5b49168dc027fe2a9a1bb7', null, '1', '气死爹了', '1', '2016-12-13 17:13:47', '1', '2016-12-13 17:13:47', null, '1');
INSERT INTO `gg_comment` VALUES ('43', '4c29c6531e5b49168dc027fe2a9a1bb7', null, '1', '多发发送', '1', '2016-12-13 17:18:31', '1', '2016-12-13 17:18:31', null, '1');
INSERT INTO `gg_comment` VALUES ('44', '0dba51c1d70448d4908a15266fba3129', null, '1', '阿斯顿发放', '1', '2016-12-13 17:19:21', '1', '2016-12-13 17:19:21', null, '1');
INSERT INTO `gg_comment` VALUES ('45', '1', null, '1', '阿发的说法', '1', '2016-12-13 17:20:52', '1', '2016-12-13 17:20:52', null, '1');
INSERT INTO `gg_comment` VALUES ('46', '68', null, '1', '什么鬼\r\n', '1', '2016-12-14 11:05:57', '1', '2016-12-14 11:05:57', null, '1');
INSERT INTO `gg_comment` VALUES ('47', '68', null, '1', '', '1', '2016-12-14 11:08:01', '1', '2016-12-14 11:08:01', null, '1');
INSERT INTO `gg_comment` VALUES ('48', 'e2fc4cc229c44c739f1b0371b4a99f6e', null, '1', '哈哈哈', '1', '2016-12-14 13:52:04', '1', '2016-12-14 13:52:04', null, '1');
INSERT INTO `gg_comment` VALUES ('49', '4c29c6531e5b49168dc027fe2a9a1bb7', null, '1', '6666666666666666666666666666666', '1', '2016-12-19 14:26:31', '1', '2016-12-19 14:26:31', null, '1');

-- ----------------------------
-- Table structure for gg_company
-- ----------------------------
DROP TABLE IF EXISTS `gg_company`;
CREATE TABLE `gg_company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '企业名称',
  `Address` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '企业地址',
  `ContactWay` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式',
  `Type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '企业类型[1:个人企业(不允许其它用户加入) 2:公司企业(允许其它用户加入)]',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gg_company
-- ----------------------------

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
-- Table structure for gg_favorites
-- ----------------------------
DROP TABLE IF EXISTS `gg_favorites`;
CREATE TABLE `gg_favorites` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `JokesgId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '视频ID',
  `Type` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '类型[1：收藏 2：赞]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户收藏表';

-- ----------------------------
-- Records of gg_favorites
-- ----------------------------
INSERT INTO `gg_favorites` VALUES ('1', '1', '2', '1');
INSERT INTO `gg_favorites` VALUES ('21', '1', '9df09aae24c143a4a7ffb1a1a2633bd3', '2');
INSERT INTO `gg_favorites` VALUES ('36', '1', '4c29c6531e5b49168dc027fe2a9a1bb7', '2');
INSERT INTO `gg_favorites` VALUES ('38', '1', '4c29c6531e5b49168dc027fe2a9a1bb7', '1');
INSERT INTO `gg_favorites` VALUES ('39', '1', 'e2fc4cc229c44c739f1b0371b4a99f6e', '2');
INSERT INTO `gg_favorites` VALUES ('40', '1', 'e2fc4cc229c44c739f1b0371b4a99f6e', '1');
INSERT INTO `gg_favorites` VALUES ('42', '1', 'b6f64d4b9fa945b69359ba84ae535c59', '1');
INSERT INTO `gg_favorites` VALUES ('44', '3', 'b6f64d4b9fa945b69359ba84ae535c59', '2');
INSERT INTO `gg_favorites` VALUES ('46', '3', '9df09aae24c143a4a7ffb1a1a2633bd3', '2');
INSERT INTO `gg_favorites` VALUES ('47', '3', '9df09aae24c143a4a7ffb1a1a2633bd3', '1');
INSERT INTO `gg_favorites` VALUES ('69', '1', 'b6f64d4b9fa945b69359ba84ae535c59', '1');
INSERT INTO `gg_favorites` VALUES ('72', '1', '9df09aae24c143a4a7ffb1a1a2633bd3', '1');
INSERT INTO `gg_favorites` VALUES ('73', '1', 'b2bcc0e0693c4cf18ab3294a92f788ea', '2');
INSERT INTO `gg_favorites` VALUES ('74', '1', '643d7629db2f44a1b00622abb963bc29', '2');
INSERT INTO `gg_favorites` VALUES ('76', '1', '6', '1');

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
-- Table structure for gg_jokesg
-- ----------------------------
DROP TABLE IF EXISTS `gg_jokesg`;
CREATE TABLE `gg_jokesg` (
  `Id` varchar(64) NOT NULL COMMENT '主键ID',
  `UserId` varchar(64) DEFAULT NULL COMMENT '用户Id',
  `CompanyId` varchar(64) DEFAULT NULL COMMENT '企业ID',
  `Name` varchar(64) DEFAULT NULL COMMENT '名称',
  `Href` varchar(1024) DEFAULT NULL COMMENT '链接',
  `PicUrl` varchar(512) DEFAULT NULL COMMENT '图片URL',
  `UserBy` varchar(64) DEFAULT NULL COMMENT '原创作者',
  `Type` char(1) DEFAULT '1' COMMENT '视频类型[1:原创 2:转发]',
  `IsOpenly` char(1) DEFAULT '1' COMMENT '是否公开[0:仅自己可见 1:所有人可见 2:输入密码可见]',
  `Pwd` varchar(64) DEFAULT NULL COMMENT '视频加密密码，当公开类型为2时，此字段必须有值',
  `PlayAmount` int(11) DEFAULT '1' COMMENT '播放量',
  `InsertBy` varchar(64) NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) DEFAULT NULL,
  `DelFlag` char(1) NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频表 ';

-- ----------------------------
-- Records of gg_jokesg
-- ----------------------------
INSERT INTO `gg_jokesg` VALUES ('0dba51c1d70448d4908a15266fba3129', '3', null, '这是一个逆天的标题', null, '/ui/gg/images/a1.jpg', null, '1', '1', '', '26', '1', '2016-11-10 20:50:13', '1', '2016-11-10 20:50:13', '这是一个图片', '1');
INSERT INTO `gg_jokesg` VALUES ('1', '1', '', '琅琊榜', '', '/ui/gg/images/a2.jpg', '1', '1', '1', null, '3', '1', '2016-11-09 20:53:46', '1', '2016-11-09 20:53:46', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('111', '2', '', '爱情公寓', '', '/ui/gg/images/a3.jpg', '', '', '1', '', '27', '', '2016-11-10 14:09:39', '', '2016-11-10 14:09:39', '', '1');
INSERT INTO `gg_jokesg` VALUES ('2', '1', '', '琅琊榜2', '', '/ui/gg/images/a4.jpg', '1', '1', '1', null, '11', '1', '2016-11-09 21:14:42', '1', '2016-11-09 21:14:42', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('3', '2', '', '琅琊榜3', '', '/ui/gg/images/a5.jpg', '1', '1', '1', null, '7', '1', '2016-11-09 21:14:46', '1', '2016-11-09 21:14:46', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('4', '3', '', '琅琊榜4', '', '/ui/gg/images/a6.jpg', '1', '1', '1', null, '5', '1', '2016-11-09 21:14:48', '1', '2016-11-09 21:14:48', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('4c29c6531e5b49168dc027fe2a9a1bb7', '1', '1', '其实我不是巨蟹座', 'OSS_JOKESG_4c29c6531e5b49168dc027fe2a9a1bb7', 'OSS_PHOTO_4c29c6531e5b49168dc027fe2a9a1bb7', null, '1', '1', '', '14', '1', '2016-11-25 08:56:30', '1', '2016-11-25 11:16:33', '巨蟹座', '1');
INSERT INTO `gg_jokesg` VALUES ('5', '1', '', '琅琊榜15', '', '/ui/gg/images/a7.jpg', '1', '1', '1', null, '2', '1', '2016-11-09 21:14:50', '1', '2016-11-09 21:14:50', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('6', '2', '', '琅琊榜16', '', '/ui/gg/images/a8.jpg', '1', '1', '1', null, '38', '1', '2016-11-09 21:14:52', '1', '2016-11-09 21:14:52', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('643d7629db2f44a1b00622abb963bc29', '2', null, '伪装者', null, '/ui/gg/images/a9.jpg', null, '1', '1', null, '10', '1', '2016-11-10 14:47:22', '1', '2016-11-10 14:47:22', null, '1');
INSERT INTO `gg_jokesg` VALUES ('67', '4', '', '琅琊榜2', '', '/ui/gg/images/a10.jpg', '1', '2', '1', null, '1', '1', '2016-11-09 21:15:25', '1', '2016-11-09 21:15:25', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('68', '1', '', '琅琊榜21', '', '/ui/gg/images/a11.jpg', '1', '2', '1', '', '53', '1', '2016-11-09 21:15:25', '1', '2016-11-09 21:15:25', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('69', '1', '', '琅琊榜22', '', '/ui/gg/images/a12.jpg', '1', '2', '1', '', '5', '1', '2016-11-09 21:15:25', '1', '2016-11-09 21:15:25', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('70', '1', '', '只有疯狂到认为...', 'OSS_JOKESG_a419fbaf6fbc44ad873bf239e7e05ec5', 'OSS_PHOTO_b6f64d4b9fa945b69359ba84ae535c59', '1', '2', '1', '', '3', '1', '2016-11-09 21:15:25', '1', '2016-11-09 21:15:25', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('9df09aae24c143a4a7ffb1a1a2633bd3', '1', null, '王德顺励志视频', 'OSS_JOKESG_9df09aae24c143a4a7ffb1a1a2633bd3', 'OSS_PHOTO_9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '1', '', '118', '1', '2016-11-13 15:23:22', '1', '2016-11-13 15:23:22', '撒的发放', '1');
INSERT INTO `gg_jokesg` VALUES ('b2bcc0e0693c4cf18ab3294a92f788ea', '2', null, '伪装者', null, '/ui/gg/images/a11.jpg', null, '1', '1', null, '28', '2', '2016-11-10 14:10:18', '2', '2016-11-10 14:10:18', null, '1');
INSERT INTO `gg_jokesg` VALUES ('b6f64d4b9fa945b69359ba84ae535c59', '1', null, '总是有人要赢得，那为什么不是你', 'OSS_JOKESG_b6f64d4b9fa945b69359ba84ae535c59', 'OSS_PHOTO_b6f64d4b9fa945b69359ba84ae535c59', null, '1', '1', '', '66', '1', '2016-11-25 11:28:34', '1', '2016-11-25 11:28:34', '励志短片2', '1');
INSERT INTO `gg_jokesg` VALUES ('e2fc4cc229c44c739f1b0371b4a99f6e', '1', null, '我是天蝎座', 'OSS_JOKESG_e2fc4cc229c44c739f1b0371b4a99f6e', 'OSS_PHOTO_e2fc4cc229c44c739f1b0371b4a99f6e', null, '1', '1', '', '25', '1', '2016-11-25 11:20:55', '1', '2016-11-25 11:20:55', '天蝎座', '1');

-- ----------------------------
-- Table structure for gg_jokesg_menu
-- ----------------------------
DROP TABLE IF EXISTS `gg_jokesg_menu`;
CREATE TABLE `gg_jokesg_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `JokesgId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '视频ID',
  `MenuId` int(11) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='视频菜单分类表';

-- ----------------------------
-- Records of gg_jokesg_menu
-- ----------------------------
INSERT INTO `gg_jokesg_menu` VALUES ('1', '0dba51c1d70448d4908a15266fba3129', '801');
INSERT INTO `gg_jokesg_menu` VALUES ('2', '9df09aae24c143a4a7ffb1a1a2633bd3', '802');
INSERT INTO `gg_jokesg_menu` VALUES ('3', '4c29c6531e5b49168dc027fe2a9a1bb7', '805');
INSERT INTO `gg_jokesg_menu` VALUES ('4', 'e2fc4cc229c44c739f1b0371b4a99f6e', '805');
INSERT INTO `gg_jokesg_menu` VALUES ('5', 'b6f64d4b9fa945b69359ba84ae535c59', '802');

-- ----------------------------
-- Table structure for gg_menu
-- ----------------------------
DROP TABLE IF EXISTS `gg_menu`;
CREATE TABLE `gg_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ParentId` int(11) DEFAULT NULL COMMENT '父ID',
  `ParentIds` varchar(64) DEFAULT NULL COMMENT '所有父级ID',
  `Name` varchar(64) DEFAULT NULL COMMENT '名称',
  `Index` int(11) DEFAULT NULL COMMENT '索引排序',
  `Href` varchar(1024) DEFAULT NULL COMMENT '链接',
  `Icon` varchar(512) DEFAULT NULL COMMENT '图标',
  `Permission` varchar(64) DEFAULT NULL COMMENT '权限标识',
  `IsShow` char(1) DEFAULT '0' COMMENT '是否显示[0:不显示 1:显示]',
  `InsertBy` varchar(64) NOT NULL DEFAULT '1',
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) NOT NULL DEFAULT '1',
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) DEFAULT NULL,
  `DelFlag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of gg_menu
-- ----------------------------
INSERT INTO `gg_menu` VALUES ('1', '0', '0,', 'Jokesg', '10', '', '', null, '0', '1', '2016-09-24 16:10:32', '1', '2016-09-24 16:10:43', null, '1');
INSERT INTO `gg_menu` VALUES ('2', '1', null, '主站', '20', '/a/index.do', 'fa fa-home', null, '1', '1', '2016-09-24 16:36:08', '1', '2016-09-24 16:36:11', null, '1');
INSERT INTO `gg_menu` VALUES ('3', '1', null, '我的', '30', '', 'fa fa-user', '', '1', '1', '2016-09-24 16:37:51', '1', '2016-12-12 09:07:32', '', '1');
INSERT INTO `gg_menu` VALUES ('4', '1', null, '发布', '40', '/ims/blog.do', 'fa fa-file-text-o', '', '1', '1', '2016-12-01 15:40:42', '1', '2016-12-01 15:40:42', '个人空间', '1');
INSERT INTO `gg_menu` VALUES ('5', '1', null, '企业', '50', null, 'fa fa-female', null, '1', '1', '2016-09-25 14:55:09', '1', '2016-09-25 14:55:10', null, '1');
INSERT INTO `gg_menu` VALUES ('6', '1', null, '艺术家', '60', '#', 'lnr lnr-users', null, '1', '1', '2016-09-25 14:55:28', '1', '2016-09-25 14:55:30', null, '1');
INSERT INTO `gg_menu` VALUES ('7', '1', null, '上传', '70', '/rms/video/form.do', 'fa fa-upload', 'view', '1', '1', '2016-10-26 10:14:51', '1', '2016-10-26 10:14:55', null, '1');
INSERT INTO `gg_menu` VALUES ('8', '1', null, '所有作品', '80', null, 'fa fa-chevron-circle-down', null, '1', '1', '2016-10-26 10:14:59', '1', '2016-10-26 10:14:57', null, '1');
INSERT INTO `gg_menu` VALUES ('9', '1', null, '联系我们', '90', '#', 'fa fa-thumb-tack', null, '1', '1', '2016-09-25 14:55:59', '1', '2016-09-25 14:56:00', null, '1');
INSERT INTO `gg_menu` VALUES ('10', '1', '', '超级管理', '100', '', 'fa fa-wrench', '', '1', '1', '2016-11-19 13:36:20', '1', '2016-11-19 13:36:20', '', '1');
INSERT INTO `gg_menu` VALUES ('11', '1', null, '个人空间', '35', '/ims/blog.do', 'lnr lnr-users', '', '1', '1', '2016-11-19 13:36:20', '1', '2016-12-12 09:07:52', '', '1');
INSERT INTO `gg_menu` VALUES ('300', '3', null, '个人信息', '10', '/ims/info.do', '', '', '1', '1', '2016-09-24 16:38:50', '1', '2016-12-12 09:11:31', '', '1');
INSERT INTO `gg_menu` VALUES ('301', '3', null, '作品', '20', '/rms/my/list.do', '', '', '1', '1', '2016-09-24 16:41:40', '1', '2016-12-12 09:11:35', '', '1');
INSERT INTO `gg_menu` VALUES ('302', '3', null, '收藏', '30', '/rms/my/myFavorites.do', '', '', '1', '1', '2016-09-25 14:53:10', '1', '2016-12-12 09:11:39', '', '1');
INSERT INTO `gg_menu` VALUES ('303', '3', null, '粉丝', '40', '/ims/myFans.do', '', '', '1', '1', '2016-10-26 10:03:50', '1', '2016-12-12 09:11:47', '', '1');
INSERT INTO `gg_menu` VALUES ('304', '3', null, '关注', '50', '/ims/myConcern.do', '', '', '1', '1', '2016-09-25 14:53:30', '1', '2016-12-12 09:11:53', '', '1');
INSERT INTO `gg_menu` VALUES ('305', '3', null, '钱包', '60', '/wallet.do', '', '', '1', '1', '2016-12-05 09:33:25', '1', '2016-12-12 09:13:27', '', '1');
INSERT INTO `gg_menu` VALUES ('400', '4', null, '我的Jokesg', '10', '', '', '', '1', '1', '2016-09-25 14:54:27', '1', '2016-12-12 09:12:13', '', '1');
INSERT INTO `gg_menu` VALUES ('401', '4', null, '新建Jokesg', '20', '', '', '', '1', '1', '2016-10-26 09:05:38', '1', '2016-12-12 09:12:17', '', '1');
INSERT INTO `gg_menu` VALUES ('402', '4', null, '发布Jokesg', '30', '', '', '', '1', '1', '2016-09-25 14:54:48', '1', '2016-12-12 09:12:21', '', '1');
INSERT INTO `gg_menu` VALUES ('500', '5', null, '个人企业', '10', '', '', '', '1', '1', '2016-10-26 10:15:01', '1', '2016-12-12 09:12:26', '', '1');
INSERT INTO `gg_menu` VALUES ('501', '5', null, '家族企业', '20', '', '', '', '1', '1', '2016-10-26 10:15:02', '1', '2016-12-12 09:12:30', '', '1');
INSERT INTO `gg_menu` VALUES ('800', '8', null, '搞笑', '10', '/rms/seeAll.do?menuId=800', '', '', '1', '1', '2016-10-26 10:18:02', '1', '2016-12-12 09:12:38', '', '1');
INSERT INTO `gg_menu` VALUES ('801', '8', null, '感动', '20', '/rms/seeAll.do?menuId=801', '', '', '1', '1', '2016-10-26 10:18:03', '1', '2016-12-12 09:12:41', '', '1');
INSERT INTO `gg_menu` VALUES ('802', '8', null, '励志', '30', '/rms/seeAll.do?menuId=802', '', '', '1', '1', '2016-10-26 10:18:05', '1', '2016-12-12 09:12:44', '', '1');
INSERT INTO `gg_menu` VALUES ('803', '8', null, '公益', '40', '/rms/seeAll.do?menuId=803', '', '', '1', '1', '2016-10-26 10:18:06', '1', '2016-12-12 09:12:47', '', '1');
INSERT INTO `gg_menu` VALUES ('804', '8', null, '原生态', '50', '/rms/seeAll.do?menuId=804', '', '', '1', '1', '2016-10-26 10:18:08', '1', '2016-12-12 09:12:50', '', '1');
INSERT INTO `gg_menu` VALUES ('805', '8', null, '其它', '60', '/rms/seeAll.do?menuId=805', '', '', '1', '1', '2016-10-26 10:18:09', '1', '2016-12-12 09:12:54', '', '1');
INSERT INTO `gg_menu` VALUES ('806', '8', null, '全部', '70', '/rms/seeAll.do?menuId=806', '', '', '1', '1', '2016-10-27 16:27:03', '1', '2016-12-12 09:12:57', '', '1');
INSERT INTO `gg_menu` VALUES ('1010', '10', null, '角色管理', '10', '/cms/roleMenu.do', '', '', '1', '1', '2016-11-19 13:50:12', '1', '2016-12-12 09:13:03', '', '1');
INSERT INTO `gg_menu` VALUES ('1020', '10', null, '菜单管理', '20', '/cms/mMenu.do', '', '', '1', '1', '2016-11-19 13:52:53', '1', '2016-12-12 09:13:05', '', '1');
INSERT INTO `gg_menu` VALUES ('1030', '10', null, '用户管理', '30', '/cms/userMenu.do', '', '', '1', '1', '2016-11-19 20:11:37', '1', '2016-12-12 09:13:11', '', '1');
INSERT INTO `gg_menu` VALUES ('10006', '1', null, '测试菜单', '1000000', '', '', '', '1', '1', '2016-11-20 10:52:40', '1', '2016-11-20 10:54:40', '测试菜单 ，马上进行删除\r\n', '0');
INSERT INTO `gg_menu` VALUES ('10008', '1', null, '在线点播', '25', '', 'fa fa-film', '', '1', '1', '2016-12-12 09:06:26', '1', '2016-12-12 09:19:16', '', '1');
INSERT INTO `gg_menu` VALUES ('10009', '10008', null, '腾讯点播', '10', '/rms/tencent.do', '', '', '1', '1', '2016-12-12 09:11:15', '1', '2016-12-12 09:19:42', '', '1');
INSERT INTO `gg_menu` VALUES ('10010', '10008', null, '爱奇异点播', '20', '/rms/iqiy.do', '', '', '1', '1', '2016-12-12 09:13:56', '1', '2016-12-20 16:28:47', '', '1');

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
-- Table structure for gg_role
-- ----------------------------
DROP TABLE IF EXISTS `gg_role`;
CREATE TABLE `gg_role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL COMMENT '角色名称',
  `EnName` varchar(64) DEFAULT NULL COMMENT '英文名称',
  `InsertBy` varchar(64) NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(512) DEFAULT NULL,
  `DelFlag` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of gg_role
-- ----------------------------
INSERT INTO `gg_role` VALUES ('1', '游客', 'visitors', '1', '2016-09-17 20:25:32', '1', '2016-09-17 20:25:37', '游客，可浏览主站所有内容，但没有上传下载视频、访问个人信息、发布Jokesg信息的权限', '1');
INSERT INTO `gg_role` VALUES ('2', '普通用户', 'ordinary', '1', '2016-09-17 20:27:07', '1', '2016-09-17 20:27:09', '普通用户，可以浏览主站所有的内容，并且可以访问个人信息和上传下载视频，但是没有发布Jokesg信息的功能', '1');
INSERT INTO `gg_role` VALUES ('3', '企业认证用户', 'company', '1', '2016-09-24 16:04:20', '1', '2016-09-24 16:04:24', '企业认证用户可以访问主站所有内容，并且拥有修改个人信息，上传下载视频，以及发布Jokesg信息的权限', '1');
INSERT INTO `gg_role` VALUES ('999', '超级管理员', 'admin', '1', '2016-10-26 10:42:11', '1', '2016-10-26 10:42:19', '史上最牛掰的管理员，拥有该站点所有的权限', '1');
INSERT INTO `gg_role` VALUES ('1000', '测试', 'cs', '1', '2016-11-20 10:49:54', '1', '2016-11-20 10:49:54', '这是一个测试角色 ，马上进行删除', '0');

-- ----------------------------
-- Table structure for gg_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `gg_role_menu`;
CREATE TABLE `gg_role_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` int(11) NOT NULL COMMENT '角色ID',
  `MenuId` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`Id`),
  KEY `wj_role` (`RoleId`),
  KEY `wj_menu` (`MenuId`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of gg_role_menu
-- ----------------------------
INSERT INTO `gg_role_menu` VALUES ('221', '1000', '1');
INSERT INTO `gg_role_menu` VALUES ('222', '1000', '8');
INSERT INTO `gg_role_menu` VALUES ('223', '1000', '800');
INSERT INTO `gg_role_menu` VALUES ('224', '1000', '801');
INSERT INTO `gg_role_menu` VALUES ('225', '1000', '802');
INSERT INTO `gg_role_menu` VALUES ('226', '1000', '803');
INSERT INTO `gg_role_menu` VALUES ('227', '1000', '804');
INSERT INTO `gg_role_menu` VALUES ('228', '1000', '805');
INSERT INTO `gg_role_menu` VALUES ('229', '1000', '806');
INSERT INTO `gg_role_menu` VALUES ('375', '1', '1');
INSERT INTO `gg_role_menu` VALUES ('376', '1', '2');
INSERT INTO `gg_role_menu` VALUES ('377', '1', '5');
INSERT INTO `gg_role_menu` VALUES ('378', '1', '500');
INSERT INTO `gg_role_menu` VALUES ('379', '1', '501');
INSERT INTO `gg_role_menu` VALUES ('380', '1', '6');
INSERT INTO `gg_role_menu` VALUES ('381', '1', '8');
INSERT INTO `gg_role_menu` VALUES ('382', '1', '800');
INSERT INTO `gg_role_menu` VALUES ('383', '1', '801');
INSERT INTO `gg_role_menu` VALUES ('384', '1', '802');
INSERT INTO `gg_role_menu` VALUES ('385', '1', '803');
INSERT INTO `gg_role_menu` VALUES ('386', '1', '804');
INSERT INTO `gg_role_menu` VALUES ('387', '1', '805');
INSERT INTO `gg_role_menu` VALUES ('388', '1', '806');
INSERT INTO `gg_role_menu` VALUES ('389', '1', '9');
INSERT INTO `gg_role_menu` VALUES ('390', '2', '1');
INSERT INTO `gg_role_menu` VALUES ('391', '2', '2');
INSERT INTO `gg_role_menu` VALUES ('392', '2', '3');
INSERT INTO `gg_role_menu` VALUES ('393', '2', '300');
INSERT INTO `gg_role_menu` VALUES ('394', '2', '301');
INSERT INTO `gg_role_menu` VALUES ('395', '2', '302');
INSERT INTO `gg_role_menu` VALUES ('396', '2', '303');
INSERT INTO `gg_role_menu` VALUES ('397', '2', '304');
INSERT INTO `gg_role_menu` VALUES ('398', '2', '305');
INSERT INTO `gg_role_menu` VALUES ('399', '2', '11');
INSERT INTO `gg_role_menu` VALUES ('400', '2', '5');
INSERT INTO `gg_role_menu` VALUES ('401', '2', '500');
INSERT INTO `gg_role_menu` VALUES ('402', '2', '501');
INSERT INTO `gg_role_menu` VALUES ('403', '2', '6');
INSERT INTO `gg_role_menu` VALUES ('404', '2', '7');
INSERT INTO `gg_role_menu` VALUES ('405', '2', '8');
INSERT INTO `gg_role_menu` VALUES ('406', '2', '800');
INSERT INTO `gg_role_menu` VALUES ('407', '2', '801');
INSERT INTO `gg_role_menu` VALUES ('408', '2', '802');
INSERT INTO `gg_role_menu` VALUES ('409', '2', '803');
INSERT INTO `gg_role_menu` VALUES ('410', '2', '804');
INSERT INTO `gg_role_menu` VALUES ('411', '2', '805');
INSERT INTO `gg_role_menu` VALUES ('412', '2', '806');
INSERT INTO `gg_role_menu` VALUES ('413', '2', '9');
INSERT INTO `gg_role_menu` VALUES ('474', '999', '1');
INSERT INTO `gg_role_menu` VALUES ('475', '999', '2');
INSERT INTO `gg_role_menu` VALUES ('476', '999', '10008');
INSERT INTO `gg_role_menu` VALUES ('477', '999', '10009');
INSERT INTO `gg_role_menu` VALUES ('478', '999', '10010');
INSERT INTO `gg_role_menu` VALUES ('479', '999', '3');
INSERT INTO `gg_role_menu` VALUES ('480', '999', '300');
INSERT INTO `gg_role_menu` VALUES ('481', '999', '301');
INSERT INTO `gg_role_menu` VALUES ('482', '999', '302');
INSERT INTO `gg_role_menu` VALUES ('483', '999', '303');
INSERT INTO `gg_role_menu` VALUES ('484', '999', '304');
INSERT INTO `gg_role_menu` VALUES ('485', '999', '305');
INSERT INTO `gg_role_menu` VALUES ('486', '999', '11');
INSERT INTO `gg_role_menu` VALUES ('487', '999', '4');
INSERT INTO `gg_role_menu` VALUES ('488', '999', '400');
INSERT INTO `gg_role_menu` VALUES ('489', '999', '401');
INSERT INTO `gg_role_menu` VALUES ('490', '999', '402');
INSERT INTO `gg_role_menu` VALUES ('491', '999', '5');
INSERT INTO `gg_role_menu` VALUES ('492', '999', '500');
INSERT INTO `gg_role_menu` VALUES ('493', '999', '501');
INSERT INTO `gg_role_menu` VALUES ('494', '999', '6');
INSERT INTO `gg_role_menu` VALUES ('495', '999', '7');
INSERT INTO `gg_role_menu` VALUES ('496', '999', '8');
INSERT INTO `gg_role_menu` VALUES ('497', '999', '800');
INSERT INTO `gg_role_menu` VALUES ('498', '999', '801');
INSERT INTO `gg_role_menu` VALUES ('499', '999', '802');
INSERT INTO `gg_role_menu` VALUES ('500', '999', '803');
INSERT INTO `gg_role_menu` VALUES ('501', '999', '804');
INSERT INTO `gg_role_menu` VALUES ('502', '999', '805');
INSERT INTO `gg_role_menu` VALUES ('503', '999', '806');
INSERT INTO `gg_role_menu` VALUES ('504', '999', '9');
INSERT INTO `gg_role_menu` VALUES ('505', '999', '10');
INSERT INTO `gg_role_menu` VALUES ('506', '999', '1010');
INSERT INTO `gg_role_menu` VALUES ('507', '999', '1020');
INSERT INTO `gg_role_menu` VALUES ('508', '999', '1030');
INSERT INTO `gg_role_menu` VALUES ('509', '3', '1');
INSERT INTO `gg_role_menu` VALUES ('510', '3', '2');
INSERT INTO `gg_role_menu` VALUES ('511', '3', '10008');
INSERT INTO `gg_role_menu` VALUES ('512', '3', '10009');
INSERT INTO `gg_role_menu` VALUES ('513', '3', '10010');
INSERT INTO `gg_role_menu` VALUES ('514', '3', '3');
INSERT INTO `gg_role_menu` VALUES ('515', '3', '300');
INSERT INTO `gg_role_menu` VALUES ('516', '3', '301');
INSERT INTO `gg_role_menu` VALUES ('517', '3', '302');
INSERT INTO `gg_role_menu` VALUES ('518', '3', '303');
INSERT INTO `gg_role_menu` VALUES ('519', '3', '304');
INSERT INTO `gg_role_menu` VALUES ('520', '3', '305');
INSERT INTO `gg_role_menu` VALUES ('521', '3', '11');
INSERT INTO `gg_role_menu` VALUES ('522', '3', '4');
INSERT INTO `gg_role_menu` VALUES ('523', '3', '400');
INSERT INTO `gg_role_menu` VALUES ('524', '3', '401');
INSERT INTO `gg_role_menu` VALUES ('525', '3', '402');
INSERT INTO `gg_role_menu` VALUES ('526', '3', '5');
INSERT INTO `gg_role_menu` VALUES ('527', '3', '500');
INSERT INTO `gg_role_menu` VALUES ('528', '3', '501');
INSERT INTO `gg_role_menu` VALUES ('529', '3', '6');
INSERT INTO `gg_role_menu` VALUES ('530', '3', '7');
INSERT INTO `gg_role_menu` VALUES ('531', '3', '8');
INSERT INTO `gg_role_menu` VALUES ('532', '3', '800');
INSERT INTO `gg_role_menu` VALUES ('533', '3', '801');
INSERT INTO `gg_role_menu` VALUES ('534', '3', '802');
INSERT INTO `gg_role_menu` VALUES ('535', '3', '803');
INSERT INTO `gg_role_menu` VALUES ('536', '3', '804');
INSERT INTO `gg_role_menu` VALUES ('537', '3', '805');
INSERT INTO `gg_role_menu` VALUES ('538', '3', '806');
INSERT INTO `gg_role_menu` VALUES ('539', '3', '9');

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
-- Table structure for gg_user
-- ----------------------------
DROP TABLE IF EXISTS `gg_user`;
CREATE TABLE `gg_user` (
  `Id` varchar(64) NOT NULL COMMENT '用户ID',
  `Username` varchar(64) NOT NULL COMMENT '用户名: 邮箱或手机号',
  `Password` varchar(64) NOT NULL COMMENT '密码',
  `Name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `Nickname` varchar(64) NOT NULL COMMENT '昵称',
  `Email` varchar(64) NOT NULL COMMENT '电子邮箱',
  `Phone` varchar(64) NOT NULL COMMENT '电话号',
  `Photo` varchar(512) DEFAULT NULL COMMENT '头像',
  `CompanyId` varchar(64) DEFAULT NULL COMMENT '企业ID',
  `IsCompany` char(1) NOT NULL DEFAULT '0' COMMENT '企业认证[0:未认证 1:认证]',
  `LoginIp` varchar(64) DEFAULT NULL COMMENT '上次访问主机IP',
  `LoginName` varchar(64) DEFAULT NULL COMMENT '上次访问主机名称',
  `LoginTime` timestamp NULL DEFAULT NULL COMMENT '上次访问时间',
  `Status` char(1) NOT NULL DEFAULT '1' COMMENT '状态[0：冻结  1:启用]',
  `IsLogin` char(1) NOT NULL DEFAULT '1' COMMENT '是否可登陆[0：否 1：是]',
  `InsertBy` varchar(64) NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `sy_user_username` (`Username`) USING BTREE,
  KEY `sy_user_delflag` (`DelFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of gg_user
-- ----------------------------
INSERT INTO `gg_user` VALUES ('1', 'admin', 'fc0e225d4d2f156f1b9e47a29b7367d7', '管理员', '世界上最帅的超级管理员', '314975605@qq.com', '15230297756', null, '', '0', '10.8.8.89', 'PC-20150810UMXY', '2017-01-10 11:06:39', '1', '1', '1', '2016-10-25 14:36:46', '1', '2016-11-04 16:50:32', '史上最牛逼的超级管理员，不服来战。神经病啊！', '1');
INSERT INTO `gg_user` VALUES ('2', '314975605@qq.com', '4dc68dca606f4654fed887e122f298af', '李建章', '用代码构造梦想', '314975605@qq.com', '15230297756', null, null, '0', '192.168.1.5', 'DESKTOP-LT30IPS', '2016-11-26 17:39:22', '1', '1', '1', '2016-10-26 11:01:41', '2', '2016-11-08 15:53:22', '普通用户', '1');
INSERT INTO `gg_user` VALUES ('3', 'test@jokesg.com', '6b7a84703dbfbcae02cb3eb200bbcc52', '万花丛中过，片叶不沾身的测试人员', '测试', '314975605@qq.com', '15230297756', null, null, '0', '10.8.8.125', 'PC-20150810UMXY', '2016-12-20 17:39:25', '1', '1', '3', '2016-11-04 11:19:26', '3', '2016-12-09 10:24:23', null, '1');
INSERT INTO `gg_user` VALUES ('4', 'aaa', '0001', '李先生1', '李先生1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '1', '2016-11-22 09:38:53', null, '0');
INSERT INTO `gg_user` VALUES ('5', 'aaa5', '0001', '李先生2', '李先生2', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('6', 'aaa61', '0001', '李先生3', '李先生3', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('60', 'cs', '888', '李先生4', '李先生4', 'qq@', '110', null, null, '0', null, null, null, '1', '1', '1', '2014-01-01 00:00:00', '1', '2016-11-22 09:27:24', null, '0');
INSERT INTO `gg_user` VALUES ('61', 'aaa612', '0001', '李先生5', '李先生5', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('62', 'aaa63', '0001', '李先生6', '李先生6', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('63', 'aaa6123', '0001', '李先生7', '李先生7', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('64', 'a1a6', '0001', '李先生8', '李先生8', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('65', 'aa3a6', '0001', '李先生9', '李先生9', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('67', 'a3adfafa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('68', 'aagfg3a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('69', 'aagfggfh1a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('70', 'aahg23a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('71', 'abvvaa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('72', 'aagdfgvca6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('73', 'aa1bvcbc3a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('74', 'a312cbvcvbaa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('75', 'a31aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('76', 'aa1312a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('77', 'a131aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('78', 'a1313aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('79', 'a313aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('80', 'a13fsg13aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('81', 'aa3sdwe123a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('82', 'a1afdfadf31aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('83', 'aawerwerwer1313a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('84', '23ewrwer23', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('85', '22werwerw', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('86', '23werew22', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('87', 'aaawerew6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('88', 'aawerwe3a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('89', 'a32werwe32aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('90', 'a3awerwea6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('91', 'aa67wer6a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('92', 'aa6sfsfs5756a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('93', 'a56756aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('94', 'a657sfds56aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('95', 'a65756aa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('96', 'a575sdfdsfaa6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('97', 'aa6755a6', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('98', '4dsfdsf56', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');
INSERT INTO `gg_user` VALUES ('99', 'aaa46sdfdsf456', '0001', 'a', '1', '1', '1', null, null, '0', null, null, null, '1', '1', '4', '2016-11-08 15:39:57', '4', '2016-11-08 16:21:43', null, '1');

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

-- ----------------------------
-- Table structure for gg_user_popularity
-- ----------------------------
DROP TABLE IF EXISTS `gg_user_popularity`;
CREATE TABLE `gg_user_popularity` (
  `Id` varchar(64) COLLATE utf8_bin NOT NULL,
  `Popularity` bigint(20) DEFAULT '0' COMMENT '总人气',
  `DayPopularity` bigint(20) DEFAULT '0' COMMENT '日人气',
  `WeekPopularity` bigint(20) DEFAULT '0' COMMENT '周人气',
  `MonthPopularity` bigint(20) DEFAULT '0' COMMENT '月人气',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `InsertDate` datetime NOT NULL,
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Remarks` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户人气表';

-- ----------------------------
-- Records of gg_user_popularity
-- ----------------------------
INSERT INTO `gg_user_popularity` VALUES ('1', '10000', '12', '800', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('2', '4534', '12', '424', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('3', '324', '12', '12', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('5', '10000645', '12', '4542', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('6', '324', '12', '124', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('60', '234', '12', '10', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('61', '56', '12', '2', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('62', '334', '12', '1', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('63', '4343', '12', '21', '1000', '1', '2016-11-30 10:46:34', '1', '2016-11-30 10:46:36', '1', '1');
INSERT INTO `gg_user_popularity` VALUES ('69', '6', '6', '6', '6', '6', '2016-11-30 11:35:23', '6', '2016-11-30 11:35:25', '6', '6');

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
-- Table structure for gg_user_role
-- ----------------------------
DROP TABLE IF EXISTS `gg_user_role`;
CREATE TABLE `gg_user_role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) NOT NULL,
  `RoleId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `wj_user` (`UserId`),
  KEY `wj_role1` (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of gg_user_role
-- ----------------------------
INSERT INTO `gg_user_role` VALUES ('12', '1', '999');
INSERT INTO `gg_user_role` VALUES ('13', '2', '2');
INSERT INTO `gg_user_role` VALUES ('14', '2', '1');
INSERT INTO `gg_user_role` VALUES ('19', '738e925711e44d9bac7846cbea93df45', '1');
INSERT INTO `gg_user_role` VALUES ('20', '54dbc1e1a8b7488dbf4d3fcfc15c1ef6', '1');
INSERT INTO `gg_user_role` VALUES ('21', 'd51b4df187614a75920d123c809ee434', '1');
INSERT INTO `gg_user_role` VALUES ('22', '1b87c1b3d5044a24b51d386bdd7abd99', '1');
INSERT INTO `gg_user_role` VALUES ('23', 'c9fa6b2aeaef4cd2b5efd53d8d1fb951', '1');
INSERT INTO `gg_user_role` VALUES ('24', 'ff13727f95e044b6a97269b93f7438c3', '2');
INSERT INTO `gg_user_role` VALUES ('25', '6f316c74bc81408e8e330d541adec028', '1');
INSERT INTO `gg_user_role` VALUES ('26', '0e83cdaf4aea4bbaa71b669b71e7e874', '2');
INSERT INTO `gg_user_role` VALUES ('27', '9d685fc590f94eafb0f308771344d439', '1');
INSERT INTO `gg_user_role` VALUES ('28', '317ee0dea2164dec9fec58fb3cb8109a', '1');
INSERT INTO `gg_user_role` VALUES ('29', '41b129e18782483e934eeec10664e859', '2');
INSERT INTO `gg_user_role` VALUES ('30', '3', '2');

-- ----------------------------
-- Table structure for gg_videos
-- ----------------------------
DROP TABLE IF EXISTS `gg_videos`;
CREATE TABLE `gg_videos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '专辑ID',
  `Name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '视频名称',
  `SubName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '子标题',
  `Url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '视频连接',
  `PicUrl` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `Type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '视频类型[1:预告 2:正片]',
  `Language` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '语言',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='视频表';

-- ----------------------------
-- Records of gg_videos
-- ----------------------------

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

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` varchar(255) DEFAULT NULL,
  `en` enum('4','3','2','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'afas', null);

-- ----------------------------
-- Table structure for ws_top_pic
-- ----------------------------
DROP TABLE IF EXISTS `ws_top_pic`;
CREATE TABLE `ws_top_pic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `Pic` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `Title` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '图片标题',
  `Content` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '图片内容',
  `Button1` varchar(8) COLLATE utf8_bin DEFAULT '#' COMMENT '按钮一',
  `Button2` varchar(8) COLLATE utf8_bin DEFAULT '#' COMMENT '按钮二',
  `InsertBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `InsertDate` datetime NOT NULL COMMENT '创建日期',
  `UpdateBy` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `UpdateDate` datetime NOT NULL COMMENT '更新日期',
  `Remarks` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `DelFlag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记[0:删除; 1：未删除;  2:审核]',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='首页顶部大图表';

-- ----------------------------
-- Records of ws_top_pic
-- ----------------------------
