/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : recruit

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-03-07 17:59:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminName` varchar(16) NOT NULL,
  `adminPwd` varchar(16) NOT NULL,
  PRIMARY KEY (`adminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for `document`
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `documentId` int(11) NOT NULL AUTO_INCREMENT,
  `documentName` varchar(150) DEFAULT NULL,
  `jobFairId` int(11) DEFAULT NULL,
  PRIMARY KEY (`documentId`),
  KEY `jobFairId` (`jobFairId`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`jobFairId`) REFERENCES `jobfair` (`jobFairId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES ('1', 'aaed6049a1f04ca4bba67138327dbd42.txt', '2');
INSERT INTO `document` VALUES ('2', '246972ff979d47679a0fc176aaa88778.docx', '4');
INSERT INTO `document` VALUES ('3', '52f427abfd53445ca871b3e0cc908e4e.xlsx', '5');

-- ----------------------------
-- Table structure for `jobfair`
-- ----------------------------
DROP TABLE IF EXISTS `jobfair`;
CREATE TABLE `jobfair` (
  `jobFairId` int(11) NOT NULL AUTO_INCREMENT,
  `jobFairName` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(50) NOT NULL,
  PRIMARY KEY (`jobFairId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobfair
-- ----------------------------
INSERT INTO `jobfair` VALUES ('2', '北京春季招聘会', '2021-01-22', '北京市');
INSERT INTO `jobfair` VALUES ('4', '杭州春季招聘会', '2021-01-22', '浙江省杭州市西湖旁');
INSERT INTO `jobfair` VALUES ('5', '大庆春季招聘会', '2021-01-31', '黑龙江省大庆市黑龙江八一农垦大学');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) NOT NULL,
  `messageContent` varchar(300) DEFAULT NULL,
  `result` int(11) NOT NULL,
  `newsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `userName` (`userName`),
  KEY `newsid` (`newsid`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`) ON DELETE CASCADE,
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`newsid`) REFERENCES `news` (`newsId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('17', 'zhangsan', '测试张三的留言功能', '1', '1');
INSERT INTO `message` VALUES ('18', 'zhangsan', 'asdfsdfsd', '0', '5');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(100) NOT NULL,
  `newsContent` varchar(1000) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '岗位4万余个！2021河北毕业生网络招聘会2月23日启动', '河北新闻网讯（河北日报记者解楚楚）由省人社厅主办，省人力资源市场服务中心承办的2021年河北省毕业生就业市场网络招聘会，将于2021年2月23日—8月23日在河北人社网、河北人才网举办。\r\n\r\n河北省毕业生就业市场已连续举办22届，是河北省参会人才最多、参会单位最多、发布岗位最多和交流效率最高的毕业生就业服务品牌活动。2021年河北省毕业生就业市场网络招聘会专项活动将组织京、津、冀、鲁、豫等地2000余家用人单位参会，发布适合毕业生的就业岗位4万余个。重点邀请北京、天津和省内知名企业、省市百强企业、知名科研院所等参会，为河北省10万名以上高校毕业生提供更多选择。\r\n\r\n目前，2021年河北省毕业生就业市场网络招聘会报名工作已正式启动，广大企事业单位可登录河北人才网“2021年河北省毕业生就业市场网络招聘会”专栏，按照提示内容报名。求职人员请于2月23日—8月23日，登录河北人社网、河北人才网，注册求职简历，在线浏览查询招聘信息，向用人单位发送求职意向。', '1992-05-08');
INSERT INTO `news` VALUES ('5', '达内科技举行冬季IT专场大型招聘会，30多家知名企业莅临招才引智', '近日，达内科技广佛软件人才中心携手广州天河人才港举办了冬季IT专场大型招聘会。本次招聘会邀请了近30家知名企业参会，包含了软件百强、上市公司以及高新技术企业，如领航动力、华资软件以及融合通信等等。\r\n\r\n据悉，达内科技广佛软件人才中心与广州天河人才港合作已经三年多时间，合作关系稳定，往年举办过IT专场春季、夏季和秋季等大型招聘会，当地政府对双方合作也给予了高度的重视及支持。\r\n\r\n近日，达内科技广佛软件人才中心携手广州天河人才港举办了冬季IT专场大型招聘会。本次招聘会邀请了近30家知名企业参会，包含了软件百强、上市公司以及高新技术企业，如领航动力、华资软件以及融合通信等等。\r\n\r\n据悉，达内科技广佛软件人才中心与广州天河人才港合作已经三年多时间，合作关系稳定，往年举办过IT专场春季、夏季和秋季等大型招聘会，当地政府对双方合作也给予了高度的重视及支持。\r\n\r\n近日，达内科技广佛软件人才中心携手广州天河人才港举办了冬季IT专场大型招聘会。本次招聘会邀请了近30家知名企业参会，包含了软件百强、上市公司以及高新技术企业，如领航动力、华资软件以及融合通信等等。\r\n\r\n据悉，达内科技广佛软件人才中心与广州天河人才港合作已经三年多时间，合作关系稳定，往年举办过IT专场春季、夏季和秋季等大型招聘会，当地政府对双方合作也给予了高度的重视及支持。', '2021-01-21');

-- ----------------------------
-- Table structure for `recruittable`
-- ----------------------------
DROP TABLE IF EXISTS `recruittable`;
CREATE TABLE `recruittable` (
  `recruitId` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `introduce` varchar(500) DEFAULT NULL,
  `salary` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `userName` varchar(16) NOT NULL,
  PRIMARY KEY (`recruitId`),
  KEY `userName` (`userName`),
  CONSTRAINT `recruittable_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruittable
-- ----------------------------
INSERT INTO `recruittable` VALUES ('2', '软件工程师', '2021-01-17', '从事后端代码编写', '10000', '北京', 'test');
INSERT INTO `recruittable` VALUES ('3', 'PHP工程师', '2021-01-18', '需要使用PHP编写后台代码', '8000', '哈尔滨', 'test');
INSERT INTO `recruittable` VALUES ('4', 'C#工程师', '2021-01-20', 'C#', '11000', '北京', 'test');
INSERT INTO `recruittable` VALUES ('5', '1111', '2021-02-22', '11111', '11111', '111', 'zhangsan');

-- ----------------------------
-- Table structure for `resume`
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `username` varchar(16) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(15) DEFAULT NULL,
  `advantage` varchar(200) DEFAULT NULL,
  `education` varchar(16) DEFAULT NULL,
  `awards` varchar(100) DEFAULT NULL,
  `intention` varchar(50) DEFAULT NULL,
  `skill` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `userName` (`education`),
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`userName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('zhangsan', '张三', '佳木斯', '对待工作认真负责,善于沟通、协调有较强的组织能力与团队精神;活泼开朗、乐观上进。\r\n       勤奋上进好学,工作细心,条理清晰,踏实肯干,有很强的责任心;性格开朗乐观,善于人际交流', '本科', '拔河大赛一等奖、篮球比赛二等奖', '软件工程师', 'spring、springMVC、mybatis');
INSERT INTO `resume` VALUES ('zhangsi', '沈世久二号', '华南', 'jsaldjfsjf', '本科', 'skladfklasjdlfjask', 'sldjl', 'jklsjdkjlaskjf');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `recruitId` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  PRIMARY KEY (`recruitId`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `status_ibfk_1` FOREIGN KEY (`recruitId`) REFERENCES `recruittable` (`recruitId`) ON DELETE CASCADE,
  CONSTRAINT `status_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`userName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('2', 'aspect', '2021-01-23', '2021-01-23', 'zhangsan');
INSERT INTO `status` VALUES ('3', 'aspect', '2021-01-23', '2021-01-23', 'zhangsan');
INSERT INTO `status` VALUES ('3', 'waiting', '2021-02-22', null, 'zhangsi');
INSERT INTO `status` VALUES ('4', 'aspect', '2021-01-24', '2021-01-25', 'zhangsan');
INSERT INTO `status` VALUES ('4', 'reject', '2021-01-25', '2021-01-25', 'zhangsi');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userName` varchar(16) NOT NULL,
  `userPwd` varchar(16) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `tel` varchar(11) NOT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1111111', '11111111', '男', '2021-01-23', '', '1111111', '1');
INSERT INTO `user` VALUES ('123', '123', '男', '2021-01-16', '2365464@qq.com', '123', '1');
INSERT INTO `user` VALUES ('222222', '222222', '男', '2021-01-23', '', '222222', '1');
INSERT INTO `user` VALUES ('dhshfjk', '123456', '男', '2021-01-25', '123@qq.com', '34234', '1');
INSERT INTO `user` VALUES ('test', '123456', '男', null, '942167933@qq.com', '222222', '2');
INSERT INTO `user` VALUES ('test1', '1111111', '男', '2021-01-16', '11@qq.com', '11', '1');
INSERT INTO `user` VALUES ('test111', '1111111', '男', '2021-01-23', '', '111111', '1');
INSERT INTO `user` VALUES ('zhangsan', '123456', '男', '2021-01-15', '123@qq.com', '123456', '1');
INSERT INTO `user` VALUES ('zhangsi', '123456', '男', '2021-01-19', '942167933@qq.com', '123', '1');
