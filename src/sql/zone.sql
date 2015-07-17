/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : zone

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2015-05-09 11:17:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `siteId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`),
  KEY `siteId` (`siteId`),
  KEY `userId` (`userId`),
  CONSTRAINT `siteId` FOREIGN KEY (`siteId`) REFERENCES `site` (`SiteId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'first', 'hello', '1', '1');
INSERT INTO `article` VALUES ('2', 'second', '啊啊啊', '1', '1');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `kindId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kindId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '管理区');
INSERT INTO `kind` VALUES ('2', '交流区');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `articleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`replyId`),
  KEY `reply_article` (`articleId`),
  KEY `reply_user` (`userId`),
  CONSTRAINT `reply_article` FOREIGN KEY (`articleId`) REFERENCES `article` (`articleId`),
  CONSTRAINT `reply_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', 'hi，nice to meet you', '1', '1');
INSERT INTO `reply` VALUES ('2', 'yes,your are handsome', '1', '1');
INSERT INTO `reply` VALUES ('3', '啊啊啊啊', '1', '1');
INSERT INTO `reply` VALUES ('4', 'asdfasd', '1', '1');
INSERT INTO `reply` VALUES ('5', 'asdfasd', '1', '1');
INSERT INTO `reply` VALUES ('6', 'asdfasd', '1', '1');
INSERT INTO `reply` VALUES ('7', 'ç±çè²æ¾', '2', '1');
INSERT INTO `reply` VALUES ('8', 'sadf', '2', '1');
INSERT INTO `reply` VALUES ('9', '1231312', '2', '1');
INSERT INTO `reply` VALUES ('10', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2', '1');
INSERT INTO `reply` VALUES ('11', '成功了吗', '2', '1');
INSERT INTO `reply` VALUES ('12', ' QW', '2', '1');
INSERT INTO `reply` VALUES ('13', '氟化工', '1', '1');
INSERT INTO `reply` VALUES ('14', 'asdf', '1', '1');
INSERT INTO `reply` VALUES ('15', '啊打发', '1', '1');
INSERT INTO `reply` VALUES ('16', '23423', '1', '1');
INSERT INTO `reply` VALUES ('17', '122', '2', '1');
INSERT INTO `reply` VALUES ('18', '45345', '1', '1');
INSERT INTO `reply` VALUES ('19', '444', '2', '1');

-- ----------------------------
-- Table structure for `site`
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `siteId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `KindId` int(11) NOT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`siteId`),
  KEY `KindId` (`KindId`),
  KEY `owner` (`owner`),
  CONSTRAINT `KindId` FOREIGN KEY (`KindId`) REFERENCES `kind` (`KindId`),
  CONSTRAINT `owner` FOREIGN KEY (`owner`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site
-- ----------------------------
INSERT INTO `site` VALUES ('1', '用户管理', '1', null);
INSERT INTO `site` VALUES ('2', '站长管理', '1', null);
INSERT INTO `site` VALUES ('3', '英语交流', '2', null);
INSERT INTO `site` VALUES ('4', '学习交流', '2', null);
INSERT INTO `site` VALUES ('5', '系统公告', '1', null);
INSERT INTO `site` VALUES ('6', '封号通知', '1', null);
INSERT INTO `site` VALUES ('7', '帖子管理', '1', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '81DC9BDB52D04DC20036DBD8313ED055', 'zhong');
