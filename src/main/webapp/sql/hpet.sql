-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.0.0.4458
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 hpet 的数据库结构
CREATE DATABASE IF NOT EXISTS `hpet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hpet`;


-- 导出  表 hpet.account 结构
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(80) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `xm` varchar(80) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- 正在导出表  hpet.account 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`username`, `password`, `email`, `xm`, `address`) VALUES
	('8888', '111', 'w@123.com', '111', '23232'),
	('9999', '111', 'w@123.com', 'xsssss', 'dddd'),
	('hhhh', '111', 'wk@163.com', '111', '4444'),
	('KKK12', '999', 'wk@163.com', 'dffdfd', '221'),
	('kkkkk', '111', 'wk2003119@163.com', 'xxxx', 'jjdjdj'),
	('LLLL', '111', 'wk2003119@163.com', 'LLLL', 'dslflfsl'),
	('UUU', '111', 'wk@163.com', 'UUU', 'UUU'),
	('weikun', '119', 'wk2003119@163.com', '卫昆1', '哈尔滨'),
	('www', '111', 'Q@123.com', 'rrr', '2121'),
	('yyyy', '111', 'w@123.com', 'yyy', 'sdfdsfd');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- 导出  表 hpet.cart 结构
CREATE TABLE IF NOT EXISTS `cart` (
  `orderid` int(11) NOT NULL DEFAULT '0',
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderid`,`itemid`),
  KEY `FK_FK_Reference_51` (`itemid`),
  CONSTRAINT `FK_FK_Reference_51` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`),
  CONSTRAINT `FK_Relationship_71` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FK_Relationship_733` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`itemid`) REFER';

-- 正在导出表  hpet.cart 的数据：~57 rows (大约)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`orderid`, `itemid`, `quantity`) VALUES
	(1, 'EST_4', 1),
	(1000, 'EST_4', 1),
	(1001, 'EST_4', 1),
	(1002, 'EST_4', 24),
	(1003, 'EST_1', 2),
	(1003, 'EST_19', 6),
	(1003, 'EST_2', 2),
	(1003, 'EST_20', 3),
	(1004, 'EST_2', 1),
	(1004, 'EST_20', 2),
	(1004, 'EST_3', 2),
	(1005, 'EST_21', 1),
	(1006, 'EST_20', 8),
	(1006, 'EST_21', 8),
	(1006, 'EST_9', 7),
	(1007, 'EST_1', 7),
	(1007, 'EST_28', 1),
	(1007, 'EST_5', 7),
	(1008, 'EST_21', 1),
	(1008, 'EST_28', 1),
	(1009, 'EST_21', 2),
	(1010, 'EST_2', 1),
	(1010, 'EST_21', 1),
	(1011, 'EST_2', 1),
	(1011, 'EST_9', 1),
	(1012, 'EST_1', 1),
	(1012, 'EST_9', 1),
	(1013, 'EST_1', 1),
	(1013, 'EST_21', 1),
	(1014, 'EST_1', 6),
	(1014, 'EST_21', 1),
	(1014, 'EST_5', 6),
	(1015, 'EST_21', 1),
	(1015, 'EST_4', 1),
	(1016, 'EST_21', 1),
	(1016, 'EST_3', 1),
	(1017, 'EST_21', 1),
	(1018, 'EST_2', 2),
	(1018, 'EST_27', 1),
	(1018, 'EST_3', 1),
	(1018, 'EST_5', 1),
	(1019, 'EST_5', 4),
	(1020, 'EST_2', 13),
	(1021, 'EST_1', 1),
	(1021, 'EST_2', 3),
	(1022, 'EST_1', 7),
	(1022, 'EST_2', 7),
	(1022, 'EST_21', 7),
	(1023, 'EST_2', 1),
	(1023, 'EST_4', 1),
	(1023, 'EST_5', 3),
	(1024, 'EST_4', 1),
	(1025, 'EST_20', 2),
	(1027, 'EST_2', 4),
	(1027, 'EST_21', 4),
	(1027, 'EST_3', 5),
	(1027, 'EST_5', 1),
	(1028, 'EST_1', 6),
	(1028, 'EST_2', 6),
	(1029, 'EST_21', 3),
	(1029, 'EST_3', 3),
	(1030, 'EST_5', 6),
	(1031, 'EST_20', 100),
	(1031, 'EST_21', 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- 导出  表 hpet.category 结构
CREATE TABLE IF NOT EXISTS `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- 正在导出表  hpet.category 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`catid`, `name`, `descn`) VALUES
	('BIRDS', 'Birds', '<image src="../images/birds_icon.gif"><font size="5" color="blue"> Birds</font>'),
	('CATS', 'Cats', '<image src="../images/cats_icon.gif"><font size="5" color="blue"> Cats</font>'),
	('DOGS', 'Dogs', '<image src="../images/dogs_icon.gif"><font size="5" color="blue"> Dogs</font>'),
	('FISH', 'Fish', '<image src="../images/fish_icon.gif"><font size="5" color="blue"> Fish</font>'),
	('REPTILES', 'Reptiles', '<image src="../images/reptiles_icon.gif"><font size="5" color="blue"> Reptiles</font>');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- 导出  表 hpet.item 结构
