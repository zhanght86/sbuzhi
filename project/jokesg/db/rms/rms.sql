/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-12-20 10:15:22
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `gg_jokesg` VALUES ('70', '1', '', '琅琊榜23', '', '/ui/gg/images/a1.jpg', '1', '2', '1', '', '2', '1', '2016-11-09 21:15:25', '1', '2016-11-09 21:15:25', '原创', '1');
INSERT INTO `gg_jokesg` VALUES ('9df09aae24c143a4a7ffb1a1a2633bd3', '1', null, '王德顺励志视频', 'OSS_JOKESG_9df09aae24c143a4a7ffb1a1a2633bd3', 'OSS_PHOTO_9df09aae24c143a4a7ffb1a1a2633bd3', null, '1', '1', '', '118', '1', '2016-11-13 15:23:22', '1', '2016-11-13 15:23:22', '撒的发放', '1');
INSERT INTO `gg_jokesg` VALUES ('b2bcc0e0693c4cf18ab3294a92f788ea', '2', null, '伪装者', null, '/ui/gg/images/a11.jpg', null, '1', '1', null, '28', '2', '2016-11-10 14:10:18', '2', '2016-11-10 14:10:18', null, '1');
INSERT INTO `gg_jokesg` VALUES ('b6f64d4b9fa945b69359ba84ae535c59', '1', null, '总是有人要赢得，那为什么不是你', 'OSS_JOKESG_b6f64d4b9fa945b69359ba84ae535c59', 'OSS_PHOTO_b6f64d4b9fa945b69359ba84ae535c59', null, '1', '1', '', '63', '1', '2016-11-25 11:28:34', '1', '2016-11-25 11:28:34', '励志短片2', '1');
INSERT INTO `gg_jokesg` VALUES ('e2fc4cc229c44c739f1b0371b4a99f6e', '1', null, '我是天蝎座', 'OSS_JOKESG_e2fc4cc229c44c739f1b0371b4a99f6e', 'OSS_PHOTO_e2fc4cc229c44c739f1b0371b4a99f6e', null, '1', '1', '', '21', '1', '2016-11-25 11:20:55', '1', '2016-11-25 11:20:55', '天蝎座', '1');

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
