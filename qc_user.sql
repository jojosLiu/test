# Host: localhost  (Version 8.0.18)
# Date: 2019-11-14 10:13:01
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "qc_user"
#

DROP TABLE IF EXISTS `qc_user`;
CREATE TABLE `qc_user` (
  `user_id` varchar(32) NOT NULL DEFAULT '' COMMENT '8位随机id',
  `user_name` varchar(255) DEFAULT '' COMMENT '用户姓名（昵称）',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `img_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `regist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` int(1) DEFAULT NULL COMMENT '用户状态：0：异常 1：已删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "qc_user"
#

