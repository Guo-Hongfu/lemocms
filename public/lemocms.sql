-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-08-18 10:26:14
-- 服务器版本： 5.7.26
-- PHP 版本： 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lemocms`
--

-- --------------------------------------------------------

--
-- 表的结构 `lm_admin`
--

CREATE TABLE `lm_admin` (
  `id` tinyint(4) NOT NULL COMMENT '管理员ID',
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
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员';

--
-- 转存表中的数据 `lm_admin`
--

INSERT INTO `lm_admin` (`id`, `username`, `password`, `group_id`, `email`, `realname`, `mobile`, `ip`, `mdemail`, `status`, `avatar`, `create_time`, `update_time`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\294faa45405fa24da59c311f55ce313f.png', 1482132862, 1566111856),
(2, 'yuege', 'e10adc3949ba59abbe56e057f20f883e', 2, '994927909@qq.com', '', '18397423845', '127.0.0.1', '0', 1, '/storage/uploads/20190817\\dc25c2714c46a0d2bee894a7d05eb15f.png', 1535512393, 1566030896),
(3, 'dandan', '69d9387a9f1e957872943a2b957e4947', 2, '994927909@qq.com', NULL, '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190817\\a17c794ac7fae7db012aa6e997cf3400.jpg', 1564041575, 1566001700),
(4, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 1, '994927909@qq.com', NULL, '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190816\\824fbacce27ce094eb3b1e115dfdb709.png', 1565941890, 1565942219),
(5, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 2, '994927909@qq.com', NULL, '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', 1565942044, 1565942280),
(6, 'admin3', 'e10adc3949ba59abbe56e057f20f883e', 2, '994927909@qq.com', NULL, '18397423845', '119.122.91.146', '0', 1, '/storage/uploads/20190816\\97255951134abef478f1af5a83b40523.jpg', 1565942140, 1565942281);

-- --------------------------------------------------------

--
-- 表的结构 `lm_admin_log`
--

CREATE TABLE `lm_admin_log` (
  `id` bigint(16) UNSIGNED NOT NULL COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `username` varchar(100) DEFAULT NULL,
  `log_url` varchar(100) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_title` varchar(100) DEFAULT NULL COMMENT '日志描述',
  `log_agent` varchar(50) DEFAULT NULL,
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT NULL COMMENT '日志时间',
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- 表的结构 `lm_adv`
--

