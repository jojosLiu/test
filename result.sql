# Host: localhost  (Version 8.0.18)
# Date: 2019-11-22 15:47:35
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "result"
#

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `Email` varchar(50) NOT NULL DEFAULT '0' COMMENT '邮箱',
  `measurement_R` int(11) DEFAULT NULL COMMENT '结果可能状态',
  `measurement_P` float(11,10) DEFAULT NULL COMMENT '对应结果概率',
  `time` datetime DEFAULT NULL COMMENT '实验时间',
  `qubits` int(11) DEFAULT NULL COMMENT '输入bit数',
  `classical-bit` int(11) DEFAULT NULL COMMENT '经典比特数',
  `X` int(11) DEFAULT NULL COMMENT '行数',
  `Y` int(11) DEFAULT NULL COMMENT '列数',
  `Gate` int(11) DEFAULT NULL COMMENT '对应位置使用的门',
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "result"
#

