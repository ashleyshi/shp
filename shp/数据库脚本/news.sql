/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-12-24 21:12:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL COMMENT '新闻名称',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `time` date NOT NULL COMMENT '发布时间',
  `person` varchar(20) NOT NULL COMMENT '发布人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('11', '测试新闻1', '测试内容1', '2015-12-19', '陈依婷');
INSERT INTO `news` VALUES ('12', '测试新闻2', '测试内容2', '2015-12-19', '李雪');
INSERT INTO `news` VALUES ('13', '测试新闻3', '测试内容3', '2015-12-19', '当当');
INSERT INTO `news` VALUES ('14', '测试新闻4', '测试内容4', '2015-12-19', '刘襄阅');
