/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : zone

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2015-07-18 16:43:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('1', 'first', 'hello', '1', '1'), ('2', 'second', '啊啊啊', '1', '1');
COMMIT;

-- ----------------------------
-- Records of kind
-- ----------------------------
BEGIN;
INSERT INTO `kind` VALUES ('1', '管理区'), ('2', '交流区');
COMMIT;

-- ----------------------------
-- Records of reply
-- ----------------------------
BEGIN;
INSERT INTO `reply` VALUES ('1', 'hi，nice to meet you', '1', '1'), ('2', 'yes,your are handsome', '1', '1'), ('3', '啊啊啊啊', '1', '1'), ('4', 'asdfasd', '1', '1'), ('5', 'asdfasd', '1', '1'), ('6', 'asdfasd', '1', '1'), ('7', 'ç±çè²æ¾', '2', '1'), ('8', 'sadf', '2', '1'), ('9', '1231312', '2', '1'), ('10', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2', '1'), ('11', '成功了吗', '2', '1'), ('12', ' QW', '2', '1'), ('13', '氟化工', '1', '1'), ('14', 'asdf', '1', '1'), ('15', '啊打发', '1', '1'), ('16', '23423', '1', '1'), ('17', '122', '2', '1'), ('18', '45345', '1', '1'), ('19', '444', '2', '1');
COMMIT;

-- ----------------------------
-- Records of site
-- ----------------------------
BEGIN;
INSERT INTO `site` VALUES ('1', '用户管理', '1', null), ('2', '站长管理', '1', null), ('3', '英语交流', '2', null), ('4', '学习交流', '2', null), ('5', '系统公告', '1', null), ('6', '封号通知', '1', null), ('7', '帖子管理', '1', null);
COMMIT;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', '81DC9BDB52D04DC20036DBD8313ED055', 'zhong');
COMMIT;
