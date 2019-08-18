/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : lemocms

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-18 15:23:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lm_admin
-- ----------------------------
DROP TABLE IF EXISTS `lm_admin`;
CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `status` tinyint(2) DEFAULT '1' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员';

-- ----------------------------
-- Records of lm_admin
-- ----------------------------
INSERT INTO `lm_admin` VALUES ('1', 'admin', '25d55ad283aa400af464c76d713c07ad', '1', '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', '1', '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', '1482132862', '1566111856');
INSERT INTO `lm_admin` VALUES ('2', 'yuege', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', '1', '/storage/uploads/20190817\\dc25c2714c46a0d2bee894a7d05eb15f.png', '1535512393', '1566030896');
INSERT INTO `lm_admin` VALUES ('3', 'dandan', '69d9387a9f1e957872943a2b957e4947', '2', '994927909@qq.com', null, '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', '1564041575', '1566001700');
INSERT INTO `lm_admin` VALUES ('4', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '1', '994927909@qq.com', null, '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\824fbacce27ce094eb3b1e115dfdb709.png', '1565941890', '1565942219');
INSERT INTO `lm_admin` VALUES ('5', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', null, '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', '1565942044', '1565942280');
INSERT INTO `lm_admin` VALUES ('6', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '2', '994927909@qq.com', null, '18397423845', '119.122.91.146', '0', '1', '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', '1565942140', '1565942281');

-- ----------------------------
-- Table structure for lm_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `lm_admin_log`;
CREATE TABLE `lm_admin_log` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(50) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1595 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_admin_log
-- ----------------------------
INSERT INTO `lm_admin_log` VALUES ('1040', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566034988', '1566034988', '1');
INSERT INTO `lm_admin_log` VALUES ('1041', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566034988', '1566034988', '1');
INSERT INTO `lm_admin_log` VALUES ('1042', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035326', '1566035326', '1');
INSERT INTO `lm_admin_log` VALUES ('1043', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035326', '1566035326', '1');
INSERT INTO `lm_admin_log` VALUES ('1044', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035327', '1566035327', '1');
INSERT INTO `lm_admin_log` VALUES ('1045', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035327', '1566035327', '1');
INSERT INTO `lm_admin_log` VALUES ('1046', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035327', '1566035327', '1');
INSERT INTO `lm_admin_log` VALUES ('1047', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035328', '1566035328', '1');
INSERT INTO `lm_admin_log` VALUES ('1048', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566035329', '1566035329', '1');
INSERT INTO `lm_admin_log` VALUES ('1049', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"a4fm\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044407', '1566044407', '1');
INSERT INTO `lm_admin_log` VALUES ('1050', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044413', '1566044413', '1');
INSERT INTO `lm_admin_log` VALUES ('1051', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044414', '1566044414', '1');
INSERT INTO `lm_admin_log` VALUES ('1052', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044415', '1566044415', '1');
INSERT INTO `lm_admin_log` VALUES ('1053', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044415', '1566044415', '1');
INSERT INTO `lm_admin_log` VALUES ('1054', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044416', '1566044416', '1');
INSERT INTO `lm_admin_log` VALUES ('1055', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044417', '1566044417', '1');
INSERT INTO `lm_admin_log` VALUES ('1056', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044419', '1566044419', '1');
INSERT INTO `lm_admin_log` VALUES ('1057', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044419', '1566044419', '1');
INSERT INTO `lm_admin_log` VALUES ('1058', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044457', '1566044457', '1');
INSERT INTO `lm_admin_log` VALUES ('1059', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044460', '1566044460', '1');
INSERT INTO `lm_admin_log` VALUES ('1060', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044460', '1566044460', '1');
INSERT INTO `lm_admin_log` VALUES ('1061', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044470', '1566044470', '1');
INSERT INTO `lm_admin_log` VALUES ('1062', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044475', '1566044475', '1');
INSERT INTO `lm_admin_log` VALUES ('1063', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044477', '1566044477', '1');
INSERT INTO `lm_admin_log` VALUES ('1064', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566044479', '1566044479', '1');
INSERT INTO `lm_admin_log` VALUES ('1065', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049544', '1566049544', '1');
INSERT INTO `lm_admin_log` VALUES ('1066', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049545', '1566049545', '1');
INSERT INTO `lm_admin_log` VALUES ('1067', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049551', '1566049551', '1');
INSERT INTO `lm_admin_log` VALUES ('1068', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049551', '1566049551', '1');
INSERT INTO `lm_admin_log` VALUES ('1069', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049554', '1566049554', '1');
INSERT INTO `lm_admin_log` VALUES ('1070', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049554', '1566049554', '1');
INSERT INTO `lm_admin_log` VALUES ('1071', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049556', '1566049556', '1');
INSERT INTO `lm_admin_log` VALUES ('1072', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049556', '1566049556', '1');
INSERT INTO `lm_admin_log` VALUES ('1073', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049559', '1566049559', '1');
INSERT INTO `lm_admin_log` VALUES ('1074', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049559', '1566049559', '1');
INSERT INTO `lm_admin_log` VALUES ('1075', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049566', '1566049566', '1');
INSERT INTO `lm_admin_log` VALUES ('1076', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049566', '1566049566', '1');
INSERT INTO `lm_admin_log` VALUES ('1077', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049611', '1566049611', '1');
INSERT INTO `lm_admin_log` VALUES ('1078', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"5cda\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049723', '1566049723', '1');
INSERT INTO `lm_admin_log` VALUES ('1079', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049729', '1566049729', '1');
INSERT INTO `lm_admin_log` VALUES ('1080', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049729', '1566049729', '1');
INSERT INTO `lm_admin_log` VALUES ('1081', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049732', '1566049732', '1');
INSERT INTO `lm_admin_log` VALUES ('1082', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049732', '1566049732', '1');
INSERT INTO `lm_admin_log` VALUES ('1083', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049734', '1566049734', '1');
INSERT INTO `lm_admin_log` VALUES ('1084', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049735', '1566049735', '1');
INSERT INTO `lm_admin_log` VALUES ('1085', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049736', '1566049736', '1');
INSERT INTO `lm_admin_log` VALUES ('1086', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049736', '1566049736', '1');
INSERT INTO `lm_admin_log` VALUES ('1087', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049738', '1566049738', '1');
INSERT INTO `lm_admin_log` VALUES ('1088', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049738', '1566049738', '1');
INSERT INTO `lm_admin_log` VALUES ('1089', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049741', '1566049741', '1');
INSERT INTO `lm_admin_log` VALUES ('1090', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049741', '1566049741', '1');
INSERT INTO `lm_admin_log` VALUES ('1091', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049847', '1566049847', '1');
INSERT INTO `lm_admin_log` VALUES ('1092', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049864', '1566049864', '1');
INSERT INTO `lm_admin_log` VALUES ('1093', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049891', '1566049891', '1');
INSERT INTO `lm_admin_log` VALUES ('1094', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049915', '1566049915', '1');
INSERT INTO `lm_admin_log` VALUES ('1095', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049935', '1566049935', '1');
INSERT INTO `lm_admin_log` VALUES ('1096', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566049978', '1566049978', '1');
INSERT INTO `lm_admin_log` VALUES ('1097', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"wrp8\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050055', '1566050055', '1');
INSERT INTO `lm_admin_log` VALUES ('1098', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050062', '1566050062', '1');
INSERT INTO `lm_admin_log` VALUES ('1099', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050062', '1566050062', '1');
INSERT INTO `lm_admin_log` VALUES ('1100', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050078', '1566050078', '1');
INSERT INTO `lm_admin_log` VALUES ('1101', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050078', '1566050078', '1');
INSERT INTO `lm_admin_log` VALUES ('1102', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050081', '1566050081', '1');
INSERT INTO `lm_admin_log` VALUES ('1103', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050129', '1566050129', '1');
INSERT INTO `lm_admin_log` VALUES ('1104', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050152', '1566050152', '1');
INSERT INTO `lm_admin_log` VALUES ('1105', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050157', '1566050157', '1');
INSERT INTO `lm_admin_log` VALUES ('1106', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050175', '1566050175', '1');
INSERT INTO `lm_admin_log` VALUES ('1107', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050213', '1566050213', '1');
INSERT INTO `lm_admin_log` VALUES ('1108', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050213', '1566050213', '1');
INSERT INTO `lm_admin_log` VALUES ('1109', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050217', '1566050217', '1');
INSERT INTO `lm_admin_log` VALUES ('1110', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050217', '1566050217', '1');
INSERT INTO `lm_admin_log` VALUES ('1111', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050218', '1566050218', '1');
INSERT INTO `lm_admin_log` VALUES ('1112', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050218', '1566050218', '1');
INSERT INTO `lm_admin_log` VALUES ('1113', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050233', '1566050233', '1');
INSERT INTO `lm_admin_log` VALUES ('1114', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050233', '1566050233', '1');
INSERT INTO `lm_admin_log` VALUES ('1115', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566050769', '1566050769', '1');
INSERT INTO `lm_admin_log` VALUES ('1116', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566051002', '1566051002', '1');
INSERT INTO `lm_admin_log` VALUES ('1117', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566051002', '1566051002', '1');
INSERT INTO `lm_admin_log` VALUES ('1118', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053599', '1566053599', '1');
INSERT INTO `lm_admin_log` VALUES ('1119', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053609', '1566053609', '1');
INSERT INTO `lm_admin_log` VALUES ('1120', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053609', '1566053609', '1');
INSERT INTO `lm_admin_log` VALUES ('1121', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053614', '1566053614', '1');
INSERT INTO `lm_admin_log` VALUES ('1122', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053615', '1566053615', '1');
INSERT INTO `lm_admin_log` VALUES ('1123', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053652', '1566053652', '1');
INSERT INTO `lm_admin_log` VALUES ('1124', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053652', '1566053652', '1');
INSERT INTO `lm_admin_log` VALUES ('1125', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053654', '1566053654', '1');
INSERT INTO `lm_admin_log` VALUES ('1126', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053654', '1566053654', '1');
INSERT INTO `lm_admin_log` VALUES ('1127', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053656', '1566053656', '1');
INSERT INTO `lm_admin_log` VALUES ('1128', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053656', '1566053656', '1');
INSERT INTO `lm_admin_log` VALUES ('1129', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053748', '1566053748', '1');
INSERT INTO `lm_admin_log` VALUES ('1130', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053748', '1566053748', '1');
INSERT INTO `lm_admin_log` VALUES ('1131', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053750', '1566053750', '1');
INSERT INTO `lm_admin_log` VALUES ('1132', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053750', '1566053750', '1');
INSERT INTO `lm_admin_log` VALUES ('1133', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053751', '1566053751', '1');
INSERT INTO `lm_admin_log` VALUES ('1134', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566053751', '1566053751', '1');
INSERT INTO `lm_admin_log` VALUES ('1135', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"fsfy\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091099', '1566091099', '1');
INSERT INTO `lm_admin_log` VALUES ('1136', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"h2bu\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091105', '1566091105', '1');
INSERT INTO `lm_admin_log` VALUES ('1137', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091112', '1566091112', '1');
INSERT INTO `lm_admin_log` VALUES ('1138', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091112', '1566091112', '1');
INSERT INTO `lm_admin_log` VALUES ('1139', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091114', '1566091114', '1');
INSERT INTO `lm_admin_log` VALUES ('1140', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091114', '1566091114', '1');
INSERT INTO `lm_admin_log` VALUES ('1141', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091116', '1566091116', '1');
INSERT INTO `lm_admin_log` VALUES ('1142', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091116', '1566091116', '1');
INSERT INTO `lm_admin_log` VALUES ('1143', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091119', '1566091119', '1');
INSERT INTO `lm_admin_log` VALUES ('1144', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091119', '1566091119', '1');
INSERT INTO `lm_admin_log` VALUES ('1145', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091121', '1566091121', '1');
INSERT INTO `lm_admin_log` VALUES ('1146', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091121', '1566091121', '1');
INSERT INTO `lm_admin_log` VALUES ('1147', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091123', '1566091123', '1');
INSERT INTO `lm_admin_log` VALUES ('1148', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091123', '1566091123', '1');
INSERT INTO `lm_admin_log` VALUES ('1149', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091124', '1566091124', '1');
INSERT INTO `lm_admin_log` VALUES ('1150', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091125', '1566091125', '1');
INSERT INTO `lm_admin_log` VALUES ('1151', '1', 'admin', '/index.php/admin/addons/index.html', null, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091138', '1566091138', '1');
INSERT INTO `lm_admin_log` VALUES ('1152', '1', 'admin', '/index.php/admin/addons/index.html', null, '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091138', '1566091138', '1');
INSERT INTO `lm_admin_log` VALUES ('1153', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091144', '1566091144', '1');
INSERT INTO `lm_admin_log` VALUES ('1154', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091144', '1566091144', '1');
INSERT INTO `lm_admin_log` VALUES ('1155', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091156', '1566091156', '1');
INSERT INTO `lm_admin_log` VALUES ('1156', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091157', '1566091157', '1');
INSERT INTO `lm_admin_log` VALUES ('1157', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091158', '1566091158', '1');
INSERT INTO `lm_admin_log` VALUES ('1158', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091158', '1566091158', '1');
INSERT INTO `lm_admin_log` VALUES ('1159', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091173', '1566091173', '1');
INSERT INTO `lm_admin_log` VALUES ('1160', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091175', '1566091175', '1');
INSERT INTO `lm_admin_log` VALUES ('1161', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091175', '1566091175', '1');
INSERT INTO `lm_admin_log` VALUES ('1162', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091217', '1566091217', '1');
INSERT INTO `lm_admin_log` VALUES ('1163', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091217', '1566091217', '1');
INSERT INTO `lm_admin_log` VALUES ('1164', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091218', '1566091218', '1');
INSERT INTO `lm_admin_log` VALUES ('1165', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091218', '1566091218', '1');
INSERT INTO `lm_admin_log` VALUES ('1166', '1', 'admin', '/index.php/admin/database/repair.html', '{\"tables\":[\"lm_ad\",\"lm_ad_position\",\"lm_admin\",\"lm_admin_log\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_category\",\"lm_config\",\"lm_link\",\"lm_oauth2_client\"]}', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091225', '1566091225', '1');
INSERT INTO `lm_admin_log` VALUES ('1167', '1', 'admin', '/index.php/admin/database/repair.html', '{\"tables\":[\"lm_ad\",\"lm_ad_position\",\"lm_admin\",\"lm_admin_log\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_category\",\"lm_config\",\"lm_link\",\"lm_oauth2_client\"]}', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091229', '1566091229', '1');
INSERT INTO `lm_admin_log` VALUES ('1168', '1', 'admin', '/index.php/admin/database/optimize.html', '{\"tables\":[\"lm_ad\",\"lm_ad_position\",\"lm_admin\",\"lm_admin_log\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_category\",\"lm_config\",\"lm_link\",\"lm_oauth2_client\"]}', '数据库优化', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091230', '1566091230', '1');
INSERT INTO `lm_admin_log` VALUES ('1169', '1', 'admin', '/index.php/admin/database/backup.html', '{\"tables\":[\"lm_ad\",\"lm_ad_position\",\"lm_admin\",\"lm_admin_log\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_category\",\"lm_config\",\"lm_link\",\"lm_oauth2_client\"]}', '数据库备份', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091242', '1566091242', '1');
INSERT INTO `lm_admin_log` VALUES ('1170', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091248', '1566091248', '1');
INSERT INTO `lm_admin_log` VALUES ('1171', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091250', '1566091250', '1');
INSERT INTO `lm_admin_log` VALUES ('1172', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091252', '1566091252', '1');
INSERT INTO `lm_admin_log` VALUES ('1173', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091292', '1566091292', '1');
INSERT INTO `lm_admin_log` VALUES ('1174', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091292', '1566091292', '1');
INSERT INTO `lm_admin_log` VALUES ('1175', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091313', '1566091313', '1');
INSERT INTO `lm_admin_log` VALUES ('1176', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091315', '1566091315', '1');
INSERT INTO `lm_admin_log` VALUES ('1177', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091430', '1566091430', '1');
INSERT INTO `lm_admin_log` VALUES ('1178', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091431', '1566091431', '1');
INSERT INTO `lm_admin_log` VALUES ('1179', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091572', '1566091572', '1');
INSERT INTO `lm_admin_log` VALUES ('1180', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091844', '1566091844', '1');
INSERT INTO `lm_admin_log` VALUES ('1181', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091844', '1566091844', '1');
INSERT INTO `lm_admin_log` VALUES ('1182', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091845', '1566091845', '1');
INSERT INTO `lm_admin_log` VALUES ('1183', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091845', '1566091845', '1');
INSERT INTO `lm_admin_log` VALUES ('1184', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091848', '1566091848', '1');
INSERT INTO `lm_admin_log` VALUES ('1185', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091848', '1566091848', '1');
INSERT INTO `lm_admin_log` VALUES ('1186', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566091973', '1566091973', '1');
INSERT INTO `lm_admin_log` VALUES ('1187', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092192', '1566092192', '1');
INSERT INTO `lm_admin_log` VALUES ('1188', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092200', '1566092200', '1');
INSERT INTO `lm_admin_log` VALUES ('1189', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092200', '1566092200', '1');
INSERT INTO `lm_admin_log` VALUES ('1190', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092284', '1566092284', '1');
INSERT INTO `lm_admin_log` VALUES ('1191', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092288', '1566092288', '1');
INSERT INTO `lm_admin_log` VALUES ('1192', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092307', '1566092307', '1');
INSERT INTO `lm_admin_log` VALUES ('1193', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092308', '1566092308', '1');
INSERT INTO `lm_admin_log` VALUES ('1194', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092493', '1566092493', '1');
INSERT INTO `lm_admin_log` VALUES ('1195', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092577', '1566092577', '1');
INSERT INTO `lm_admin_log` VALUES ('1196', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092691', '1566092691', '1');
INSERT INTO `lm_admin_log` VALUES ('1197', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092697', '1566092697', '1');
INSERT INTO `lm_admin_log` VALUES ('1198', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092790', '1566092790', '1');
INSERT INTO `lm_admin_log` VALUES ('1199', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092790', '1566092790', '1');
INSERT INTO `lm_admin_log` VALUES ('1200', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092939', '1566092939', '1');
INSERT INTO `lm_admin_log` VALUES ('1201', '1', 'admin', '/index.php/admin/index/link.html', null, '链接管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092949', '1566092949', '1');
INSERT INTO `lm_admin_log` VALUES ('1202', '1', 'admin', '/index.php/admin/index/ad.html', null, '广告管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092966', '1566092966', '1');
INSERT INTO `lm_admin_log` VALUES ('1203', '1', 'admin', '/index.php/admin/index/ad.html', null, '广告管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092985', '1566092985', '1');
INSERT INTO `lm_admin_log` VALUES ('1204', '1', 'admin', '/index.php/admin/index/link.html', null, '链接管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566092987', '1566092987', '1');
INSERT INTO `lm_admin_log` VALUES ('1205', '1', 'admin', '/index.php/admin/index/ad.html', null, '广告管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093132', '1566093132', '1');
INSERT INTO `lm_admin_log` VALUES ('1206', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093500', '1566093500', '1');
INSERT INTO `lm_admin_log` VALUES ('1207', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093500', '1566093500', '1');
INSERT INTO `lm_admin_log` VALUES ('1208', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093504', '1566093504', '1');
INSERT INTO `lm_admin_log` VALUES ('1209', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093505', '1566093505', '1');
INSERT INTO `lm_admin_log` VALUES ('1210', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093523', '1566093523', '1');
INSERT INTO `lm_admin_log` VALUES ('1211', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093524', '1566093524', '1');
INSERT INTO `lm_admin_log` VALUES ('1212', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093528', '1566093528', '1');
INSERT INTO `lm_admin_log` VALUES ('1213', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093528', '1566093528', '1');
INSERT INTO `lm_admin_log` VALUES ('1214', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566093551', '1566093551', '1');
INSERT INTO `lm_admin_log` VALUES ('1215', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566095592', '1566095592', '1');
INSERT INTO `lm_admin_log` VALUES ('1216', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566095592', '1566095592', '1');
INSERT INTO `lm_admin_log` VALUES ('1217', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566095674', '1566095674', '1');
INSERT INTO `lm_admin_log` VALUES ('1218', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566095674', '1566095674', '1');
INSERT INTO `lm_admin_log` VALUES ('1219', '0', 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"pj55\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096275', '1566096275', '1');
INSERT INTO `lm_admin_log` VALUES ('1220', '0', 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"qy8p\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096301', '1566096301', '1');
INSERT INTO `lm_admin_log` VALUES ('1221', '0', 'Unknown', '/index.php/admin/login/index', '{\"username\":\"admin\",\"captcha\":\"gruk\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096336', '1566096336', '1');
INSERT INTO `lm_admin_log` VALUES ('1222', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096346', '1566096346', '1');
INSERT INTO `lm_admin_log` VALUES ('1223', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096505', '1566096505', '1');
INSERT INTO `lm_admin_log` VALUES ('1224', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096505', '1566096505', '1');
INSERT INTO `lm_admin_log` VALUES ('1225', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096521', '1566096521', '1');
INSERT INTO `lm_admin_log` VALUES ('1226', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096522', '1566096522', '1');
INSERT INTO `lm_admin_log` VALUES ('1227', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096535', '1566096535', '1');
INSERT INTO `lm_admin_log` VALUES ('1228', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096580', '1566096580', '1');
INSERT INTO `lm_admin_log` VALUES ('1229', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096607', '1566096607', '1');
INSERT INTO `lm_admin_log` VALUES ('1230', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096636', '1566096636', '1');
INSERT INTO `lm_admin_log` VALUES ('1231', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096655', '1566096655', '1');
INSERT INTO `lm_admin_log` VALUES ('1232', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096684', '1566096684', '1');
INSERT INTO `lm_admin_log` VALUES ('1233', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096716', '1566096716', '1');
INSERT INTO `lm_admin_log` VALUES ('1234', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096809', '1566096809', '1');
INSERT INTO `lm_admin_log` VALUES ('1235', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096914', '1566096914', '1');
INSERT INTO `lm_admin_log` VALUES ('1236', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096929', '1566096929', '1');
INSERT INTO `lm_admin_log` VALUES ('1237', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096935', '1566096935', '1');
INSERT INTO `lm_admin_log` VALUES ('1238', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096948', '1566096948', '1');
INSERT INTO `lm_admin_log` VALUES ('1239', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096949', '1566096949', '1');
INSERT INTO `lm_admin_log` VALUES ('1240', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096949', '1566096949', '1');
INSERT INTO `lm_admin_log` VALUES ('1241', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096952', '1566096952', '1');
INSERT INTO `lm_admin_log` VALUES ('1242', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096952', '1566096952', '1');
INSERT INTO `lm_admin_log` VALUES ('1243', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096954', '1566096954', '1');
INSERT INTO `lm_admin_log` VALUES ('1244', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096954', '1566096954', '1');
INSERT INTO `lm_admin_log` VALUES ('1245', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096958', '1566096958', '1');
INSERT INTO `lm_admin_log` VALUES ('1246', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566096958', '1566096958', '1');
INSERT INTO `lm_admin_log` VALUES ('1247', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097036', '1566097036', '1');
INSERT INTO `lm_admin_log` VALUES ('1248', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097158', '1566097158', '1');
INSERT INTO `lm_admin_log` VALUES ('1249', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097209', '1566097209', '1');
INSERT INTO `lm_admin_log` VALUES ('1250', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097227', '1566097227', '1');
INSERT INTO `lm_admin_log` VALUES ('1251', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097248', '1566097248', '1');
INSERT INTO `lm_admin_log` VALUES ('1252', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097253', '1566097253', '1');
INSERT INTO `lm_admin_log` VALUES ('1253', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097254', '1566097254', '1');
INSERT INTO `lm_admin_log` VALUES ('1254', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097257', '1566097257', '1');
INSERT INTO `lm_admin_log` VALUES ('1255', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097257', '1566097257', '1');
INSERT INTO `lm_admin_log` VALUES ('1256', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097259', '1566097259', '1');
INSERT INTO `lm_admin_log` VALUES ('1257', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097259', '1566097259', '1');
INSERT INTO `lm_admin_log` VALUES ('1258', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097297', '1566097297', '1');
INSERT INTO `lm_admin_log` VALUES ('1259', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097299', '1566097299', '1');
INSERT INTO `lm_admin_log` VALUES ('1260', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097357', '1566097357', '1');
INSERT INTO `lm_admin_log` VALUES ('1261', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097369', '1566097369', '1');
INSERT INTO `lm_admin_log` VALUES ('1262', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097406', '1566097406', '1');
INSERT INTO `lm_admin_log` VALUES ('1263', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097445', '1566097445', '1');
INSERT INTO `lm_admin_log` VALUES ('1264', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097460', '1566097460', '1');
INSERT INTO `lm_admin_log` VALUES ('1265', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097465', '1566097465', '1');
INSERT INTO `lm_admin_log` VALUES ('1266', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097467', '1566097467', '1');
INSERT INTO `lm_admin_log` VALUES ('1267', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097468', '1566097468', '1');
INSERT INTO `lm_admin_log` VALUES ('1268', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097478', '1566097478', '1');
INSERT INTO `lm_admin_log` VALUES ('1269', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097481', '1566097481', '1');
INSERT INTO `lm_admin_log` VALUES ('1270', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097483', '1566097483', '1');
INSERT INTO `lm_admin_log` VALUES ('1271', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097487', '1566097487', '1');
INSERT INTO `lm_admin_log` VALUES ('1272', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097499', '1566097499', '1');
INSERT INTO `lm_admin_log` VALUES ('1273', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097527', '1566097527', '1');
INSERT INTO `lm_admin_log` VALUES ('1274', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097550', '1566097550', '1');
INSERT INTO `lm_admin_log` VALUES ('1275', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097598', '1566097598', '1');
INSERT INTO `lm_admin_log` VALUES ('1276', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097608', '1566097608', '1');
INSERT INTO `lm_admin_log` VALUES ('1277', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097673', '1566097673', '1');
INSERT INTO `lm_admin_log` VALUES ('1278', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097681', '1566097681', '1');
INSERT INTO `lm_admin_log` VALUES ('1279', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097754', '1566097754', '1');
INSERT INTO `lm_admin_log` VALUES ('1280', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097761', '1566097761', '1');
INSERT INTO `lm_admin_log` VALUES ('1281', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097776', '1566097776', '1');
INSERT INTO `lm_admin_log` VALUES ('1282', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097786', '1566097786', '1');
INSERT INTO `lm_admin_log` VALUES ('1283', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097827', '1566097827', '1');
INSERT INTO `lm_admin_log` VALUES ('1284', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097878', '1566097878', '1');
INSERT INTO `lm_admin_log` VALUES ('1285', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097957', '1566097957', '1');
INSERT INTO `lm_admin_log` VALUES ('1286', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566097970', '1566097970', '1');
INSERT INTO `lm_admin_log` VALUES ('1287', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098005', '1566098005', '1');
INSERT INTO `lm_admin_log` VALUES ('1288', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098008', '1566098008', '1');
INSERT INTO `lm_admin_log` VALUES ('1289', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098008', '1566098008', '1');
INSERT INTO `lm_admin_log` VALUES ('1290', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098009', '1566098009', '1');
INSERT INTO `lm_admin_log` VALUES ('1291', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098013', '1566098013', '1');
INSERT INTO `lm_admin_log` VALUES ('1292', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098014', '1566098014', '1');
INSERT INTO `lm_admin_log` VALUES ('1293', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098023', '1566098023', '1');
INSERT INTO `lm_admin_log` VALUES ('1294', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098026', '1566098026', '1');
INSERT INTO `lm_admin_log` VALUES ('1295', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098029', '1566098029', '1');
INSERT INTO `lm_admin_log` VALUES ('1296', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098031', '1566098031', '1');
INSERT INTO `lm_admin_log` VALUES ('1297', '1', 'admin', '/index.php/admin/ad/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098033', '1566098033', '1');
INSERT INTO `lm_admin_log` VALUES ('1298', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098035', '1566098035', '1');
INSERT INTO `lm_admin_log` VALUES ('1299', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098122', '1566098122', '1');
INSERT INTO `lm_admin_log` VALUES ('1300', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098189', '1566098189', '1');
INSERT INTO `lm_admin_log` VALUES ('1301', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098204', '1566098204', '1');
INSERT INTO `lm_admin_log` VALUES ('1302', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098316', '1566098316', '1');
INSERT INTO `lm_admin_log` VALUES ('1303', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098381', '1566098381', '1');
INSERT INTO `lm_admin_log` VALUES ('1304', '1', 'admin', '/index.php/admin/ad/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566098565', '1566098565', '1');
INSERT INTO `lm_admin_log` VALUES ('1305', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099758', '1566099758', '1');
INSERT INTO `lm_admin_log` VALUES ('1306', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099766', '1566099766', '1');
INSERT INTO `lm_admin_log` VALUES ('1307', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099766', '1566099766', '1');
INSERT INTO `lm_admin_log` VALUES ('1308', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099784', '1566099784', '1');
INSERT INTO `lm_admin_log` VALUES ('1309', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099797', '1566099797', '1');
INSERT INTO `lm_admin_log` VALUES ('1310', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566099838', '1566099838', '1');
INSERT INTO `lm_admin_log` VALUES ('1311', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100059', '1566100059', '1');
INSERT INTO `lm_admin_log` VALUES ('1312', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100361', '1566100361', '1');
INSERT INTO `lm_admin_log` VALUES ('1313', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100508', '1566100508', '1');
INSERT INTO `lm_admin_log` VALUES ('1314', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100561', '1566100561', '1');
INSERT INTO `lm_admin_log` VALUES ('1315', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100569', '1566100569', '1');
INSERT INTO `lm_admin_log` VALUES ('1316', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100607', '1566100607', '1');
INSERT INTO `lm_admin_log` VALUES ('1317', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100621', '1566100621', '1');
INSERT INTO `lm_admin_log` VALUES ('1318', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100621', '1566100621', '1');
INSERT INTO `lm_admin_log` VALUES ('1319', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100949', '1566100949', '1');
INSERT INTO `lm_admin_log` VALUES ('1320', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100949', '1566100949', '1');
INSERT INTO `lm_admin_log` VALUES ('1321', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100954', '1566100954', '1');
INSERT INTO `lm_admin_log` VALUES ('1322', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566100986', '1566100986', '1');
INSERT INTO `lm_admin_log` VALUES ('1323', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101022', '1566101022', '1');
INSERT INTO `lm_admin_log` VALUES ('1324', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101042', '1566101042', '1');
INSERT INTO `lm_admin_log` VALUES ('1325', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101054', '1566101054', '1');
INSERT INTO `lm_admin_log` VALUES ('1326', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101113', '1566101113', '1');
INSERT INTO `lm_admin_log` VALUES ('1327', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101252', '1566101252', '1');
INSERT INTO `lm_admin_log` VALUES ('1328', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101398', '1566101398', '1');
INSERT INTO `lm_admin_log` VALUES ('1329', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101398', '1566101398', '1');
INSERT INTO `lm_admin_log` VALUES ('1330', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101491', '1566101491', '1');
INSERT INTO `lm_admin_log` VALUES ('1331', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101495', '1566101495', '1');
INSERT INTO `lm_admin_log` VALUES ('1332', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101499', '1566101499', '1');
INSERT INTO `lm_admin_log` VALUES ('1333', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101523', '1566101523', '1');
INSERT INTO `lm_admin_log` VALUES ('1334', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101539', '1566101539', '1');
INSERT INTO `lm_admin_log` VALUES ('1335', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101612', '1566101612', '1');
INSERT INTO `lm_admin_log` VALUES ('1336', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101645', '1566101645', '1');
INSERT INTO `lm_admin_log` VALUES ('1337', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101674', '1566101674', '1');
INSERT INTO `lm_admin_log` VALUES ('1338', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101690', '1566101690', '1');
INSERT INTO `lm_admin_log` VALUES ('1339', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101690', '1566101690', '1');
INSERT INTO `lm_admin_log` VALUES ('1340', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101705', '1566101705', '1');
INSERT INTO `lm_admin_log` VALUES ('1341', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101732', '1566101732', '1');
INSERT INTO `lm_admin_log` VALUES ('1342', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101744', '1566101744', '1');
INSERT INTO `lm_admin_log` VALUES ('1343', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101747', '1566101747', '1');
INSERT INTO `lm_admin_log` VALUES ('1344', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101790', '1566101790', '1');
INSERT INTO `lm_admin_log` VALUES ('1345', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101797', '1566101797', '1');
INSERT INTO `lm_admin_log` VALUES ('1346', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101807', '1566101807', '1');
INSERT INTO `lm_admin_log` VALUES ('1347', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101813', '1566101813', '1');
INSERT INTO `lm_admin_log` VALUES ('1348', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101815', '1566101815', '1');
INSERT INTO `lm_admin_log` VALUES ('1349', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101815', '1566101815', '1');
INSERT INTO `lm_admin_log` VALUES ('1350', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101861', '1566101861', '1');
INSERT INTO `lm_admin_log` VALUES ('1351', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101861', '1566101861', '1');
INSERT INTO `lm_admin_log` VALUES ('1352', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101880', '1566101880', '1');
INSERT INTO `lm_admin_log` VALUES ('1353', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101923', '1566101923', '1');
INSERT INTO `lm_admin_log` VALUES ('1354', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101950', '1566101950', '1');
INSERT INTO `lm_admin_log` VALUES ('1355', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101962', '1566101962', '1');
INSERT INTO `lm_admin_log` VALUES ('1356', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566101987', '1566101987', '1');
INSERT INTO `lm_admin_log` VALUES ('1357', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102004', '1566102004', '1');
INSERT INTO `lm_admin_log` VALUES ('1358', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102018', '1566102018', '1');
INSERT INTO `lm_admin_log` VALUES ('1359', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102018', '1566102018', '1');
INSERT INTO `lm_admin_log` VALUES ('1360', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102039', '1566102039', '1');
INSERT INTO `lm_admin_log` VALUES ('1361', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102039', '1566102039', '1');
INSERT INTO `lm_admin_log` VALUES ('1362', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102041', '1566102041', '1');
INSERT INTO `lm_admin_log` VALUES ('1363', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102041', '1566102041', '1');
INSERT INTO `lm_admin_log` VALUES ('1364', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102056', '1566102056', '1');
INSERT INTO `lm_admin_log` VALUES ('1365', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102096', '1566102096', '1');
INSERT INTO `lm_admin_log` VALUES ('1366', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102167', '1566102167', '1');
INSERT INTO `lm_admin_log` VALUES ('1367', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102187', '1566102187', '1');
INSERT INTO `lm_admin_log` VALUES ('1368', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102233', '1566102233', '1');
INSERT INTO `lm_admin_log` VALUES ('1369', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102291', '1566102291', '1');
INSERT INTO `lm_admin_log` VALUES ('1370', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102302', '1566102302', '1');
INSERT INTO `lm_admin_log` VALUES ('1371', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102310', '1566102310', '1');
INSERT INTO `lm_admin_log` VALUES ('1372', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102410', '1566102410', '1');
INSERT INTO `lm_admin_log` VALUES ('1373', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102532', '1566102532', '1');
INSERT INTO `lm_admin_log` VALUES ('1374', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102552', '1566102552', '1');
INSERT INTO `lm_admin_log` VALUES ('1375', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102580', '1566102580', '1');
INSERT INTO `lm_admin_log` VALUES ('1376', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102606', '1566102606', '1');
INSERT INTO `lm_admin_log` VALUES ('1377', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102616', '1566102616', '1');
INSERT INTO `lm_admin_log` VALUES ('1378', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102797', '1566102797', '1');
INSERT INTO `lm_admin_log` VALUES ('1379', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102879', '1566102879', '1');
INSERT INTO `lm_admin_log` VALUES ('1380', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102887', '1566102887', '1');
INSERT INTO `lm_admin_log` VALUES ('1381', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102904', '1566102904', '1');
INSERT INTO `lm_admin_log` VALUES ('1382', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566102935', '1566102935', '1');
INSERT INTO `lm_admin_log` VALUES ('1383', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103046', '1566103046', '1');
INSERT INTO `lm_admin_log` VALUES ('1384', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103107', '1566103107', '1');
INSERT INTO `lm_admin_log` VALUES ('1385', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103136', '1566103136', '1');
INSERT INTO `lm_admin_log` VALUES ('1386', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103201', '1566103201', '1');
INSERT INTO `lm_admin_log` VALUES ('1387', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103456', '1566103456', '1');
INSERT INTO `lm_admin_log` VALUES ('1388', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103456', '1566103456', '1');
INSERT INTO `lm_admin_log` VALUES ('1389', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103600', '1566103600', '1');
INSERT INTO `lm_admin_log` VALUES ('1390', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103600', '1566103600', '1');
INSERT INTO `lm_admin_log` VALUES ('1391', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103643', '1566103643', '1');
INSERT INTO `lm_admin_log` VALUES ('1392', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103994', '1566103994', '1');
INSERT INTO `lm_admin_log` VALUES ('1393', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566103994', '1566103994', '1');
INSERT INTO `lm_admin_log` VALUES ('1394', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104008', '1566104008', '1');
INSERT INTO `lm_admin_log` VALUES ('1395', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104008', '1566104008', '1');
INSERT INTO `lm_admin_log` VALUES ('1396', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104077', '1566104077', '1');
INSERT INTO `lm_admin_log` VALUES ('1397', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104379', '1566104379', '1');
INSERT INTO `lm_admin_log` VALUES ('1398', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104398', '1566104398', '1');
INSERT INTO `lm_admin_log` VALUES ('1399', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104532', '1566104532', '1');
INSERT INTO `lm_admin_log` VALUES ('1400', '1', 'admin', '/index.php/admin/ads/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104664', '1566104664', '1');
INSERT INTO `lm_admin_log` VALUES ('1401', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104879', '1566104879', '1');
INSERT INTO `lm_admin_log` VALUES ('1402', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104888', '1566104888', '1');
INSERT INTO `lm_admin_log` VALUES ('1403', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104966', '1566104966', '1');
INSERT INTO `lm_admin_log` VALUES ('1404', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104976', '1566104976', '1');
INSERT INTO `lm_admin_log` VALUES ('1405', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566104976', '1566104976', '1');
INSERT INTO `lm_admin_log` VALUES ('1406', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105036', '1566105036', '1');
INSERT INTO `lm_admin_log` VALUES ('1407', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105036', '1566105036', '1');
INSERT INTO `lm_admin_log` VALUES ('1408', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105037', '1566105037', '1');
INSERT INTO `lm_admin_log` VALUES ('1409', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105039', '1566105039', '1');
INSERT INTO `lm_admin_log` VALUES ('1410', '1', 'admin', '/index.php/admin/ads/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105079', '1566105079', '1');
INSERT INTO `lm_admin_log` VALUES ('1411', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105124', '1566105124', '1');
INSERT INTO `lm_admin_log` VALUES ('1412', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105124', '1566105124', '1');
INSERT INTO `lm_admin_log` VALUES ('1413', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105196', '1566105196', '1');
INSERT INTO `lm_admin_log` VALUES ('1414', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105222', '1566105222', '1');
INSERT INTO `lm_admin_log` VALUES ('1415', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105238', '1566105238', '1');
INSERT INTO `lm_admin_log` VALUES ('1416', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105326', '1566105326', '1');
INSERT INTO `lm_admin_log` VALUES ('1417', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105482', '1566105482', '1');
INSERT INTO `lm_admin_log` VALUES ('1418', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105516', '1566105516', '1');
INSERT INTO `lm_admin_log` VALUES ('1419', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105566', '1566105566', '1');
INSERT INTO `lm_admin_log` VALUES ('1420', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105585', '1566105585', '1');
INSERT INTO `lm_admin_log` VALUES ('1421', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105632', '1566105632', '1');
INSERT INTO `lm_admin_log` VALUES ('1422', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105765', '1566105765', '1');
INSERT INTO `lm_admin_log` VALUES ('1423', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566105922', '1566105922', '1');
INSERT INTO `lm_admin_log` VALUES ('1424', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106315', '1566106315', '1');
INSERT INTO `lm_admin_log` VALUES ('1425', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106380', '1566106380', '1');
INSERT INTO `lm_admin_log` VALUES ('1426', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106380', '1566106380', '1');
INSERT INTO `lm_admin_log` VALUES ('1427', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106403', '1566106403', '1');
INSERT INTO `lm_admin_log` VALUES ('1428', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106406', '1566106406', '1');
INSERT INTO `lm_admin_log` VALUES ('1429', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106408', '1566106408', '1');
INSERT INTO `lm_admin_log` VALUES ('1430', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106410', '1566106410', '1');
INSERT INTO `lm_admin_log` VALUES ('1431', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106484', '1566106484', '1');
INSERT INTO `lm_admin_log` VALUES ('1432', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106494', '1566106494', '1');
INSERT INTO `lm_admin_log` VALUES ('1433', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106504', '1566106504', '1');
INSERT INTO `lm_admin_log` VALUES ('1434', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106517', '1566106517', '1');
INSERT INTO `lm_admin_log` VALUES ('1435', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106546', '1566106546', '1');
INSERT INTO `lm_admin_log` VALUES ('1436', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106554', '1566106554', '1');
INSERT INTO `lm_admin_log` VALUES ('1437', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106554', '1566106554', '1');
INSERT INTO `lm_admin_log` VALUES ('1438', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106620', '1566106620', '1');
INSERT INTO `lm_admin_log` VALUES ('1439', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106632', '1566106632', '1');
INSERT INTO `lm_admin_log` VALUES ('1440', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106665', '1566106665', '1');
INSERT INTO `lm_admin_log` VALUES ('1441', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106679', '1566106679', '1');
INSERT INTO `lm_admin_log` VALUES ('1442', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106738', '1566106738', '1');
INSERT INTO `lm_admin_log` VALUES ('1443', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106792', '1566106792', '1');
INSERT INTO `lm_admin_log` VALUES ('1444', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106795', '1566106795', '1');
INSERT INTO `lm_admin_log` VALUES ('1445', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106809', '1566106809', '1');
INSERT INTO `lm_admin_log` VALUES ('1446', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106875', '1566106875', '1');
INSERT INTO `lm_admin_log` VALUES ('1447', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106881', '1566106881', '1');
INSERT INTO `lm_admin_log` VALUES ('1448', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566106921', '1566106921', '1');
INSERT INTO `lm_admin_log` VALUES ('1449', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107057', '1566107057', '1');
INSERT INTO `lm_admin_log` VALUES ('1450', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107123', '1566107123', '1');
INSERT INTO `lm_admin_log` VALUES ('1451', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107217', '1566107217', '1');
INSERT INTO `lm_admin_log` VALUES ('1452', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107223', '1566107223', '1');
INSERT INTO `lm_admin_log` VALUES ('1453', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107243', '1566107243', '1');
INSERT INTO `lm_admin_log` VALUES ('1454', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107260', '1566107260', '1');
INSERT INTO `lm_admin_log` VALUES ('1455', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107277', '1566107277', '1');
INSERT INTO `lm_admin_log` VALUES ('1456', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107372', '1566107372', '1');
INSERT INTO `lm_admin_log` VALUES ('1457', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107382', '1566107382', '1');
INSERT INTO `lm_admin_log` VALUES ('1458', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107405', '1566107405', '1');
INSERT INTO `lm_admin_log` VALUES ('1459', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107417', '1566107417', '1');
INSERT INTO `lm_admin_log` VALUES ('1460', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107919', '1566107919', '1');
INSERT INTO `lm_admin_log` VALUES ('1461', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566107957', '1566107957', '1');
INSERT INTO `lm_admin_log` VALUES ('1462', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108097', '1566108097', '1');
INSERT INTO `lm_admin_log` VALUES ('1463', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108141', '1566108141', '1');
INSERT INTO `lm_admin_log` VALUES ('1464', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108497', '1566108497', '1');
INSERT INTO `lm_admin_log` VALUES ('1465', '1', 'admin', '/index.php/admin/uploads/uploads.html', null, '上传文件', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108535', '1566108535', '1');
INSERT INTO `lm_admin_log` VALUES ('1466', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108610', '1566108610', '1');
INSERT INTO `lm_admin_log` VALUES ('1467', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108610', '1566108610', '1');
INSERT INTO `lm_admin_log` VALUES ('1468', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108622', '1566108622', '1');
INSERT INTO `lm_admin_log` VALUES ('1469', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108727', '1566108727', '1');
INSERT INTO `lm_admin_log` VALUES ('1470', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108739', '1566108739', '1');
INSERT INTO `lm_admin_log` VALUES ('1471', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108817', '1566108817', '1');
INSERT INTO `lm_admin_log` VALUES ('1472', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108833', '1566108833', '1');
INSERT INTO `lm_admin_log` VALUES ('1473', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108861', '1566108861', '1');
INSERT INTO `lm_admin_log` VALUES ('1474', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108936', '1566108936', '1');
INSERT INTO `lm_admin_log` VALUES ('1475', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566108967', '1566108967', '1');
INSERT INTO `lm_admin_log` VALUES ('1476', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109014', '1566109014', '1');
INSERT INTO `lm_admin_log` VALUES ('1477', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109037', '1566109037', '1');
INSERT INTO `lm_admin_log` VALUES ('1478', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109074', '1566109074', '1');
INSERT INTO `lm_admin_log` VALUES ('1479', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109125', '1566109125', '1');
INSERT INTO `lm_admin_log` VALUES ('1480', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109136', '1566109136', '1');
INSERT INTO `lm_admin_log` VALUES ('1481', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109163', '1566109163', '1');
INSERT INTO `lm_admin_log` VALUES ('1482', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109212', '1566109212', '1');
INSERT INTO `lm_admin_log` VALUES ('1483', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109212', '1566109212', '1');
INSERT INTO `lm_admin_log` VALUES ('1484', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109226', '1566109226', '1');
INSERT INTO `lm_admin_log` VALUES ('1485', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109245', '1566109245', '1');
INSERT INTO `lm_admin_log` VALUES ('1486', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109257', '1566109257', '1');
INSERT INTO `lm_admin_log` VALUES ('1487', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109308', '1566109308', '1');
INSERT INTO `lm_admin_log` VALUES ('1488', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109427', '1566109427', '1');
INSERT INTO `lm_admin_log` VALUES ('1489', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109432', '1566109432', '1');
INSERT INTO `lm_admin_log` VALUES ('1490', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109466', '1566109466', '1');
INSERT INTO `lm_admin_log` VALUES ('1491', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109487', '1566109487', '1');
INSERT INTO `lm_admin_log` VALUES ('1492', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109512', '1566109512', '1');
INSERT INTO `lm_admin_log` VALUES ('1493', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109555', '1566109555', '1');
INSERT INTO `lm_admin_log` VALUES ('1494', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109599', '1566109599', '1');
INSERT INTO `lm_admin_log` VALUES ('1495', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109615', '1566109615', '1');
INSERT INTO `lm_admin_log` VALUES ('1496', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109632', '1566109632', '1');
INSERT INTO `lm_admin_log` VALUES ('1497', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109635', '1566109635', '1');
INSERT INTO `lm_admin_log` VALUES ('1498', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109637', '1566109637', '1');
INSERT INTO `lm_admin_log` VALUES ('1499', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109699', '1566109699', '1');
INSERT INTO `lm_admin_log` VALUES ('1500', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109712', '1566109712', '1');
INSERT INTO `lm_admin_log` VALUES ('1501', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109714', '1566109714', '1');
INSERT INTO `lm_admin_log` VALUES ('1502', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109717', '1566109717', '1');
INSERT INTO `lm_admin_log` VALUES ('1503', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109732', '1566109732', '1');
INSERT INTO `lm_admin_log` VALUES ('1504', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109732', '1566109732', '1');
INSERT INTO `lm_admin_log` VALUES ('1505', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109734', '1566109734', '1');
INSERT INTO `lm_admin_log` VALUES ('1506', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109734', '1566109734', '1');
INSERT INTO `lm_admin_log` VALUES ('1507', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109762', '1566109762', '1');
INSERT INTO `lm_admin_log` VALUES ('1508', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109762', '1566109762', '1');
INSERT INTO `lm_admin_log` VALUES ('1509', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109764', '1566109764', '1');
INSERT INTO `lm_admin_log` VALUES ('1510', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109764', '1566109764', '1');
INSERT INTO `lm_admin_log` VALUES ('1511', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109795', '1566109795', '1');
INSERT INTO `lm_admin_log` VALUES ('1512', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109796', '1566109796', '1');
INSERT INTO `lm_admin_log` VALUES ('1513', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109796', '1566109796', '1');
INSERT INTO `lm_admin_log` VALUES ('1514', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109797', '1566109797', '1');
INSERT INTO `lm_admin_log` VALUES ('1515', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109800', '1566109800', '1');
INSERT INTO `lm_admin_log` VALUES ('1516', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109827', '1566109827', '1');
INSERT INTO `lm_admin_log` VALUES ('1517', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109834', '1566109834', '1');
INSERT INTO `lm_admin_log` VALUES ('1518', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109835', '1566109835', '1');
INSERT INTO `lm_admin_log` VALUES ('1519', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109838', '1566109838', '1');
INSERT INTO `lm_admin_log` VALUES ('1520', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109838', '1566109838', '1');
INSERT INTO `lm_admin_log` VALUES ('1521', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109843', '1566109843', '1');
INSERT INTO `lm_admin_log` VALUES ('1522', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109843', '1566109843', '1');
INSERT INTO `lm_admin_log` VALUES ('1523', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109845', '1566109845', '1');
INSERT INTO `lm_admin_log` VALUES ('1524', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109846', '1566109846', '1');
INSERT INTO `lm_admin_log` VALUES ('1525', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109846', '1566109846', '1');
INSERT INTO `lm_admin_log` VALUES ('1526', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109848', '1566109848', '1');
INSERT INTO `lm_admin_log` VALUES ('1527', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109886', '1566109886', '1');
INSERT INTO `lm_admin_log` VALUES ('1528', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109897', '1566109897', '1');
INSERT INTO `lm_admin_log` VALUES ('1529', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109908', '1566109908', '1');
INSERT INTO `lm_admin_log` VALUES ('1530', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109926', '1566109926', '1');
INSERT INTO `lm_admin_log` VALUES ('1531', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109931', '1566109931', '1');
INSERT INTO `lm_admin_log` VALUES ('1532', '1', 'admin', '/index.php/admin/auth/adminrule.html', null, '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109936', '1566109936', '1');
INSERT INTO `lm_admin_log` VALUES ('1533', '1', 'admin', '/index.php/admin/auth/group.html', null, '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109937', '1566109937', '1');
INSERT INTO `lm_admin_log` VALUES ('1534', '1', 'admin', '/index.php/admin/auth/adminlist.html', null, '管理员列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109938', '1566109938', '1');
INSERT INTO `lm_admin_log` VALUES ('1535', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109941', '1566109941', '1');
INSERT INTO `lm_admin_log` VALUES ('1536', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109943', '1566109943', '1');
INSERT INTO `lm_admin_log` VALUES ('1537', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109944', '1566109944', '1');
INSERT INTO `lm_admin_log` VALUES ('1538', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109946', '1566109946', '1');
INSERT INTO `lm_admin_log` VALUES ('1539', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566109995', '1566109995', '1');
INSERT INTO `lm_admin_log` VALUES ('1540', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110051', '1566110051', '1');
INSERT INTO `lm_admin_log` VALUES ('1541', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110056', '1566110056', '1');
INSERT INTO `lm_admin_log` VALUES ('1542', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110123', '1566110123', '1');
INSERT INTO `lm_admin_log` VALUES ('1543', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110153', '1566110153', '1');
INSERT INTO `lm_admin_log` VALUES ('1544', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110202', '1566110202', '1');
INSERT INTO `lm_admin_log` VALUES ('1545', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110256', '1566110256', '1');
INSERT INTO `lm_admin_log` VALUES ('1546', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110264', '1566110264', '1');
INSERT INTO `lm_admin_log` VALUES ('1547', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110298', '1566110298', '1');
INSERT INTO `lm_admin_log` VALUES ('1548', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110336', '1566110336', '1');
INSERT INTO `lm_admin_log` VALUES ('1549', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110360', '1566110360', '1');
INSERT INTO `lm_admin_log` VALUES ('1550', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110426', '1566110426', '1');
INSERT INTO `lm_admin_log` VALUES ('1551', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110430', '1566110430', '1');
INSERT INTO `lm_admin_log` VALUES ('1552', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110562', '1566110562', '1');
INSERT INTO `lm_admin_log` VALUES ('1553', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110577', '1566110577', '1');
INSERT INTO `lm_admin_log` VALUES ('1554', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110780', '1566110780', '1');
INSERT INTO `lm_admin_log` VALUES ('1555', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110819', '1566110819', '1');
INSERT INTO `lm_admin_log` VALUES ('1556', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110819', '1566110819', '1');
INSERT INTO `lm_admin_log` VALUES ('1557', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110990', '1566110990', '1');
INSERT INTO `lm_admin_log` VALUES ('1558', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110990', '1566110990', '1');
INSERT INTO `lm_admin_log` VALUES ('1559', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566110997', '1566110997', '1');
INSERT INTO `lm_admin_log` VALUES ('1560', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111013', '1566111013', '1');
INSERT INTO `lm_admin_log` VALUES ('1561', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111168', '1566111168', '1');
INSERT INTO `lm_admin_log` VALUES ('1562', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111171', '1566111171', '1');
INSERT INTO `lm_admin_log` VALUES ('1563', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111199', '1566111199', '1');
INSERT INTO `lm_admin_log` VALUES ('1564', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111238', '1566111238', '1');
INSERT INTO `lm_admin_log` VALUES ('1565', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111239', '1566111239', '1');
INSERT INTO `lm_admin_log` VALUES ('1566', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111239', '1566111239', '1');
INSERT INTO `lm_admin_log` VALUES ('1567', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111240', '1566111240', '1');
INSERT INTO `lm_admin_log` VALUES ('1568', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111241', '1566111241', '1');
INSERT INTO `lm_admin_log` VALUES ('1569', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111246', '1566111246', '1');
INSERT INTO `lm_admin_log` VALUES ('1570', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111464', '1566111464', '1');
INSERT INTO `lm_admin_log` VALUES ('1571', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111464', '1566111464', '1');
INSERT INTO `lm_admin_log` VALUES ('1572', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111465', '1566111465', '1');
INSERT INTO `lm_admin_log` VALUES ('1573', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111467', '1566111467', '1');
INSERT INTO `lm_admin_log` VALUES ('1574', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111468', '1566111468', '1');
INSERT INTO `lm_admin_log` VALUES ('1575', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111961', '1566111961', '1');
INSERT INTO `lm_admin_log` VALUES ('1576', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111961', '1566111961', '1');
INSERT INTO `lm_admin_log` VALUES ('1577', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111962', '1566111962', '1');
INSERT INTO `lm_admin_log` VALUES ('1578', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111962', '1566111962', '1');
INSERT INTO `lm_admin_log` VALUES ('1579', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566111965', '1566111965', '1');
INSERT INTO `lm_admin_log` VALUES ('1580', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112639', '1566112639', '1');
INSERT INTO `lm_admin_log` VALUES ('1581', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112639', '1566112639', '1');
INSERT INTO `lm_admin_log` VALUES ('1582', '1', 'admin', '/index.php/admin/adv/index.html', null, '广告列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112989', '1566112989', '1');
INSERT INTO `lm_admin_log` VALUES ('1583', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112991', '1566112991', '1');
INSERT INTO `lm_admin_log` VALUES ('1584', '1', 'admin', '/index.php/admin/adv/pos.html', null, '广告位置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112991', '1566112991', '1');
INSERT INTO `lm_admin_log` VALUES ('1585', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112992', '1566112992', '1');
INSERT INTO `lm_admin_log` VALUES ('1586', '1', 'admin', '/index.php/admin/link/index.html', null, '链接列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112992', '1566112992', '1');
INSERT INTO `lm_admin_log` VALUES ('1587', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112995', '1566112995', '1');
INSERT INTO `lm_admin_log` VALUES ('1588', '1', 'admin', '/index.php/admin/system/site.html', null, '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112995', '1566112995', '1');
INSERT INTO `lm_admin_log` VALUES ('1589', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112996', '1566112996', '1');
INSERT INTO `lm_admin_log` VALUES ('1590', '1', 'admin', '/index.php/admin/adminlog/index.html', null, '日志管理', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112996', '1566112996', '1');
INSERT INTO `lm_admin_log` VALUES ('1591', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112998', '1566112998', '1');
INSERT INTO `lm_admin_log` VALUES ('1592', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112998', '1566112998', '1');
INSERT INTO `lm_admin_log` VALUES ('1593', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566112999', '1566112999', '1');
INSERT INTO `lm_admin_log` VALUES ('1594', '1', 'admin', '/index.php/admin/database/index.html', null, '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566113000', '1566113000', '1');

-- ----------------------------
-- Table structure for lm_adv
-- ----------------------------
DROP TABLE IF EXISTS `lm_adv`;
CREATE TABLE `lm_adv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `ad_image` mediumtext NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `link_admin` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `sort` int(20) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) DEFAULT NULL COMMENT '背景颜色',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled` (`status`) USING BTREE,
  KEY `position_id` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_adv
-- ----------------------------
INSERT INTO `lm_adv` VALUES ('1', '2', '0', '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-24/a7a54a5b527f0b1b069b8421378ad0fa.jpg', '1451577600', '1483286400', '', '', '', '0', null, '1', '0', '0', '#43d7f6', null, null);
INSERT INTO `lm_adv` VALUES ('2', '2', '0', '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', '1451577600', '1767283200', '', '', '', '0', null, '1', '0', '0', '#ff8000', null, '1566106884');
INSERT INTO `lm_adv` VALUES ('3', '2', '0', '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', '1451577600', '1767283200', '', '', '', '0', null, '1', '0', '0', '#fea8c1', null, null);
INSERT INTO `lm_adv` VALUES ('4', '2', '0', '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', '1451577600', '1767283200', '', '', '', '0', null, '1', '0', '0', '#f1e6d2', null, null);
INSERT INTO `lm_adv` VALUES ('7', '2', '0', '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', '1451577600', '1767283200', '', '', '', '0', null, '1', '0', '0', '#f1dcf7', null, null);
INSERT INTO `lm_adv` VALUES ('12', '2', '0', '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', '1451577600', '1767283200', '', '', '', '0', null, '1', '0', '0', '#000000', null, null);
INSERT INTO `lm_adv` VALUES ('82', '1', '0', '', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', '0', '0', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566107420', '1566107420');
INSERT INTO `lm_adv` VALUES ('83', '1', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', '1566130740', '0', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566107921', '1566107921');
INSERT INTO `lm_adv` VALUES ('84', '4', '0', 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', '1566130740', '0', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566107968', '1566107968');
INSERT INTO `lm_adv` VALUES ('85', '1', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', '0', '0', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566108105', '1566108105');
INSERT INTO `lm_adv` VALUES ('86', '2', '0', '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', '1566130740', '0', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566108149', '1566108149');
INSERT INTO `lm_adv` VALUES ('87', '2', '0', 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', '1564588800', '1568908800', '', '994927909@qq.com', '', '0', null, '1', '50', '0', null, '1566108542', '1566108542');

-- ----------------------------
-- Table structure for lm_adv_position
-- ----------------------------
DROP TABLE IF EXISTS `lm_adv_position`;
CREATE TABLE `lm_adv_position` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `position_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `position_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` mediumtext COMMENT '模板',
  `status` tinyint(1) DEFAULT '0' COMMENT '0关闭1开启',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `position_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_adv_position
-- ----------------------------
INSERT INTO `lm_adv_position` VALUES ('1', 'Cart页面自动增加广告位 1 ', '0', '0', 'Cart页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('2', 'Index页面自动增加广告位 2 ', '0', '0', 'Index页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('4', 'Topic页面自动增加广告位 4 ', '0', '0', 'Topic页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('9', 'Index页面自动增加广告位 9 ', '0', '0', 'Index页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('10', 'Index页面自动增加广告位 10 ', '0', '0', 'Index页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('11', 'Index页面自动增加广告位 11 ', '0', '0', 'Index页面', null, '1', null, null);
INSERT INTO `lm_adv_position` VALUES ('12', 'Index页面自动增加广告位 12 ', '0', '0', 'Index页面', null, '1', null, null);


-- ----------------------------
-- Table structure for lm_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `lm_auth_group`;
CREATE TABLE `lm_auth_group` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组id',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员分组';

-- ----------------------------
-- Records of lm_auth_group
-- ----------------------------
INSERT INTO `lm_auth_group` VALUES ('1', '超级管理员', '1', '1,2,20,21,40,34,39,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,41,47,48,51,49,50,52,54,57,58,55,56,42,46,53,43,45,44,', '1465114224', '1566098022');
INSERT INTO `lm_auth_group` VALUES ('2', '测试1', '1', '1,2,39,20,21,34,6,35,36,38,', '1565929191', '1566019644');

-- ----------------------------
-- Table structure for lm_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `lm_auth_rule`;
CREATE TABLE `lm_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '' COMMENT '链接',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1 可以用，0 所有禁止使用',
  `auth_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1公开 0不公开',
  `menu_status` tinyint(1) DEFAULT '0' COMMENT '0 不显示，1 显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标样式',
  `condition` char(100) DEFAULT '' COMMENT '条件',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `href` (`href`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

-- ----------------------------
-- Records of lm_auth_rule
-- ----------------------------
INSERT INTO `lm_auth_rule` VALUES ('1', 'System', '系统面板', '1', '1', '0', '1', 'fa fa-home', '', '0', '0', '1446535750', null);
INSERT INTO `lm_auth_rule` VALUES ('2', 'System', '系统设置', '1', '1', '0', '1', 'fa fa-gears', '', '1', '0', '1446535789', null);
INSERT INTO `lm_auth_rule` VALUES ('3', 'Database', '数据库管理', '1', '1', '0', '1', 'fa fa-database', '', '1', '0', '1446535805', null);
INSERT INTO `lm_auth_rule` VALUES ('4', 'Database/restore', '还原数据库', '2', '1', '0', '1', 'fa fa-database', '', '3', '0', '1446535750', null);
INSERT INTO `lm_auth_rule` VALUES ('5', 'Database/backup', '数据库备份', '2', '1', '0', '0', 'fa fa-database', '', '3', '0', '1446535834', null);
INSERT INTO `lm_auth_rule` VALUES ('6', 'Auth', '权限管理', '1', '1', '0', '1', 'fa fa-cog', '', '1', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('7', 'Auth/adminRule', '权限列表', '1', '1', '0', '1', 'fa fa-cog', '', '6', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('8', 'Auth/ruleEdit', '权限编辑', '2', '1', '0', '0', 'fa fa-cog', '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('9', 'Database/repair', '数据库修复', '2', '1', '0', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('10', 'Database/import', '数据还原', '2', '1', '0', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('11', 'Database/downFile', '数据下载', '2', '1', '0', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('12', 'Database/delSqlFiles', '删除数据库', '2', '1', '0', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('13', 'Database/index', '数据库列表', '1', '1', '0', '1', 'fa fa-database', '', '3', '1', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('14', 'Auth/ruleState', '菜单显示或者隐藏', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('15', 'Auth/ruleOpen', '权限是否验证', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('16', 'Auth/ruleSort', '权限排序', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('17', 'Auth/ruleDel', '权限删除', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('18', 'Auth/ruleSelectDel', '权限批量删除', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('19', 'Auth/ruleAdd', '权限增加', '2', '1', '0', '0', null, '', '7', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('20', 'System/site', '站点设置', '1', '1', '0', '1', 'fa fa-gears', '', '2', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('21', 'Adminlog/index', '日志管理', '1', '1', '0', '1', 'fa fa-life-ring', '', '2', '0', '0', '1566007925');
INSERT INTO `lm_auth_rule` VALUES ('22', 'Database/optimize', '数据库优化', '1', '1', '0', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('23', 'Addons', '插件管理', '1', '1', '0', '1', 'fa fa-flickr', '', '0', '0', '0', '1566053592');
INSERT INTO `lm_auth_rule` VALUES ('24', 'Addons', '插件设置', '1', '1', '0', '1', 'fa fa-flickr', '', '23', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('25', 'Addons/index', '插件列表', '1', '1', '0', '1', 'fa fa-globe', '', '24', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('26', 'Auth/group', '权限组', '1', '1', '0', '1', 'fa fa-globe', '', '6', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('27', 'Auth/groupDel', '用户组删除', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('28', 'Auth/groupAdd', '用户组添加', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('29', 'Auth/groupEdit', '用户组修改', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('30', 'Auth/groupState', '用户组状态修改', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('31', 'Auth/groupSelectDel', '用户组批量删除', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('32', 'Auth/groupAccess', '用户组显示权限', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('33', 'Auth/groupSetaccess', '用户组保存权限', '1', '1', '0', '0', null, '', '26', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('34', 'Uploads/uploads', '上传文件', '1', '1', '0', '0', null, '', '2', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('35', 'Auth/adminList', '管理员列表', '1', '1', '0', '1', 'fa fa-user-circle', '', '6', '0', '1', null);
INSERT INTO `lm_auth_rule` VALUES ('36', 'Auth/adminAdd', '添加管理员', '1', '1', '0', '0', null, '', '35', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('37', 'Auth/adminDel', '删除管理员', '1', '1', '0', '0', null, '', '35', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('38', 'Auth/adminState', '管理员状态', '1', '1', '0', '0', null, '', '35', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('39', 'Index/password', '修改密码', '1', '1', '0', '0', null, '', '2', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('40', 'Adminlog/delete', '删除日志', '1', '1', '0', '0', null, '', '21', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('41', 'Content', '内容管理', '1', '1', '0', '1', 'fa fa-folder-open', '', '0', '50', '1566092187', '1566092574');
INSERT INTO `lm_auth_rule` VALUES ('42', 'Link', '链接管理', '1', '1', '0', '1', 'fa fa-link', '', '41', '50', '1566092432', '1566092684');
INSERT INTO `lm_auth_rule` VALUES ('43', 'Link/add', '链接添加', '1', '1', '0', '0', '', '', '46', '50', '1566092486', '1566092801');
INSERT INTO `lm_auth_rule` VALUES ('44', 'Link/delete', '链接删除', '1', '1', '0', '0', '', '', '46', '50', '1566092613', '1566092798');
INSERT INTO `lm_auth_rule` VALUES ('45', 'Link/state', '链接状态', '1', '1', '0', '0', '', '', '46', '50', '1566092677', '1566092795');
INSERT INTO `lm_auth_rule` VALUES ('46', 'Link/index', '链接列表', '1', '1', '0', '1', 'fa fa-link', '', '42', '50', '1566092770', '1566092770');
INSERT INTO `lm_auth_rule` VALUES ('47', 'Adv', '广告管理', '1', '1', '0', '1', 'fa fa-audio-description', '', '41', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('48', 'Adv/index', '广告列表', '1', '1', '0', '1', 'fa fa-audio-description', '', '47', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('49', 'Adv/add', '广告添加', '1', '1', '0', '0', '', '', '48', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('50', 'Adv/delete', '广告删除', '1', '1', '0', '0', null, '', '48', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('51', 'Adv/state', '广告状态', '1', '1', '0', '0', null, '', '48', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('52', 'Adv/order', '广告排序', '1', '1', '0', '0', null, '', '48', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('53', 'Link/order', '链接排序', '1', '1', '0', '0', null, '', '46', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('54', 'Adv/pos', '广告位置', '1', '1', '0', '1', 'fa fa-audio-description', '', '47', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('55', 'Adv/posAdd', '广告位添加/编辑', '1', '1', '0', '0', null, '', '54', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('56', 'Adv/posDel', '广告位删除', '1', '1', '0', '0', null, '', '54', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('57', 'Adv/posState', '广告位状态', '1', '1', '0', '0', null, '', '54', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('58', 'Adv/posOrder', '广告位排序', '1', '1', '0', '0', null, '', '54', '0', '0', null);

------------------------------
-- Table structure for lm_config
-- ----------------------------
DROP TABLE IF EXISTS `lm_config`;
CREATE TABLE `lm_config` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `value` mediumtext,
  `remark` varchar(100) DEFAULT '解释,备注',
  `type` varchar(20) DEFAULT 'site',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='配置参数表';

-- ----------------------------
-- Records of lm_config
-- ----------------------------
INSERT INTO `lm_config` VALUES ('1', 'site_name', 'lemocm', '网站名称', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('2', 'site_phone', '3', '网站客服服务电话', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('3', 'site_state', '1', '状态', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('4', 'site_logo', '/storage/uploads/logo.png', '网站logo图', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('5', 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('6', 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('7', 'site_icp', '2', 'ICP备案号', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('8', 'site_tel400', '40002541852', '解释,备注', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('9', 'site_email', '858761000@qq.com', '电子邮件', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('10', 'site_copyright', 'LEMOCMS版权所有@2018', '底部版权信息', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('11', 'captcha_status_login', '1', '会员登录是否需要验证码', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('12', 'captcha_status_register', '1', '会员注册是否验证码', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('14', 'sms_appid', 'LTAIesI7qxnHLgKE', '短信平台账号', 'sms', '1', null, null);
INSERT INTO `lm_config` VALUES ('15', 'sms_secret', 'sbA6wnefJLD7pv7WipcxL0M3IMb3l9', '短信平台密钥', 'sms', '1', null, null);
INSERT INTO `lm_config` VALUES ('16', 'email_host', 'smtp.qq.com', '邮箱地址', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('17', 'email_port', '25', '邮箱端口', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('18', 'email_addr', '994927909@qq.com', '邮箱发件人地址', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('19', 'email_id', '994927909@qq.com', '身份验证用户名', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('20', 'email_pass', '11211', '用户名密码', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('21', 'email_secure', 'smtp', '邮箱发送协议', 'email', '1', null, null);
INSERT INTO `lm_config` VALUES ('22', 'upload_file_type', 'bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4', '图片上传保存方式', 'upload', '1', null, null);
INSERT INTO `lm_config` VALUES ('23', 'cache_open', '0', '是否开启缓存', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('24', 'alioss_accessid', null, 'accessid', 'oss', '1', null, null);
INSERT INTO `lm_config` VALUES ('25', 'alioss_accesssecret', null, 'oss_accesssecret', 'oss', '1', null, null);
INSERT INTO `lm_config` VALUES ('26', 'alioss_bucket', null, 'oss_bucket', 'oss', '1', null, null);
INSERT INTO `lm_config` VALUES ('27', 'alioss_endpoint', null, 'oss_endpoint', 'oss', '1', null, null);
INSERT INTO `lm_config` VALUES ('28', 'aliendpoint_type', '0', 'aliendpoint_type', 'oss', '1', null, null);
INSERT INTO `lm_config` VALUES ('29', 'node_site_url', null, '站内IM服务器地址', 'im', '1', null, null);
INSERT INTO `lm_config` VALUES ('30', 'node_site_use', '0', '是否启用im', 'im', '1', null, null);
INSERT INTO `lm_config` VALUES ('31', 'qq_isuse', '1', '是否使用QQ互联', 'qq', '1', null, null);
INSERT INTO `lm_config` VALUES ('32', 'qq_appid', '', 'qq互联id', 'qq', '1', null, null);
INSERT INTO `lm_config` VALUES ('33', 'qq_appkey', '', 'qq秘钥', 'qq', '1', null, null);
INSERT INTO `lm_config` VALUES ('34', 'sina_isuse', '1', '是的使用微博登录', 'sina', '1', null, null);
INSERT INTO `lm_config` VALUES ('35', 'sina_wb_akey', '', '新浪id', 'sina', '1', null, null);
INSERT INTO `lm_config` VALUES ('36', 'sina_wb_skey', '', '新浪秘钥', 'sina', '1', null, null);
INSERT INTO `lm_config` VALUES ('37', 'sms_register', '0', '是否手机注册', 'mobile', '1', null, null);
INSERT INTO `lm_config` VALUES ('38', 'sms_login', '0', '是否手机登录', 'mobile', '1', null, null);
INSERT INTO `lm_config` VALUES ('39', 'sms_password', '0', '是否手机找回密码', 'mobile', '1', null, null);
INSERT INTO `lm_config` VALUES ('40', 'weixin_isuse', null, '是否微信登录', 'weixin', '1', null, null);
INSERT INTO `lm_config` VALUES ('41', 'weixin_appid', null, '微信appid', 'weixin', '1', null, null);
INSERT INTO `lm_config` VALUES ('42', 'weixin_secret', null, '微信appserite', 'weixin', '1', null, null);
INSERT INTO `lm_config` VALUES ('43', 'baidu_ak', '22bb7221fc279a484895afcc6a0bb33a', '百度地图AK密钥', 'baidu', '1', null, null);
INSERT INTO `lm_config` VALUES ('44', 'site_licence', '', '营业执照', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('45', 'site_domain', 'https://www.lemocms.com', '网站地址', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('46', 'upload_file_max', '200', '最大文件上传大小', 'upload', '1', null, null);
INSERT INTO `lm_config` VALUES ('47', 'site_seo_title', 'LEMOCMS-PHP-THINKPHP内容管理系统', '首页标题', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('48', 'site_seo_keywords', 'LEMOCMS,LEMOCMS官网,LEMOCMS社区,PHP内容管理系统,开源CMS,php cms,thinkphp', '首页关键词', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('49', 'site_seo_desc', 'LEMOCMS内容管理系统是一款高效建站的PHP内容管理系统，同时也是一款开源CMS系统。LEMOCMS官网主要发布一些官网最新动态，同时也为广大建站爱好者提供一个交流探讨的平台。 - Powered by LEMOCMS', '首页描述', 'site', '1', null, null);
INSERT INTO `lm_config` VALUES ('50', 'upload_water', '1', '水印开始关闭', 'upload', '1', null, null);
INSERT INTO `lm_config` VALUES ('51', 'upload_water_position', null, '水印位置', 'upload', '1', null, null);
INSERT INTO `lm_config` VALUES ('52', 'sms_product', 'lemocms', '产品', 'sms', '1', null, null);
INSERT INTO `lm_config` VALUES ('53', 'sms_template', 'SMS_158941284', '模板id', 'sms', '1', null, null);

-- ----------------------------
-- Table structure for lm_link
-- ----------------------------
DROP TABLE IF EXISTS `lm_link`;
CREATE TABLE `lm_link` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_link
-- ----------------------------
INSERT INTO `lm_link` VALUES ('23', 'lemocms2', 'https://www.lemocms.com', null, '994927909@qq.com', '994927909', '50', '1', '1566102829', '1566103652');
INSERT INTO `lm_link` VALUES ('25', '百度', 'https://www.baidu.com', null, '994927909@qq.com', '994927909', '50', '1', '1566103165', '1566103165');
INSERT INTO `lm_link` VALUES ('26', '新浪', 'https://www.sina.com', null, '994927909@qq.com', '994927909', '50', '1', '1566103233', '1566103233');
