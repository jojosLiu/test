# Host: localhost  (Version 8.0.18)
# Date: 2019-11-15 19:11:28
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "qc_user"
#

DROP TABLE IF EXISTS `qc_user`;
CREATE TABLE `qc_user` (
  `Email` varchar(50) NOT NULL DEFAULT '0' COMMENT '邮箱',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '用户状态：0：异常 1：正常 2：已删除',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `regist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `img_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `role` int(1) NOT NULL DEFAULT '0' COMMENT '角色位 0：管理员 1：普通用户',
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "qc_user"
#

