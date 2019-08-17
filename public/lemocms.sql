/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : lemocms

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-17 17:43:26
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
INSERT INTO `lm_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', '1', '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', '1482132862', '1566001952');
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
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_admin_log
-- ----------------------------
INSERT INTO `lm_admin_log` VALUES ('1040', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566034988', '1566034988', '1');
INSERT INTO `lm_admin_log` VALUES ('1041', '1', 'admin', '/index.php/admin/database/restore.html', null, '还原数据库', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1566034988', '1566034988', '1');


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
INSERT INTO `lm_auth_group` VALUES ('1', '超级管理员', '1', '1,2,39,20,21,34,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,', '1465114224', '1566018534');
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
  `auth_open` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1公开 0不公开',
  `menu_status` tinyint(1) DEFAULT '0' COMMENT '0 不显示，1 显示',
  `icon` varchar(20) DEFAULT NULL COMMENT '图标样式',
  `condition` char(100) DEFAULT '' COMMENT '条件',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `href` (`href`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

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
INSERT INTO `lm_auth_rule` VALUES ('22', 'Database/optimize', '数据库优化', '1', '1', '1', '0', null, '', '3', '0', '0', null);
INSERT INTO `lm_auth_rule` VALUES ('23', 'Addons', '插件管理', '1', '1', '0', '1', 'fa fa-flickr', '', '0', '0', '0', '1565941030');
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

-- ----------------------------
-- Table structure for lm_category
-- ----------------------------
DROP TABLE IF EXISTS `lm_category`;
CREATE TABLE `lm_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL DEFAULT '',
  `catwe_dir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否预览',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lm_category
-- ----------------------------
INSERT INTO `lm_category` VALUES ('1', '最新动态', 'news', '', '0', '2', 'article', '0', '1,5,6,27', '0', '最新动态', '最新动态', '最新动态', '4', '0', '1', '0', '', '1', '', 'article-list', 'article-show', '0', '1,2,3', '0', '0', '0');
INSERT INTO `lm_category` VALUES ('2', '关于我们', 'about', '', '0', '1', 'page', '0', '2', '0', '关于我们', 'CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。', 'CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。', '0', '0', '1', '0', '', '0', '', '', '', '0', '1,2', '0', '0', '0');
INSERT INTO `lm_category` VALUES ('3', 'CLTPHP服务', 'services', '', '0', '2', 'article', '0', '3', '0', '产品服务-CLTPHP', '产品服务,CLTPHP,CLTPHP内容管理系统', '产品服务', '1', '0', '1', '0', '', '0', '', '', '', '15', '1,2,3', '0', '0', '1');
INSERT INTO `lm_category` VALUES ('4', '系统操作', 'system', '', '0', '3', 'picture', '0', '4', '0', 'CLTPHP系统操作', 'CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统', 'CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统', '2', '0', '1', '0', '', '0', '', '', '', '0', '1,2', '0', '0', '0');
INSERT INTO `lm_category` VALUES ('5', 'CLTPHP动态', 'news2', 'news/', '1', '2', 'article', '0,1', '5', '0', 'CLTPHP动态', 'CLTPHP动态', 'CLTPHP动态', '0', '0', '1', '0', '', '0', '', '', '', '5', '1,2', '0', '0', '1');
INSERT INTO `lm_category` VALUES ('6', '相关知识 ', 'news', 'news/', '1', '2', 'article', '0,1', '6', '0', 'CLTPHP相关知识', 'CLTPHP相关知识', 'CLTPHP相关知识', '0', '0', '1', '0', '', '0', '', '', '', '0', '1,2', '0', '0', '1');
INSERT INTO `lm_category` VALUES ('7', '精英团队', 'team', '', '0', '6', 'team', '0', '7', '0', '精英团队', '精英团队', '精英团队', '5', '0', '1', '0', '', '0', '', '', '', '0', '1,2', '0', '0', '0');
INSERT INTO `lm_category` VALUES ('8', '联系我们', 'contact', '', '0', '1', 'page', '0', '8', '0', '联系我们', '联系我们', '联系我们', '7', '0', '1', '0', '', '0', '', 'page_show_contace', 'page_show_contace', '0', '1,2', '0', '0', '0');

-- ----------------------------
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