CREATE TABLE `lm_adv` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '广告id',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `ad_image` mediumtext NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `link_admin` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击量',
  `sort` int(20) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) DEFAULT NULL COMMENT '背景颜色',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lm_adv`
--

INSERT INTO `lm_adv` (`id`, `pid`, `media_type`, `ad_name`, `ad_link`, `ad_image`, `start_time`, `end_time`, `link_admin`, `link_email`, `link_phone`, `click_count`, `sort`, `status`, `orderby`, `target`, `bgcolor`, `create_time`, `update_time`) VALUES
(1, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-24/a7a54a5b527f0b1b069b8421378ad0fa.jpg', 1451577600, 1483286400, '', '', '', 0, NULL, 1, 0, 0, '#43d7f6', NULL, NULL),
(2, 2, 0, '首页', 'javascript:void(0);', '/public/upload/ad/2018/04-25/93bf5c1ebdf4c4359253a107bcbdbe98.jpg', 1451577600, 1767283200, '', '', '', 0, NULL, 1, 0, 0, '#ff8000', NULL, 1566106884),
(3, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/6eeaa63e76c946927d0c1e67f6cf4f4f.jpg', 1451577600, 1767283200, '', '', '', 0, NULL, 1, 0, 0, '#fea8c1', NULL, NULL),
(4, 2, 0, '轮播', 'javascript:void(0);', '/public/upload/ad/2018/04-13/8099744a886c2cfad7c837e28aee9d52.jpg', 1451577600, 1767283200, '', '', '', 0, NULL, 1, 0, 0, '#f1e6d2', NULL, NULL),
(7, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-13/7009c820b93bcf31d3e42df31d78ed71.jpg', 1451577600, 1767283200, '', '', '', 0, NULL, 1, 0, 0, '#f1dcf7', NULL, NULL),
(12, 2, 0, '其他', 'javascript:void(0);', '/public/upload/ad/2018/04-24/44aa330b056f5b090b6d6ac8a9a072dd.jpg', 1451577600, 1767283200, '', '', '', 0, NULL, 1, 0, 0, '#000000', NULL, NULL),
(82, 1, 0, '', 'https://www.baidu.com', '/storage/uploads/20190818\\0c2a7f85348cd9ae508ca860388fa021.png', 0, 0, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566107420, 1566107420),
(83, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\2db9e450c251d0d21dac3d3384134bb0.png', 1566130740, 0, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566107921, 1566107921),
(84, 4, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\8ebd41bd38db53338af00026cb592bc3.png', 1566130740, 0, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566107968, 1566107968),
(85, 1, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\674ca52c87c4552352f35d820c3ce33e.png', 0, 0, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566108105, 1566108105),
(86, 2, 0, '组合套餐', 'https://www.baidu.com', '/storage/uploads/20190818\\cd986a75a1be03d8a7af558fda044ca4.png', 1566130740, 0, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566108149, 1566108149),
(87, 2, 0, 'banner6 ', 'https://www.baidu.com', '/storage/uploads/20190818\\7e2ca2635af1031871ab121938818a4d.png', 1564588800, 1568908800, '', '994927909@qq.com', '', 0, NULL, 1, 50, 0, NULL, 1566108542, 1566108542);

-- --------------------------------------------------------

--
-- 表的结构 `lm_adv_position`
--

CREATE TABLE `lm_adv_position` (
  `id` int(3) UNSIGNED NOT NULL COMMENT '表id',
  `position_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `ad_height` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `position_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` mediumtext COMMENT '模板',
  `status` tinyint(1) DEFAULT '0' COMMENT '0关闭1开启',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lm_adv_position`
--

INSERT INTO `lm_adv_position` (`id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`, `status`, `create_time`, `update_time`) VALUES
(1, 'Cart页面自动增加广告位 1 ', 0, 0, 'Cart页面', NULL, 1, NULL, NULL),
(2, 'Index页面自动增加广告位 2 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(4, 'Topic页面自动增加广告位 4 ', 0, 0, 'Topic页面', NULL, 1, NULL, NULL),
(9, 'Index页面自动增加广告位 9 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(10, 'Index页面自动增加广告位 10 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(11, 'Index页面自动增加广告位 11 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(12, 'Index页面自动增加广告位 12 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(13, 'Index页面自动增加广告位 13 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(14, 'Index页面自动增加广告位 14 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(15, 'Index页面自动增加广告位 15 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(16, 'Index页面自动增加广告位 16 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(17, 'Index页面自动增加广告位 17 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(18, 'Index页面自动增加广告位 18 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(19, 'Index页面自动增加广告位 19 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(20, 'Index页面自动增加广告位 20 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(21, 'Index页面自动增加广告位 21 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(22, 'Index页面自动增加广告位 22 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(23, 'Index页面自动增加广告位 23 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(24, 'Index页面自动增加广告位 24 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(25, 'Index页面自动增加广告位 25 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(26, 'Index页面自动增加广告位 26 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(27, 'Index页面自动增加广告位 27 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(28, 'Index页面自动增加广告位 28 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(49, 'Index页面自动增加广告位 49 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(50, 'Index页面自动增加广告位 50 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(51, 'Index页面自动增加广告位 51 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(52, 'Index页面自动增加广告位 52 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(101, 'Index页面自动增加广告位 101 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(102, 'Index页面自动增加广告位 102 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(103, 'Index页面自动增加广告位 103 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(104, 'Index页面自动增加广告位 104 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(105, 'Index页面自动增加广告位 105 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(106, 'Index页面自动增加广告位 106 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(107, 'Index页面自动增加广告位 107 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(108, 'Index页面自动增加广告位 108 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(204, 'Activity页面自动增加广告位 204 ', 0, 0, 'Activity页面', NULL, 1, NULL, NULL),
(205, 'Activity页面自动增加广告位 205 ', 0, 0, 'Activity页面', NULL, 1, NULL, NULL),
(206, 'Activity页面自动增加广告位 206 ', 0, 0, 'Activity页面', NULL, 1, NULL, NULL),
(207, 'Activity页面自动增加广告位 207 ', 0, 0, 'Activity页面', NULL, 1, NULL, NULL),
(208, 'Activity页面自动增加广告位 208 ', 0, 0, 'Activity页面', NULL, 1, NULL, NULL),
(300, 'Index页面自动增加广告位 300 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(301, 'Index页面自动增加广告位 301 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(302, 'Index页面自动增加广告位 302 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(303, 'Index页面自动增加广告位 303 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(304, 'Index页面自动增加广告位 304 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(305, 'Index页面自动增加广告位 305 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(306, 'Index页面自动增加广告位 306 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(307, 'Index页面自动增加广告位 307 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(400, 'Index页面自动增加广告位 400 ', 0, 0, 'Index页面', NULL, 1, NULL, NULL),
(401, 'Goods页面自动增加广告位 401 ', 0, 0, 'Goods页面', NULL, 1, NULL, NULL),
(500, 'Ad页面自动增加广告位 500 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(506, 'Ad页面自动增加广告位 506 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(507, 'Ad页面自动增加广告位 507 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(508, 'Ad页面自动增加广告位 508 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(509, 'Ad页面自动增加广告位 509 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(510, 'Ad页面自动增加广告位 510 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(511, 'Ad页面自动增加广告位 511 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(512, 'Ad页面自动增加广告位 512 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(513, 'Ad页面自动增加广告位 513 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(514, 'Ad页面自动增加广告位 514 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(515, 'Ad页面自动增加广告位 515 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(516, 'Ad页面自动增加广告位 516 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(517, 'Ad页面自动增加广告位 517 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(518, 'Ad页面自动增加广告位 518 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(531, 'Ad页面自动增加广告位 531 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(533, 'Ad页面自动增加广告位 533 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(534, 'Ad页面自动增加广告位 534 ', 0, 0, 'Ad页面', NULL, 1, NULL, NULL),
(539, '首页', 1080, 300, '其他1', NULL, 1, 1566111321, 1566111456);

-- --------------------------------------------------------

--
-- 表的结构 `lm_auth_group`
--

CREATE TABLE `lm_auth_group` (
  `id` smallint(8) UNSIGNED NOT NULL COMMENT '分组id',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员分组';

--
-- 转存表中的数据 `lm_auth_group`
--

INSERT INTO `lm_auth_group` (`id`, `title`, `status`, `rules`, `create_time`, `update_time`) VALUES
(1, '超级管理员', 1, '1,2,20,21,40,34,39,3,4,5,9,10,11,12,22,13,6,7,8,14,15,16,17,18,19,26,27,28,29,30,31,32,33,35,36,37,38,23,24,25,41,47,48,51,49,50,52,54,57,58,55,56,42,46,53,43,45,44,', 1465114224, 1566098022),
(2, '测试1', 1, '1,2,39,20,21,34,6,35,36,38,', 1565929191, 1566019644);

-- --------------------------------------------------------

--
-- 表的结构 `lm_auth_rule`
--

CREATE TABLE `lm_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
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
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限节点';

