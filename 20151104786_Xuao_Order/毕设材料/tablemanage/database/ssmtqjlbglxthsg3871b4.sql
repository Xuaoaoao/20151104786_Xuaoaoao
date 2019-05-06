/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50160
Source Host           : localhost:3306
Source Database       : ssmtqjlbglxthsg3871b4

Target Server Type    : MYSQL
Target Server Version : 50160
File Encoding         : 65001

Date: 2019-02-24 15:09:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT '普通管理员',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('2', 'hsg', 'hsg', '超级管理员', '2017-04-02 21:00:56');
INSERT INTO `allusers` VALUES ('4', '111111', '111111', '普通管理员', '2019-02-24 14:52:37');

-- ----------------------------
-- Table structure for `dingzhuoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingzhuoxinxi`;
CREATE TABLE `dingzhuoxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qiuzhuohao` varchar(50) DEFAULT NULL,
  `meixiaoshijifei` varchar(50) DEFAULT NULL,
  `dingzhuoshijian` varchar(50) DEFAULT NULL,
  `huiyuanbianhao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `huiyuandengji` varchar(50) DEFAULT NULL,
  `zhekou` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingzhuoxinxi
-- ----------------------------
INSERT INTO `dingzhuoxinxi` VALUES ('12', '007', '20', '', '001', '赵小型', '砖石', '0.7', '', '2019-02-23 18:10:53');
INSERT INTO `dingzhuoxinxi` VALUES ('13', '101', '25', '', '002', '王力宏', '铂金', '0.8', '', '2019-02-24 15:03:58');

-- ----------------------------
-- Table structure for `fufei`
-- ----------------------------
DROP TABLE IF EXISTS `fufei`;
CREATE TABLE `fufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qiuzhuohao` varchar(50) DEFAULT NULL,
  `meixiaoshijifei` varchar(50) DEFAULT NULL,
  `zongshichang` varchar(50) DEFAULT NULL,
  `huiyuanbianhao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `huiyuandengji` varchar(50) DEFAULT NULL,
  `zhekou` varchar(50) DEFAULT NULL,
  `zongjine` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `issh` varchar(10) DEFAULT '否',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of fufei
-- ----------------------------
INSERT INTO `fufei` VALUES ('18', '101', '25', '1', '002', '王力宏', '铂金', '0.8', '20', '', '是', '2019-02-24 15:04:32');
INSERT INTO `fufei` VALUES ('19', '007', '20', '21', '001', '赵小型', '砖石', '0.7', '294', '', '是', '2019-02-24 15:06:12');

-- ----------------------------
-- Table structure for `huiyuanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `huiyuanxinxi`;
CREATE TABLE `huiyuanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huiyuanbianhao` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `huiyuandengji` varchar(50) DEFAULT NULL,
  `zhekou` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huiyuanxinxi
-- ----------------------------
INSERT INTO `huiyuanxinxi` VALUES ('6', '001', '001', '赵小型', '女', '砖石', '0.7', '13186835580', 'ok', '2019-02-22 23:24:03');
INSERT INTO `huiyuanxinxi` VALUES ('7', '002', '002', '王力宏', '男', '铂金', '0.8', '13658996477', '', '2019-02-24 14:58:01');

-- ----------------------------
-- Table structure for `huodongxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `huodongxinxi`;
CREATE TABLE `huodongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) DEFAULT NULL,
  `biaoti` varchar(50) DEFAULT NULL,
  `neirong` varchar(500) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huodongxinxi
-- ----------------------------
INSERT INTO `huodongxinxi` VALUES ('2', '020', '保时捷发布2014款911 GT 将于10月发售', '', '2019-02-22 23:24:07');
INSERT INTO `huodongxinxi` VALUES ('3', '026', '市十一届人大六次会议', '', '2019-02-22 23:24:07');
INSERT INTO `huodongxinxi` VALUES ('4', '015', '亮亮堂堂迎国庆（图）', '', '2019-02-22 23:24:07');
INSERT INTO `huodongxinxi` VALUES ('5', '013', '世界艾滋病日 志愿者在行动（组图）', '', '2019-02-22 23:24:07');
INSERT INTO `huodongxinxi` VALUES ('6', '001', '保时捷发布2014款911 GT 将于10月发售', '', '2019-02-22 23:24:07');
INSERT INTO `huodongxinxi` VALUES ('7', '1111123', '砂进口的恢复上课的恢复健康', '奥术大师大所多三', '2019-02-24 15:05:36');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhanghao` varchar(50) DEFAULT NULL,
  `zhaopian` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `liuyan` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `huifu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------

-- ----------------------------
-- Table structure for `qiuzhuoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `qiuzhuoxinxi`;
CREATE TABLE `qiuzhuoxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qiuzhuohao` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `meixiaoshijifei` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of qiuzhuoxinxi
-- ----------------------------
INSERT INTO `qiuzhuoxinxi` VALUES ('2', '031', '已订', '25', 'ok', '2019-02-22 23:24:12');
INSERT INTO `qiuzhuoxinxi` VALUES ('3', '011', '空闲', '20', '暂无', '2019-02-22 23:24:12');
INSERT INTO `qiuzhuoxinxi` VALUES ('4', '019', '空闲', '20', '暂无', '2019-02-22 23:24:12');
INSERT INTO `qiuzhuoxinxi` VALUES ('5', '007', '空闲', '20', '无', '2019-02-22 23:24:12');
INSERT INTO `qiuzhuoxinxi` VALUES ('6', '001', '已订', '20', 'ok', '2019-02-22 23:24:12');
INSERT INTO `qiuzhuoxinxi` VALUES ('7', '101', '空闲', '25', '', '2019-02-24 14:58:20');
