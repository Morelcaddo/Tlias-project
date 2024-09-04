/*
 Navicat Premium Dump SQL

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : tlias

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 04/09/2024 20:21:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '学工部', '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `dept` VALUES (2, '教研部', '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `dept` VALUES (4, '就业部', '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `dept` VALUES (9, '科研部', '2024-08-07 18:32:42', '2024-08-07 18:32:42');
INSERT INTO `dept` VALUES (10, '教职工部', '2024-08-07 18:35:06', '2024-08-07 18:35:06');
INSERT INTO `dept` VALUES (13, '人事部', '2024-08-14 23:21:56', '2024-08-14 23:21:56');

-- ----------------------------
-- Table structure for dept_log
-- ----------------------------
DROP TABLE IF EXISTS `dept_log`;
CREATE TABLE `dept_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept_log
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '123456' COMMENT '密码',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `gender` tinyint UNSIGNED NOT NULL COMMENT '性别, 说明: 1 男, 2 女',
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图像',
  `job` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '职位, 说明: 1 班主任,2 讲师, 3 学工主管, 4 教研主管, 5 咨询师',
  `entrydate` date NULL DEFAULT NULL COMMENT '入职时间',
  `dept_id` int UNSIGNED NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'jinyong', '123456', '金庸', 1, '1.jpg', 4, '2000-01-01', 2, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (2, 'zhangwuji', '123456', '张无忌', 1, '2.jpg', 2, '2015-01-01', 2, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (3, 'yangxiao', '123456', '杨逍1', 1, '3.jpg', 2, '2008-05-01', 2, '2024-08-07 16:28:55', '2024-08-09 00:00:04');
INSERT INTO `emp` VALUES (6, 'xiaozhao', '123456', '小昭', 2, '6.jpg', 3, '2013-09-05', 1, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (7, 'jixiaofu', '123456', '纪晓芙', 2, '7.jpg', 1, '2005-08-01', 1, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (8, 'zhouzhiruo', '123456', '周芷若', 2, '8.jpg', 1, '2014-11-09', 1, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (9, 'dingminjun', '123456', '丁敏君', 2, '9.jpg', 1, '2011-03-11', 1, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (10, 'zhaomin', '123456', '赵敏', 2, '10.jpg', 1, '2013-09-05', 1, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (14, 'zhangsanfeng', '123456', '张三丰', 1, '14.jpg', 2, '2002-08-01', 2, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (15, 'yulianzhou', '123456', '俞莲舟', 1, '15.jpg', 2, '2011-05-01', 2, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (16, 'songyuanqiao', '123456', '宋远桥', 1, '16.jpg', 2, '2007-01-01', 2, '2024-08-07 16:28:55', '2024-08-07 16:28:55');
INSERT INTO `emp` VALUES (18, 'linpingzhi', '123456', '林平之', 1, 'https://web-framework.oss-cnhangzhou.aliyuncs.com/2022-09-03-07-37-38222.jpg', 1, '2022-09-18', 1, '2024-08-07 22:45:41', '2024-08-07 22:45:41');
INSERT INTO `emp` VALUES (20, 'zhangsan', '123456', '张三', 1, 'https://web-project-qxp.oss-cn-shenzhen.aliyuncs.com/8ccb2f72-183f-4f0d-a941-11b9685dac5c.jfif', 1, '2024-08-18', 4, '2024-08-08 22:54:03', '2024-08-08 22:54:03');
INSERT INTO `emp` VALUES (21, '11111', '123456', '111111', 1, 'https://web-project-qxp.oss-cn-shenzhen.aliyuncs.com/a7e9d0eb-d626-474d-b88c-4f92ddfc4e2a.jfif', 1, '2024-08-19', 4, '2024-08-18 01:46:39', '2024-08-18 01:46:39');
INSERT INTO `emp` VALUES (22, 'tttt', '123456', 'tttt', 1, 'https://web-project-qxp.oss-cn-shenzhen.aliyuncs.com/a8143246-e5e1-4524-808f-02db51d2daef.jfif', 1, '2024-08-12', 10, '2024-08-18 21:24:33', '2024-08-18 21:24:33');

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `operate_user` int UNSIGNED NULL DEFAULT NULL COMMENT '操作人ID',
  `operate_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作的类名',
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作的方法名',
  `method_params` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法参数',
  `return_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '返回值',
  `cost_time` bigint NULL DEFAULT NULL COMMENT '方法执行耗时, 单位:ms',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operate_log
-- ----------------------------
INSERT INTO `operate_log` VALUES (1, 1, '2024-08-14 23:21:56', 'org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint', 'insert', '[Dept(id=null, name=人事部, createTime=null, updateTime=null)]', '{\"code\":1,\"msg\":\"success\"}', 16);
INSERT INTO `operate_log` VALUES (2, 1, '2024-08-18 01:46:39', 'org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint', 'insert', '[Emp(id=null, username=11111, password=null, name=111111, gender=1, image=https://web-project-qxp.oss-cn-shenzhen.aliyuncs.com/a7e9d0eb-d626-474d-b88c-4f92ddfc4e2a.jfif, job=1, entrydate=2024-08-19, deptId=4, createTime=null, updateTime=null)]', '{\"code\":1,\"msg\":\"success\"}', 12);
INSERT INTO `operate_log` VALUES (3, 1, '2024-08-18 21:24:33', 'org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint', 'insert', '[Emp(id=null, username=tttt, password=null, name=tttt, gender=1, image=https://web-project-qxp.oss-cn-shenzhen.aliyuncs.com/a8143246-e5e1-4524-808f-02db51d2daef.jfif, job=1, entrydate=2024-08-12, deptId=10, createTime=null, updateTime=null)]', '{\"code\":1,\"msg\":\"success\"}', 10);

SET FOREIGN_KEY_CHECKS = 1;
