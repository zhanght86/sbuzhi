/*
Navicat MySQL Data Transfer

Source Server         : 开发环境
Source Server Version : 50155
Source Host           : 10.8.10.216:3306
Source Database       : ee

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2016-12-20 10:10:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_code
-- ----------------------------
DROP TABLE IF EXISTS `gg_code`;
CREATE TABLE `gg_code` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `Code` varchar(64) DEFAULT NULL COMMENT '状态码',
  `Type` char(1) NOT NULL COMMENT '验证码类型[1:账号激活验证  2：手机登录验证]',
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
INSERT INTO `gg_menu` VALUES ('3', '1', null, '我的', '30', '', 'fa fa-user-circle', '', '1', '1', '2016-09-24 16:37:51', '1', '2016-12-12 09:07:32', '', '1');
INSERT INTO `gg_menu` VALUES ('4', '1', null, '发布', '40', '/ims/blog.do', 'fa fa-file-text-o', '', '1', '1', '2016-12-01 15:40:42', '1', '2016-12-01 15:40:42', '个人空间', '1');
INSERT INTO `gg_menu` VALUES ('5', '1', null, '企业', '50', null, 'fa fa-female', null, '1', '1', '2016-09-25 14:55:09', '1', '2016-09-25 14:55:10', null, '1');
INSERT INTO `gg_menu` VALUES ('6', '1', null, '艺术家', '60', '#', 'lnr lnr-users', null, '1', '1', '2016-09-25 14:55:28', '1', '2016-09-25 14:55:30', null, '1');
INSERT INTO `gg_menu` VALUES ('7', '1', null, '上传', '70', '/rms/video/form.do', 'fa fa-upload', 'view', '1', '1', '2016-10-26 10:14:51', '1', '2016-10-26 10:14:55', null, '1');
INSERT INTO `gg_menu` VALUES ('8', '1', null, '所有作品', '80', null, 'fa fa-chevron-circle-down', null, '1', '1', '2016-10-26 10:14:59', '1', '2016-10-26 10:14:57', null, '1');
INSERT INTO `gg_menu` VALUES ('9', '1', null, '联系我们', '90', '#', 'fa fa-volume-control-phone', null, '1', '1', '2016-09-25 14:55:59', '1', '2016-09-25 14:56:00', null, '1');
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
INSERT INTO `gg_menu` VALUES ('10010', '10008', null, '爱奇异点播', '20', '/rms/aqiy.do', '', '', '1', '1', '2016-12-12 09:13:56', '1', '2016-12-12 09:19:45', '', '1');

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
INSERT INTO `gg_user` VALUES ('1', 'admin', 'fc0e225d4d2f156f1b9e47a29b7367d7', '管理员', '世界上最帅的超级管理员', '314975605@qq.com', '15230297756', null, '', '0', '10.8.8.125', 'PC-20150810UMXY', '2016-12-19 15:03:18', '1', '1', '1', '2016-10-25 14:36:46', '1', '2016-11-04 16:50:32', '史上最牛逼的超级管理员，不服来战。神经病啊！', '1');
INSERT INTO `gg_user` VALUES ('2', '314975605@qq.com', '4dc68dca606f4654fed887e122f298af', '李建章', '用代码构造梦想', '314975605@qq.com', '15230297756', null, null, '0', '192.168.1.5', 'DESKTOP-LT30IPS', '2016-11-26 17:39:22', '1', '1', '1', '2016-10-26 11:01:41', '2', '2016-11-08 15:53:22', '普通用户', '1');
INSERT INTO `gg_user` VALUES ('3', 'test@jokesg.com', '6b7a84703dbfbcae02cb3eb200bbcc52', '测试账号', '测试', '314975605@qq.com', '15230297756', null, null, '0', '192.168.1.3', 'DESKTOP-LT30IPS', '2016-11-26 22:58:35', '1', '1', '3', '2016-11-04 11:19:26', '3', '2016-12-09 10:24:23', null, '1');
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