CREATE TABLE IF NOT EXISTS `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FK_fk_item_1` (`productid`),
  CONSTRAINT `FK_fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`productid`) REFER `jpetstore/product';

-- 正在导出表  hpet.item 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`itemid`, `productid`, `listprice`, `unitcost`, `supplier`, `status`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`) VALUES
	('EST_1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL),
	('EST_10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL),
	('EST_11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL),
	('EST_12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL),
	('EST_13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL),
	('EST_14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL),
	('EST_15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL),
	('EST_16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL),
	('EST_20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL),
	('EST_4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL),
	('EST_5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL),
	('EST_6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL),
	('EST_7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL),
	('EST_8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL),
	('EST_9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- 导出  表 hpet.orders 结构
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '订单序号',
  `orderdate` date DEFAULT NULL COMMENT '订单日期',
  `userid` varchar(80) DEFAULT NULL COMMENT '用户id',
  `shipaddr` varchar(80) DEFAULT NULL COMMENT '用户地址',
  `shipcity` varchar(80) DEFAULT NULL COMMENT '用户所在城市',
  `shipname` varchar(80) DEFAULT NULL COMMENT '购买用户名',
  `cardno` varchar(80) DEFAULT NULL COMMENT '卡号',
  `cardtype` varchar(80) DEFAULT NULL COMMENT '卡类型',
  `totalprice` decimal(10,2) DEFAULT '0.00' COMMENT '总价格',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`linenum` `orde';

-- 正在导出表  hpet.orders 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderid`, `orderdate`, `userid`, `shipaddr`, `shipcity`, `shipname`, `cardno`, `cardtype`, `totalprice`) VALUES
	(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1000, '2013-09-13', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1002, '2013-09-18', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1003, '2014-01-14', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1004, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1005, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1006, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1007, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1008, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1009, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1010, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1011, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1012, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1013, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1014, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1015, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1016, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1017, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1018, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1019, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1020, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1021, '2014-06-27', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1022, '2013-03-01', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1023, '2014-09-16', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1024, '2014-09-16', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1025, '2014-09-16', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1027, '2014-12-26', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1028, '2014-12-26', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1029, '2014-12-26', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1030, '2014-12-28', NULL, NULL, NULL, NULL, NULL, NULL, 0.00),
	(1031, '2014-12-28', NULL, NULL, NULL, NULL, NULL, NULL, 0.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- 导出  表 hpet.product 结构
CREATE TABLE IF NOT EXISTS `product` (
  `productid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `FK_fk_product_1` (`catid`),
  CONSTRAINT `FK_fk_product_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`category`) REFER `jpetstore/category';

-- 正在导出表  hpet.product 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`productid`, `catid`, `name`, `descn`) VALUES
	('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src="../images/bird4.gif">Great companion for up to 75 years'),
	('AV-SB-02', 'BIRDS', 'Finch', '<image src="../images/bird1.gif">Great stress reliever'),
	('FI-FW-01', 'FISH', 'Koi', '<image src="../images/fish3.gif">Fresh Water fish from Japan'),
	('FI-FW-02', 'FISH', 'Goldfish', '<image src="../images/fish2.gif">Fresh Water fish from China'),
	('FI-SW-01', 'FISH', 'Angelfish', '<image src="../images/fish1.jpg">Salt Water fish from Australia'),
	('FI-SW-02', 'FISH', 'Tiger Shark', '<image src="../images/fish4.gif">Salt Water fish from Australia'),
	('FL-DLH-02', 'CATS', 'Persian', '<image src="../images/cat1.gif">Friendly house cat, doubles as a princess'),
	('FL-DSH-01', 'CATS', 'Manx', '<image src="../images/cat3.gif">Great for reducing mouse populations'),
	('K9-BD-01', 'DOGS', 'Bulldog', '<image src="../images/dog2.gif">Friendly dog from England'),
	('K9-CW-01', 'DOGS', 'Chihuahua', '<image src="../images/dog4.gif">Great companion dog'),
	('K9-DL-01', 'DOGS', 'Dalmation', '<image src="../images/dog5.gif">Great dog for a Fire Station'),
	('K9-PO-02', 'DOGS', 'Poodle', '<image src="../images/dog6.gif">Cute dog from France'),
	('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src="../images/dog1.gif">Great family dog'),
	('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src="../images/dog5.gif">Great hunting dog'),
	('RP-LI-02', 'REPTILES', 'Iguana', '<image src="../images/lizard2.gif">Friendly green friend'),
	('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src="../images/lizard3.gif">Doubles as a watch dog');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- 导出  表 hpet.profile 结构
CREATE TABLE IF NOT EXISTS `profile` (
  `username` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `catid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FK_Reference_7` (`catid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`username`) REFERENCES `account` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`username`) REF';

-- 正在导出表  hpet.profile 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`username`, `langpref`, `catid`) VALUES
	('8888', 'chinese', 'REPTILES'),
	('9999', 'chinese', 'BIRDS'),
	('hhhh', 'chinese', 'DOGS'),
	('KKK12', 'chi', 'BIRDS'),
	('LLLL', '1', 'BIRDS'),
	('UUU', 'chi', 'BIRDS'),
	('weikun', 'english', 'FISH'),
	('www', 'english', 'FISH'),
	('yyyy', 'english', 'DOGS');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