--
-- 转存表中的数据 `lm_auth_rule`
--

INSERT INTO `lm_auth_rule` (`id`, `href`, `title`, `type`, `status`, `auth_open`, `menu_status`, `icon`, `condition`, `pid`, `sort`, `create_time`, `update_time`) VALUES
(1, 'System', '系统面板', 1, 1, 0, 1, 'fa fa-home', '', 0, 0, 1446535750, NULL),
(2, 'System', '系统设置', 1, 1, 0, 1, 'fa fa-gears', '', 1, 0, 1446535789, NULL),
(3, 'Database', '数据库管理', 1, 1, 0, 1, 'fa fa-database', '', 1, 0, 1446535805, NULL),
(4, 'Database/restore', '还原数据库', 2, 1, 0, 1, 'fa fa-database', '', 3, 0, 1446535750, NULL),
(5, 'Database/backup', '数据库备份', 2, 1, 0, 0, 'fa fa-database', '', 3, 0, 1446535834, NULL),
(6, 'Auth', '权限管理', 1, 1, 0, 1, 'fa fa-cog', '', 1, 0, 0, NULL),
(7, 'Auth/adminRule', '权限列表', 1, 1, 0, 1, 'fa fa-cog', '', 6, 0, 0, NULL),
(8, 'Auth/ruleEdit', '权限编辑', 2, 1, 0, 0, 'fa fa-cog', '', 7, 0, 0, NULL),
(9, 'Database/repair', '数据库修复', 2, 1, 0, 0, NULL, '', 3, 0, 0, NULL),
(10, 'Database/import', '数据还原', 2, 1, 0, 0, NULL, '', 3, 0, 0, NULL),
(11, 'Database/downFile', '数据下载', 2, 1, 0, 0, NULL, '', 3, 0, 0, NULL),
(12, 'Database/delSqlFiles', '删除数据库', 2, 1, 0, 0, NULL, '', 3, 0, 0, NULL),
(13, 'Database/index', '数据库列表', 1, 1, 0, 1, 'fa fa-database', '', 3, 1, 0, NULL),
(14, 'Auth/ruleState', '菜单显示或者隐藏', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(15, 'Auth/ruleOpen', '权限是否验证', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(16, 'Auth/ruleSort', '权限排序', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(17, 'Auth/ruleDel', '权限删除', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(18, 'Auth/ruleSelectDel', '权限批量删除', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(19, 'Auth/ruleAdd', '权限增加', 2, 1, 0, 0, NULL, '', 7, 0, 0, NULL),
(20, 'System/site', '站点设置', 1, 1, 0, 1, 'fa fa-gears', '', 2, 0, 0, NULL),
(21, 'Adminlog/index', '日志管理', 1, 1, 0, 1, 'fa fa-life-ring', '', 2, 0, 0, 1566007925),
(22, 'Database/optimize', '数据库优化', 1, 1, 0, 0, NULL, '', 3, 0, 0, NULL),
(23, 'Addons', '插件管理', 1, 1, 0, 1, 'fa fa-flickr', '', 0, 0, 0, 1566053592),
(24, 'Addons', '插件设置', 1, 1, 0, 1, 'fa fa-flickr', '', 23, 0, 0, NULL),
(25, 'Addons/index', '插件列表', 1, 1, 0, 1, 'fa fa-globe', '', 24, 0, 0, NULL),
(26, 'Auth/group', '权限组', 1, 1, 0, 1, 'fa fa-globe', '', 6, 0, 0, NULL),
(27, 'Auth/groupDel', '用户组删除', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(28, 'Auth/groupAdd', '用户组添加', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(29, 'Auth/groupEdit', '用户组修改', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(30, 'Auth/groupState', '用户组状态修改', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(31, 'Auth/groupSelectDel', '用户组批量删除', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(32, 'Auth/groupAccess', '用户组显示权限', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(33, 'Auth/groupSetaccess', '用户组保存权限', 1, 1, 0, 0, NULL, '', 26, 0, 0, NULL),
(34, 'Uploads/uploads', '上传文件', 1, 1, 0, 0, NULL, '', 2, 0, 0, NULL),
(35, 'Auth/adminList', '管理员列表', 1, 1, 0, 1, 'fa fa-user-circle', '', 6, 0, 1, NULL),
(36, 'Auth/adminAdd', '添加管理员', 1, 1, 0, 0, NULL, '', 35, 0, 0, NULL),
(37, 'Auth/adminDel', '删除管理员', 1, 1, 0, 0, NULL, '', 35, 0, 0, NULL),
(38, 'Auth/adminState', '管理员状态', 1, 1, 0, 0, NULL, '', 35, 0, 0, NULL),
(39, 'Index/password', '修改密码', 1, 1, 0, 0, NULL, '', 2, 0, 0, NULL),
(40, 'Adminlog/delete', '删除日志', 1, 1, 0, 0, NULL, '', 21, 0, 0, NULL),
(41, 'Content', '内容管理', 1, 1, 0, 1, 'fa fa-folder-open', '', 0, 50, 1566092187, 1566092574),
(42, 'Link', '链接管理', 1, 1, 0, 1, 'fa fa-link', '', 41, 50, 1566092432, 1566092684),
(43, 'Link/add', '链接添加', 1, 1, 0, 0, '', '', 46, 50, 1566092486, 1566092801),
(44, 'Link/delete', '链接删除', 1, 1, 0, 0, '', '', 46, 50, 1566092613, 1566092798),
(45, 'Link/state', '链接状态', 1, 1, 0, 0, '', '', 46, 50, 1566092677, 1566092795),
(46, 'Link/index', '链接列表', 1, 1, 0, 1, 'fa fa-link', '', 42, 50, 1566092770, 1566092770),
(47, 'Adv', '广告管理', 1, 1, 0, 1, 'fa fa-audio-description', '', 41, 0, 0, NULL),
(48, 'Adv/index', '广告列表', 1, 1, 0, 1, 'fa fa-audio-description', '', 47, 0, 0, NULL),
(49, 'Adv/add', '广告添加', 1, 1, 0, 0, '', '', 48, 0, 0, NULL),
(50, 'Adv/delete', '广告删除', 1, 1, 0, 0, NULL, '', 48, 0, 0, NULL),
(51, 'Adv/state', '广告状态', 1, 1, 0, 0, NULL, '', 48, 0, 0, NULL),
(52, 'Adv/order', '广告排序', 1, 1, 0, 0, NULL, '', 48, 0, 0, NULL),
(53, 'Link/order', '链接排序', 1, 1, 0, 0, NULL, '', 46, 0, 0, NULL),
(54, 'Adv/pos', '广告位置', 1, 1, 0, 1, 'fa fa-audio-description', '', 47, 0, 0, NULL),
(55, 'Adv/posAdd', '广告位添加/编辑', 1, 1, 0, 0, NULL, '', 54, 0, 0, NULL),
(56, 'Adv/posDel', '广告位删除', 1, 1, 0, 0, NULL, '', 54, 0, 0, NULL),
(57, 'Adv/posState', '广告位状态', 1, 1, 0, 0, NULL, '', 54, 0, 0, NULL),
(58, 'Adv/posOrder', '广告位排序', 1, 1, 0, 0, NULL, '', 54, 0, 0, NULL);


-- --------------------------------------------------------

--
-- 表的结构 `lm_config`
--

CREATE TABLE `lm_config` (
  `id` smallint(5) NOT NULL,
  `code` varchar(30) NOT NULL,
  `value` mediumtext,
  `remark` varchar(100) DEFAULT '解释,备注',
  `type` varchar(20) DEFAULT 'site',
  `status` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='配置参数表';

--
-- 转存表中的数据 `lm_config`
--

INSERT INTO `lm_config` (`id`, `code`, `value`, `remark`, `type`, `status`, `create_time`, `update_time`) VALUES
(1, 'site_name', 'lemocm', '网站名称', 'site', 1, NULL, NULL),
(2, 'site_phone', '3', '网站客服服务电话', 'site', 1, NULL, NULL),
(3, 'site_state', '1', '状态', 'site', 1, NULL, NULL),
(4, 'site_logo', '/storage/uploads/logo.png', '网站logo图', 'site', 1, NULL, NULL),
(5, 'site_mobile_logo', 'site_mobile_logo.png', '默认网站手机端logo', 'site', 1, NULL, NULL),
(6, 'site_logowx', 'site_logowx.jpg', '微信网站二维码', 'site', 1, NULL, NULL),
(7, 'site_icp', '2', 'ICP备案号', 'site', 1, NULL, NULL),
(8, 'site_tel400', '40002541852', '解释,备注', 'site', 1, NULL, NULL),
(9, 'site_email', '858761000@qq.com', '电子邮件', 'site', 1, NULL, NULL),
(10, 'site_copyright', 'LEMOCMS版权所有@2018', '底部版权信息', 'site', 1, NULL, NULL),
(11, 'captcha_status_login', '1', '会员登录是否需要验证码', 'site', 1, NULL, NULL),
(12, 'captcha_status_register', '1', '会员注册是否验证码', 'site', 1, NULL, NULL),
(14, 'sms_appid', 'LTAIesI7qxnHLgKE', '短信平台账号', 'sms', 1, NULL, NULL),
(15, 'sms_secret', 'sbA6wnefJLD7pv7WipcxL0M3IMb3l9', '短信平台密钥', 'sms', 1, NULL, NULL),
(16, 'email_host', 'smtp.qq.com', '邮箱地址', 'email', 1, NULL, NULL),
(17, 'email_port', '25', '邮箱端口', 'email', 1, NULL, NULL),
(18, 'email_addr', '994927909@qq.com', '邮箱发件人地址', 'email', 1, NULL, NULL),
(19, 'email_id', '994927909@qq.com', '身份验证用户名', 'email', 1, NULL, NULL),
(20, 'email_pass', '11211', '用户名密码', 'email', 1, NULL, NULL),
(21, 'email_secure', 'smtp', '邮箱发送协议', 'email', 1, NULL, NULL),
(22, 'upload_file_type', 'bmp|png|gif|jpg|jpeg|zip|rar|txt|ppt|xls|doc|mp3|mp4', '图片上传保存方式', 'upload', 1, NULL, NULL),
(23, 'cache_open', '0', '是否开启缓存', 'site', 1, NULL, NULL),
(24, 'alioss_accessid', NULL, 'accessid', 'oss', 1, NULL, NULL),
(25, 'alioss_accesssecret', NULL, 'oss_accesssecret', 'oss', 1, NULL, NULL),
(26, 'alioss_bucket', NULL, 'oss_bucket', 'oss', 1, NULL, NULL),
(27, 'alioss_endpoint', NULL, 'oss_endpoint', 'oss', 1, NULL, NULL),
(28, 'aliendpoint_type', '0', 'aliendpoint_type', 'oss', 1, NULL, NULL),
(29, 'node_site_url', NULL, '站内IM服务器地址', 'im', 1, NULL, NULL),
(30, 'node_site_use', '0', '是否启用im', 'im', 1, NULL, NULL),
(31, 'qq_isuse', '1', '是否使用QQ互联', 'qq', 1, NULL, NULL),
(32, 'qq_appid', '', 'qq互联id', 'qq', 1, NULL, NULL),
(33, 'qq_appkey', '', 'qq秘钥', 'qq', 1, NULL, NULL),
(34, 'sina_isuse', '1', '是的使用微博登录', 'sina', 1, NULL, NULL),
(35, 'sina_wb_akey', '', '新浪id', 'sina', 1, NULL, NULL),
(36, 'sina_wb_skey', '', '新浪秘钥', 'sina', 1, NULL, NULL),
(37, 'sms_register', '0', '是否手机注册', 'mobile', 1, NULL, NULL),
(38, 'sms_login', '0', '是否手机登录', 'mobile', 1, NULL, NULL),
(39, 'sms_password', '0', '是否手机找回密码', 'mobile', 1, NULL, NULL),
(40, 'weixin_isuse', NULL, '是否微信登录', 'weixin', 1, NULL, NULL),
(41, 'weixin_appid', NULL, '微信appid', 'weixin', 1, NULL, NULL),
(42, 'weixin_secret', NULL, '微信appserite', 'weixin', 1, NULL, NULL),
(43, 'baidu_ak', '22bb7221fc279a484895afcc6a0bb33a', '百度地图AK密钥', 'baidu', 1, NULL, NULL),
(44, 'site_licence', '', '营业执照', 'site', 1, NULL, NULL),
(45, 'site_domain', 'https://www.lemocms.com', '网站地址', 'site', 1, NULL, NULL),
(46, 'upload_file_max', '200', '最大文件上传大小', 'upload', 1, NULL, NULL),
(47, 'site_seo_title', 'LEMOCMS-PHP-THINKPHP内容管理系统', '首页标题', 'site', 1, NULL, NULL),
(48, 'site_seo_keywords', 'LEMOCMS,LEMOCMS官网,LEMOCMS社区,PHP内容管理系统,开源CMS,php cms,thinkphp', '首页关键词', 'site', 1, NULL, NULL),
(49, 'site_seo_desc', 'LEMOCMS内容管理系统是一款高效建站的PHP内容管理系统，同时也是一款开源CMS系统。LEMOCMS官网主要发布一些官网最新动态，同时也为广大建站爱好者提供一个交流探讨的平台。 - Powered by LEMOCMS', '首页描述', 'site', 1, NULL, NULL),
(50, 'upload_water', '1', '水印开始关闭', 'upload', 1, NULL, NULL),
(51, 'upload_water_position', NULL, '水印位置', 'upload', 1, NULL, NULL),
(52, 'sms_product', 'lemocms', '产品', 'sms', 1, NULL, NULL),
(53, 'sms_template', 'SMS_158941284', '模板id', 'sms', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `lm_link`
--

CREATE TABLE `lm_link` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lm_link`
--

INSERT INTO `lm_link` (`id`, `name`, `url`, `type_id`, `email`, `qq`, `sort`, `status`, `create_time`, `update_time`) VALUES
(23, 'lemocms2', 'https://www.lemocms.com', NULL, '994927909@qq.com', '994927909', 50, 1, 1566102829, 1566103652),
(25, '百度', 'https://www.baidu.com', NULL, '994927909@qq.com', '994927909', 50, 1, 1566103165, 1566103165),
(26, '新浪', 'https://www.sina.com', NULL, '994927909@qq.com', '994927909', 50, 1, 1566103233, 1566103233);


--
-- 转储表的索引
--

--
-- 表的索引 `lm_admin`
--
ALTER TABLE `lm_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_username` (`username`);

--
-- 表的索引 `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `admin_id` (`admin_id`);

--
-- 表的索引 `lm_adv`
--
ALTER TABLE `lm_adv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`status`) USING BTREE,
  ADD KEY `position_id` (`pid`) USING BTREE;

--
-- 表的索引 `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `position_id` (`id`);

--
-- 表的索引 `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `title` (`title`);

--
-- 表的索引 `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `href` (`href`);


--
-- 表的索引 `lm_config`
--
ALTER TABLE `lm_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- 表的索引 `lm_link`
--
ALTER TABLE `lm_link`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lm_admin`
--
ALTER TABLE `lm_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `lm_admin_log`
--
ALTER TABLE `lm_admin_log`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=1600;

--
-- 使用表AUTO_INCREMENT `lm_adv`
--
ALTER TABLE `lm_adv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告id', AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `lm_adv_position`
--
ALTER TABLE `lm_adv_position`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id', AUTO_INCREMENT=540;

--
-- 使用表AUTO_INCREMENT `lm_auth_group`
--
ALTER TABLE `lm_auth_group`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分组id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `lm_auth_rule`
--
ALTER TABLE `lm_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;


--
-- 使用表AUTO_INCREMENT `lm_config`
--
ALTER TABLE `lm_config`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用表AUTO_INCREMENT `lm_link`
--
ALTER TABLE `lm_link`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
