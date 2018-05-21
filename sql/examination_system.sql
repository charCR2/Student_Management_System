/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : examination_system

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2018-05-08 15:12:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `college`
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `collegeID` int(11) NOT NULL,
  `collegeName` varchar(200) NOT NULL COMMENT '课程名',
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '计算机系');
INSERT INTO `college` VALUES ('2', '设计系');
INSERT INTO `college` VALUES ('3', '财经系');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(200) NOT NULL COMMENT '课程名称',
  `teacherID` int(11) NOT NULL,
  `courseTime` varchar(200) DEFAULT NULL COMMENT '开课时间',
  `classRoom` varchar(200) DEFAULT NULL COMMENT '开课地点',
  `courseWeek` int(200) DEFAULT NULL COMMENT '学时',
  `courseType` varchar(20) DEFAULT NULL COMMENT '课程类型',
  `collegeID` int(11) NOT NULL COMMENT '所属院系',
  `score` int(11) NOT NULL COMMENT '学分',
  PRIMARY KEY (`courseID`),
  KEY `collegeID` (`collegeID`),
  KEY `teacherID` (`teacherID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'C语言程序设计', '1001', '周二', '科401', '18', '必修课', '1', '3');
INSERT INTO `course` VALUES ('2', 'Python爬虫技巧', '1001', '周四', 'X402', '18', '必修课', '1', '3');
INSERT INTO `course` VALUES ('3', '数据结构', '1001', '周四', '科401', '18', '必修课', '1', '2');
INSERT INTO `course` VALUES ('5', '英语', '1002', '周四', 'X302', '18', '必修课', '2', '2');
INSERT INTO `course` VALUES ('6', '数学分析', '1002', '周三', '60114', '9', '必修课', '1', '5');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  `permissions` varchar(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', 'admin', null);
INSERT INTO `role` VALUES ('1', 'teacher', null);
INSERT INTO `role` VALUES ('2', 'student', null);

-- ----------------------------
-- Table structure for `selectedcourse`
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse` (
  `courseID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  KEY `courseID` (`courseID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `selectedcourse_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `selectedcourse_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES ('2', '10001', '12');
INSERT INTO `selectedcourse` VALUES ('1', '10001', '95');
INSERT INTO `selectedcourse` VALUES ('1', '10002', '66');
INSERT INTO `selectedcourse` VALUES ('1', '10003', '96');
INSERT INTO `selectedcourse` VALUES ('2', '10003', '99');
INSERT INTO `selectedcourse` VALUES ('5', '10001', null);
INSERT INTO `selectedcourse` VALUES ('6', '10001', null);
INSERT INTO `selectedcourse` VALUES ('2', '100031', '85');
INSERT INTO `selectedcourse` VALUES ('1', '100031', null);
INSERT INTO `selectedcourse` VALUES ('5', '100031', null);

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `nativeTown` varchar(200) DEFAULT NULL,
  `birthYear` date DEFAULT NULL COMMENT '出生日期',
  `grade` date DEFAULT NULL COMMENT '入学时间',
  `collegeID` int(11) NOT NULL COMMENT '院系id',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=100032 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10001', '黄晕', '男', '湖南', '1996-09-02', '2015-09-02', '1');
INSERT INTO `student` VALUES ('10002', '米美', '女', '长沙', '1995-09-14', '2015-09-02', '3');
INSERT INTO `student` VALUES ('10003', '陈德华', '女', '湖北', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('10004', '华清澈', '男', '广州', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('10005', '左洋洋', '女', '上海', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('10009', '纯是', '女', '湖北', '1995-09-14', '2015-09-02', '3');
INSERT INTO `student` VALUES ('100010', '王归为', '女', '郑州', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100012', '纯净水', '女', '湖北', '1995-09-14', '2015-09-02', '3');
INSERT INTO `student` VALUES ('100013', '王企鹅', '女', '郑州', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100014', '干哈', '男', '邯郸', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100015', '梵蒂冈', '女', '福建', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100017', '干露露', '男', '邯郸', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100018', '梵高', '女', '福建', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100020', '国云', '男', '湖南', '1996-09-02', '2015-09-02', '1');
INSERT INTO `student` VALUES ('100021', '萨达', '女', '湖北', '1995-09-14', '2015-09-02', '3');
INSERT INTO `student` VALUES ('100022', '王撒旦', '女', '郑州', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100023', '露十大', '男', '邯郸', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100024', '梵是的', '女', '福建', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100026', '阿萨德', '女', '湖北', '1995-09-14', '2015-09-02', '3');
INSERT INTO `student` VALUES ('100027', '福德', '女', '郑州', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100028', '豆腐干', '男', '邯郸', '1996-09-02', '2015-09-02', '2');
INSERT INTO `student` VALUES ('100030', '余生', '女', '长春', '1996-09-02', '2015-09-02', '1');
INSERT INTO `student` VALUES ('100031', '陈儒林', '女', '湘西', '1996-09-02', '2015-09-02', '2');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthYear` date NOT NULL,
  `degree` varchar(20) DEFAULT NULL COMMENT '学历',
  `title` varchar(255) DEFAULT NULL COMMENT '职称',
  `grade` date DEFAULT NULL COMMENT '入职时间',
  `collegeID` int(11) NOT NULL COMMENT '院系',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1001', '刘老师', '女', '1990-03-08', '硕士', '普通教师', '2015-09-02', '2');
INSERT INTO `teacher` VALUES ('1002', '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', '1');
INSERT INTO `teacher` VALUES ('1004', '黄老师', '男', '1995-04-05', '博士', '教授', '2015-09-02', '1');
INSERT INTO `teacher` VALUES ('1005', '白老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', '2');

-- ----------------------------
-- Table structure for `userlogin`
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2' COMMENT '角色权限',
  PRIMARY KEY (`userID`),
  KEY `role` (`role`),
  CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES ('1', 'admin', '123', '0');
INSERT INTO `userlogin` VALUES ('8', '10001', '123', '2');
INSERT INTO `userlogin` VALUES ('9', '10002', '123', '2');
INSERT INTO `userlogin` VALUES ('10', '10003', '123', '2');
INSERT INTO `userlogin` VALUES ('11', '10005', '123', '2');
INSERT INTO `userlogin` VALUES ('12', '10004', '123', '2');
INSERT INTO `userlogin` VALUES ('14', '1001', '123', '1');
INSERT INTO `userlogin` VALUES ('15', '1002', '123', '1');
INSERT INTO `userlogin` VALUES ('17', '1004', '123', '1');
INSERT INTO `userlogin` VALUES ('18', '100031', '123', '2');
INSERT INTO `userlogin` VALUES ('19', '1005', '123', '1');
