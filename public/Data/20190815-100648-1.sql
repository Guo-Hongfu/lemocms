
-- -----------------------------
-- Table structure for `lm_admin`
-- -----------------------------
DROP TABLE IF EXISTS `lm_admin`;
CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `is_open` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员';

-- -----------------------------
-- Records of `lm_admin`
-- -----------------------------
INSERT INTO `lm_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e ', '1', 'sheboo@qq.com', '', '13247667667', '127.0.0.1', '0', '1', '/uploads/20190723/3c99dcbb58276219cd1eee93b5cf4573.jpg', '1482132862', '');
INSERT INTO `lm_admin` VALUES ('2', 'cvinner', '6676859fa5394adcdd09e10a61bcca49', '2', '807775767@qq.com', '', '16675558550', '127.0.0.1', '0', '1', '/uploads/20190723/a319fc454e45200936a12fec92013065.jpg', '1535512393', '');
INSERT INTO `lm_admin` VALUES ('3', 'dandan', '6676859fa5394adcdd09e10a61bcca49', '2', '815156568@qq.com', '', '16675558550', '119.122.91.146', '0', '1', '/uploads/20190725/665a35898d4355ca852db92040c7966f.jpg', '1564041575', '');

-- -----------------------------
-- Table structure for `lm_admin_log`
-- -----------------------------
DROP TABLE IF EXISTS `lm_admin_log`;
CREATE TABLE `lm_admin_log` (
  `log_id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
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
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `id` (`log_id`) USING BTREE,
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `lm_admin_log`
-- -----------------------------
INSERT INTO `lm_admin_log` VALUES ('1', '1', 'admin', '/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752105', '', '1');
INSERT INTO `lm_admin_log` VALUES ('2', '1', 'admin', '/admin/system/site.html', '', '站点设置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752105', '', '1');
INSERT INTO `lm_admin_log` VALUES ('3', '1', 'admin', '/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752116', '', '1');
INSERT INTO `lm_admin_log` VALUES ('4', '1', 'admin', '/admin/database/index.html', '', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752116', '', '1');
INSERT INTO `lm_admin_log` VALUES ('5', '1', 'admin', '/admin/Database/index.html', '{\"page\":\"1\",\"limit\":\"15\"}', '数据库列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752119', '', '1');
INSERT INTO `lm_admin_log` VALUES ('6', '1', 'admin', '/admin/database/repair.html', '{\"tables\":[\"lm_admin\",\"lm_admin_log\",\"lm_auth_group\",\"lm_auth_rule\",\"lm_config\"]}', '数据库修复', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752124', '', '1');
INSERT INTO `lm_admin_log` VALUES ('7', '1', 'admin', '/admin/addons/index.html', '', '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752334', '', '1');
INSERT INTO `lm_admin_log` VALUES ('8', '1', 'admin', '/admin/addons/index.html', '', '插件列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565752610', '', '1');
INSERT INTO `lm_admin_log` VALUES ('9', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753341', '', '1');
INSERT INTO `lm_admin_log` VALUES ('10', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753342', '', '1');
INSERT INTO `lm_admin_log` VALUES ('11', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753344', '', '1');
INSERT INTO `lm_admin_log` VALUES ('12', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753354', '', '1');
INSERT INTO `lm_admin_log` VALUES ('13', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753355', '', '1');
INSERT INTO `lm_admin_log` VALUES ('14', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753356', '', '1');
INSERT INTO `lm_admin_log` VALUES ('15', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753849', '', '1');
INSERT INTO `lm_admin_log` VALUES ('16', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753851', '', '1');
INSERT INTO `lm_admin_log` VALUES ('17', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753925', '', '1');
INSERT INTO `lm_admin_log` VALUES ('18', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565753927', '', '1');
INSERT INTO `lm_admin_log` VALUES ('19', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754127', '', '1');
INSERT INTO `lm_admin_log` VALUES ('20', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754129', '', '1');
INSERT INTO `lm_admin_log` VALUES ('21', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754156', '', '1');
INSERT INTO `lm_admin_log` VALUES ('22', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754158', '', '1');
INSERT INTO `lm_admin_log` VALUES ('23', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754274', '', '1');
INSERT INTO `lm_admin_log` VALUES ('24', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754274', '', '1');
INSERT INTO `lm_admin_log` VALUES ('25', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754276', '', '1');
INSERT INTO `lm_admin_log` VALUES ('26', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754357', '', '1');
INSERT INTO `lm_admin_log` VALUES ('27', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754359', '', '1');
INSERT INTO `lm_admin_log` VALUES ('28', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754395', '', '1');
INSERT INTO `lm_admin_log` VALUES ('29', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754397', '', '1');
INSERT INTO `lm_admin_log` VALUES ('30', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754412', '', '1');
INSERT INTO `lm_admin_log` VALUES ('31', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565754414', '', '1');
INSERT INTO `lm_admin_log` VALUES ('32', '1', 'admin', '/admin/Auth/ruleAdd.html', '', '权限增加', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755973', '', '1');
INSERT INTO `lm_admin_log` VALUES ('33', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755978', '', '1');
INSERT INTO `lm_admin_log` VALUES ('34', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755978', '', '1');
INSERT INTO `lm_admin_log` VALUES ('35', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755980', '', '1');
INSERT INTO `lm_admin_log` VALUES ('36', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755981', '', '1');
INSERT INTO `lm_admin_log` VALUES ('37', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565755983', '', '1');
INSERT INTO `lm_admin_log` VALUES ('38', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756087', '', '1');
INSERT INTO `lm_admin_log` VALUES ('39', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756090', '', '1');
INSERT INTO `lm_admin_log` VALUES ('40', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756149', '', '1');
INSERT INTO `lm_admin_log` VALUES ('41', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756151', '', '1');
INSERT INTO `lm_admin_log` VALUES ('42', '1', 'admin', '/admin/Auth/ruleOpen.html', '{\"id\":\"23\",\"auth_open\":\"0\"}', '权限是否验证', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756153', '', '1');
INSERT INTO `lm_admin_log` VALUES ('43', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756283', '', '1');
INSERT INTO `lm_admin_log` VALUES ('44', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756284', '', '1');
INSERT INTO `lm_admin_log` VALUES ('45', '1', 'admin', '/admin/Auth/ruleOpen.html', '{\"id\":\"23\",\"auth_open\":\"0\"}', '权限是否验证', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756286', '', '1');
INSERT INTO `lm_admin_log` VALUES ('46', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756289', '', '1');
INSERT INTO `lm_admin_log` VALUES ('47', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565756290', '', '1');
INSERT INTO `lm_admin_log` VALUES ('48', '1', 'admin', '/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565758339', '1565758339', '1');
INSERT INTO `lm_admin_log` VALUES ('49', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565758396', '1565758396', '1');
INSERT INTO `lm_admin_log` VALUES ('50', '1', 'admin', '/admin/auth/adminrule.html', '', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565758396', '1565758396', '1');
INSERT INTO `lm_admin_log` VALUES ('51', '1', 'admin', '/admin/auth/group.html', '', '权限组', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565758397', '1565758397', '1');
INSERT INTO `lm_admin_log` VALUES ('52', '1', 'admin', '/admin/Auth/adminRule.html', '{\"page\":\"1\",\"limit\":\"10\"}', '权限列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565758398', '1565758398', '1');
INSERT INTO `lm_admin_log` VALUES ('53', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"2ztxp\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565776198', '1565776198', '1');
INSERT INTO `lm_admin_log` VALUES ('54', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"xszg\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565830683', '1565830683', '1');
INSERT INTO `lm_admin_log` VALUES ('55', '0', 'Unknown', '/index.php/admin/login/index.html', '{\"username\":\"admin\",\"captcha\":\"brcer\",\"rememberMe\":\"true\"}', '[登录成功]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '127.0.0.1', '1565834781', '1565834781', '1');

-- -----------------------------
-- Table structure for `lm_auth_group`
-- -----------------------------
DROP TABLE IF EXISTS `lm_auth_group`;
CREATE TABLE `lm_auth_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '全新ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='管理员分组';

-- -----------------------------
-- Records of `lm_auth_group`
-- -----------------------------
INSERT INTO `lm_auth_group` VALUES ('1', '超级管理员', '1', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30', '1465114224', '');
INSERT INTO `lm_auth_group` VALUES ('2', '管理员', '1', '0,1,2,270,15,16,145,17,181,18,111,3,5,127,128,4,129,189,190,239,241,242,7,9,14,13,27,29,161,163,164,162,38,167,182,169,166,28,48,31,32,45,174,46,179,196,197,202,252,203,204,272,206,207,212,208,260,209,215,267,269,276,277,274,283,285,286,278,275,', '1465114224', '');
INSERT INTO `lm_auth_group` VALUES ('3', '商品管理员', '1', '27,29,161,163,164,162,38,167,182,169,166,', '1465114224', '');

-- -----------------------------
-- Table structure for `lm_auth_rule`
-- -----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

-- -----------------------------
-- Records of `lm_auth_rule`
-- -----------------------------
INSERT INTO `lm_auth_rule` VALUES ('1', 'System', '系统面板', '1', '1', '0', '1', 'fa fa-home', '', '0', '0', '1446535750', '');
INSERT INTO `lm_auth_rule` VALUES ('2', 'System', '系统设置', '1', '1', '0', '1', 'fa fa-gears', '', '1', '0', '1446535789', '');
INSERT INTO `lm_auth_rule` VALUES ('3', 'Database', '数据库管理', '1', '1', '0', '1', 'fa fa-database', '', '1', '0', '1446535805', '');
INSERT INTO `lm_auth_rule` VALUES ('4', 'Database/restore', '还原数据库', '2', '1', '0', '1', 'fa fa-database', '', '3', '0', '1446535750', '');
INSERT INTO `lm_auth_rule` VALUES ('5', 'Database/backup', '数据库备份', '2', '1', '0', '0', 'fa fa-database', '', '3', '0', '1446535834', '');
INSERT INTO `lm_auth_rule` VALUES ('6', 'Auth', '权限管理', '1', '1', '0', '1', 'fa fa-cog', '', '1', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('7', 'Auth/adminRule', '权限列表', '1', '1', '0', '1', 'fa fa-cog', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('8', 'Auth/ruleEdit', '权限编辑', '2', '1', '0', '0', 'fa fa-cog', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('9', 'Database/repair', '数据库修复', '2', '1', '0', '0', '', '', '3', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('10', 'Database/import', '数据还原', '2', '1', '0', '0', '', '', '3', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('11', 'Database/downFile', '数据下载', '2', '1', '0', '0', '', '', '3', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('12', 'Database/delSqlFiles', '删除数据库', '2', '1', '0', '0', '', '', '3', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('13', 'Database/index', '数据库列表', '1', '1', '0', '1', 'fa fa-database', '', '3', '1', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('14', 'Auth/ruleState', '菜单显示或者隐藏', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('15', 'Auth/ruleOpen', '权限是否验证', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('16', 'Auth/ruleSort', '权限排序', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('17', 'Auth/ruleDel', '权限删除', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('18', 'Auth/ruleSelectDel', '权限批量删除', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('19', 'Auth/ruleAdd', '权限增加', '2', '1', '0', '0', '', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('20', 'System/site', '站点设置', '1', '1', '0', '1', 'fa fa-gears', '', '2', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('21', 'Adminlog/index', '日志管理', '1', '1', '1', '1', '', '', '2', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('22', 'Database/optimize', '数据库优化', '1', '1', '1', '0', '', '', '3', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('23', 'addons', '插件管理', '1', '1', '1', '1', '', '', '0', '0', '0', '1565756286');
INSERT INTO `lm_auth_rule` VALUES ('24', 'addons', '插件设置', '1', '1', '1', '1', '', '', '23', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('25', 'addons/index', '插件列表', '1', '1', '1', '1', 'fa fa-globe', '', '24', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('26', 'Auth/group', '权限组', '1', '1', '1', '1', 'fa fa-globe', '', '6', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('27', 'Auth/groupDel', '用户组删除', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('28', 'Auth/groupAdd', '用户组添加', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('29', 'Auth/groupEdit', '用户组修改', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('30', 'Auth/groupState', '用户组状态修改', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('31', 'Auth/groupSelectDel', '用户组批量删除', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('32', 'Auth/groupAccess', '用户组显示权限', '1', '1', '1', '0', '', '', '26', '0', '0', '');
INSERT INTO `lm_auth_rule` VALUES ('33', 'Auth/groupSetaccess', '用户组保存权限', '1', '1', '1', '0', '', '', '26', '0', '0', '');

-- -----------------------------
-- Table structure for `lm_config`
-- -----------------------------
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
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='配置参数表';

-- -----------------------------
-- Records of `lm_config`
-- -----------------------------
INSERT INTO `lm_config` VALUES ('1', 'site_name', 'lemocms', '网站名称', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('2', 'site_phone', '3', '网站客服服务电话', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('3', 'site_state', '1', '状态', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('4', 'site_logo', 'site_logo.png', '网站logo图', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('5', 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('6', 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('7', 'site_icp', '2', 'ICP备案号', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('8', 'site_tel400', '40002541852', '解释,备注', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('9', 'site_email', '858761000@qq.com', '电子邮件', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('10', 'site_copyright', 'LEMOCMS版权所有@2018', '底部版权信息', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('11', 'captcha_status_login', '1', '会员登录是否需要验证码', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('12', 'captcha_status_register', '1', '会员注册是否验证码', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('14', 'sms_appid', 'LTAIesI7qxnHLgKE', '短信平台账号', 'sms', '1', '', '');
INSERT INTO `lm_config` VALUES ('15', 'sms_secret', 'sbA6wnefJLD7pv7WipcxL0M3IMb3l9', '短信平台密钥', 'sms', '1', '', '');
INSERT INTO `lm_config` VALUES ('16', 'email_host', 'smtp.qq.com', '邮箱地址', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('17', 'email_port', '25', '邮箱端口', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('18', 'email_addr', '994927909@qq.com', '邮箱发件人地址', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('19', 'email_id', '994927909@qq.com', '身份验证用户名', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('20', 'email_pass', '11211', '用户名密码', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('21', 'email_secure', 'smtp', '邮箱发送协议', 'email', '1', '', '');
INSERT INTO `lm_config` VALUES ('22', 'upload_file_type', 'bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4', '图片上传保存方式', 'upload', '1', '', '');
INSERT INTO `lm_config` VALUES ('23', 'cache_open', '0', '是否开启缓存', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('24', 'alioss_accessid', '', 'accessid', 'oss', '1', '', '');
INSERT INTO `lm_config` VALUES ('25', 'alioss_accesssecret', '', 'oss_accesssecret', 'oss', '1', '', '');
INSERT INTO `lm_config` VALUES ('26', 'alioss_bucket', '', 'oss_bucket', 'oss', '1', '', '');
INSERT INTO `lm_config` VALUES ('27', 'alioss_endpoint', '', 'oss_endpoint', 'oss', '1', '', '');
INSERT INTO `lm_config` VALUES ('28', 'aliendpoint_type', '0', 'aliendpoint_type', 'oss', '1', '', '');
INSERT INTO `lm_config` VALUES ('29', 'node_site_url', '', '站内IM服务器地址', 'im', '1', '', '');
INSERT INTO `lm_config` VALUES ('30', 'node_site_use', '0', '是否启用im', 'im', '1', '', '');
INSERT INTO `lm_config` VALUES ('31', 'qq_isuse', '1', '是否使用QQ互联', 'qq', '1', '', '');
INSERT INTO `lm_config` VALUES ('32', 'qq_appid', '', 'qq互联id', 'qq', '1', '', '');
INSERT INTO `lm_config` VALUES ('33', 'qq_appkey', '', 'qq秘钥', 'qq', '1', '', '');
INSERT INTO `lm_config` VALUES ('34', 'sina_isuse', '1', '是的使用微博登录', 'sina', '1', '', '');
INSERT INTO `lm_config` VALUES ('35', 'sina_wb_akey', '', '新浪id', 'sina', '1', '', '');
INSERT INTO `lm_config` VALUES ('36', 'sina_wb_skey', '', '新浪秘钥', 'sina', '1', '', '');
INSERT INTO `lm_config` VALUES ('37', 'sms_register', '0', '是否手机注册', 'mobile', '1', '', '');
INSERT INTO `lm_config` VALUES ('38', 'sms_login', '0', '是否手机登录', 'mobile', '1', '', '');
INSERT INTO `lm_config` VALUES ('39', 'sms_password', '0', '是否手机找回密码', 'mobile', '1', '', '');
INSERT INTO `lm_config` VALUES ('40', 'weixin_isuse', '', '是否微信登录', 'weixin', '1', '', '');
INSERT INTO `lm_config` VALUES ('41', 'weixin_appid', '', '微信appid', 'weixin', '1', '', '');
INSERT INTO `lm_config` VALUES ('42', 'weixin_secret', '', '微信appserite', 'weixin', '1', '', '');
INSERT INTO `lm_config` VALUES ('43', 'baidu_ak', '22bb7221fc279a484895afcc6a0bb33a', '百度地图AK密钥', 'baidu', '1', '', '');
INSERT INTO `lm_config` VALUES ('44', 'site_licence', '', '营业执照', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('45', 'site_domain', 'https://www.lemocms.com', '网站地址', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('46', 'upload_file_max', '200', '最大文件上传大小', 'upload', '1', '', '');
INSERT INTO `lm_config` VALUES ('47', 'site_seo_title', 'LEMOCMS-PHP-THINKPHP内容管理系统', '首页标题', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('48', 'site_seo_keywords', 'LEMOCMS,LEMOCMS官网,LEMOCMS社区,PHP内容管理系统,开源CMS,php cms,thinkphp', '首页关键词', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('49', 'site_seo_desc', 'LEMOCMS内容管理系统是一款高效建站的PHP内容管理系统，同时也是一款开源CMS系统。LEMOCMS官网主要发布一些官网最新动态，同时也为广大建站爱好者提供一个交流探讨的平台。 - Powered by LEMOCMS', '首页描述', 'site', '1', '', '');
INSERT INTO `lm_config` VALUES ('50', 'upload_water', '1', '水印开始关闭', 'upload', '1', '', '');
INSERT INTO `lm_config` VALUES ('51', 'upload_water_position', '', '水印位置', 'upload', '1', '', '');
INSERT INTO `lm_config` VALUES ('52', 'sms_product', 'lemocms', '产品', 'sms', '1', '', '');
INSERT INTO `lm_config` VALUES ('53', 'sms_template', 'SMS_158941284', '模板id', 'sms', '1', '', '');
