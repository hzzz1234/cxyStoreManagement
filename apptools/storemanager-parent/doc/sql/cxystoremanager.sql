/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : cxystoremanager

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-07 16:04:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cxyclient
-- ----------------------------
DROP TABLE IF EXISTS `cxyclient`;
CREATE TABLE `cxyclient` (
  `supplierid` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `suppliername` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `contactname` varchar(255) DEFAULT '' COMMENT '联系人',
  `contactphone` varchar(255) DEFAULT '' COMMENT '联系电话',
  `fax` varchar(255) DEFAULT '' COMMENT '传真',
  `qq` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '地址',
  `comment` varchar(1000) DEFAULT '' COMMENT '备注',
  `email` varchar(255) DEFAULT '' COMMENT 'email',
  `post` varchar(255) DEFAULT '' COMMENT '邮编',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0正常 1不存在',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`supplierid`),
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商表';

-- ----------------------------
-- Records of cxyclient
-- ----------------------------

-- ----------------------------
-- Table structure for cxyclientcategory
-- ----------------------------
DROP TABLE IF EXISTS `cxyclientcategory`;
CREATE TABLE `cxyclientcategory` (
  `clientcategoryid` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户类别id',
  `clientcategoryname` varchar(255) NOT NULL DEFAULT '' COMMENT '客户类别名称',
  `seq` int(11) NOT NULL DEFAULT '1' COMMENT '属于分类的哪一层',
  `pcategoryid` int(11) NOT NULL DEFAULT '1' COMMENT '父客户类id',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '删除状态 0未删除 1删除',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`clientcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户分类表';

-- ----------------------------
-- Records of cxyclientcategory
-- ----------------------------
INSERT INTO `cxyclientcategory` VALUES ('1', '全部分类', '0', '0', '0', '2015-11-06 00:13:22', '2015-11-06 00:13:43');

-- ----------------------------
-- Table structure for cxycolor
-- ----------------------------
DROP TABLE IF EXISTS `cxycolor`;
CREATE TABLE `cxycolor` (
  `colorid` int(11) NOT NULL AUTO_INCREMENT,
  `colorname` varchar(255) NOT NULL,
  PRIMARY KEY (`colorid`),
  UNIQUE KEY `unq_colorname` (`colorname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='颜色表';

-- ----------------------------
-- Records of cxycolor
-- ----------------------------

-- ----------------------------
-- Table structure for cxycurrency
-- ----------------------------
DROP TABLE IF EXISTS `cxycurrency`;
CREATE TABLE `cxycurrency` (
  `currencyid` int(11) NOT NULL COMMENT '币种id',
  `currency_zh` varchar(50) NOT NULL COMMENT '币种中文名',
  `currency_en` varchar(255) NOT NULL COMMENT '币种英文简写',
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cxycurrency
-- ----------------------------
INSERT INTO `cxycurrency` VALUES ('1', '人民币', 'CNY');
INSERT INTO `cxycurrency` VALUES ('2', '欧元', 'EUR');
INSERT INTO `cxycurrency` VALUES ('3', '港元', 'HKD');
INSERT INTO `cxycurrency` VALUES ('4', '日元', 'JPY');
INSERT INTO `cxycurrency` VALUES ('5', '瑞士法郎', 'CHF');

-- ----------------------------
-- Table structure for cxyproduct
-- ----------------------------
DROP TABLE IF EXISTS `cxyproduct`;
CREATE TABLE `cxyproduct` (
  `productid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `branchid` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  `branchname` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌名字',
  `productcategoryid` int(11) NOT NULL DEFAULT '0' COMMENT '款型id（cxyproductcategroy）',
  `productcategoryname` varchar(255) NOT NULL DEFAULT '' COMMENT '款型名字',
  `stockno` varchar(255) NOT NULL DEFAULT '' COMMENT '货号',
  `colorid` int(11) NOT NULL DEFAULT '0' COMMENT '颜色id（cxycolor）',
  `colorname` varchar(50) NOT NULL DEFAULT '' COMMENT '颜色名字',
  `sizecategoryid` int(11) NOT NULL DEFAULT '0' COMMENT '尺码属性(sizecategory)',
  `purchaseprice` double NOT NULL DEFAULT '0' COMMENT '进货价格',
  `sellprice` double NOT NULL DEFAULT '0' COMMENT '销售价格',
  `picaddr` varchar(500) NOT NULL DEFAULT '' COMMENT '图片存放地址',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`productid`),
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of cxyproduct
-- ----------------------------

-- ----------------------------
-- Table structure for cxyproductcategory
-- ----------------------------
DROP TABLE IF EXISTS `cxyproductcategory`;
CREATE TABLE `cxyproductcategory` (
  `productcategoryid` int(11) NOT NULL,
  `productcategoryname` varchar(255) NOT NULL COMMENT '款型名称',
  PRIMARY KEY (`productcategoryid`),
  UNIQUE KEY `unq_productcategoryname` (`productcategoryname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='款型表';

-- ----------------------------
-- Records of cxyproductcategory
-- ----------------------------

-- ----------------------------
-- Table structure for cxypurchaseorder
-- ----------------------------
DROP TABLE IF EXISTS `cxypurchaseorder`;
CREATE TABLE `cxypurchaseorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pouid` varchar(18) NOT NULL DEFAULT '' COMMENT '采购单据号',
  `shopid` int(11) NOT NULL DEFAULT '0' COMMENT '商铺id',
  `supplierid` int(11) NOT NULL DEFAULT '0' COMMENT '供应商id(cxysupplier)',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '采购数量',
  `payamount` double NOT NULL DEFAULT '0' COMMENT '已经付款',
  `totalamout` double NOT NULL DEFAULT '0' COMMENT '总金额',
  `currency` int(11) NOT NULL COMMENT '币种',
  `comment` varchar(1000) DEFAULT '' COMMENT '单据说明',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '订单状态 0锁定 1激活',
  `pddate` datetime DEFAULT NULL COMMENT '预计到货时间',
  `redate` datetime DEFAULT NULL COMMENT '实际到货时间',
  `repsor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '经办人',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_pouid` (`pouid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购订单';

-- ----------------------------
-- Records of cxypurchaseorder
-- ----------------------------

-- ----------------------------
-- Table structure for cxypurchaseorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `cxypurchaseorderdetail`;
CREATE TABLE `cxypurchaseorderdetail` (
  `purchaseorderdetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品明细id',
  `purchaseorderid` int(11) NOT NULL DEFAULT '0' COMMENT '采购订单id',
  `productid` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `comment` varchar(255) DEFAULT NULL COMMENT '注释',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '顺序',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`purchaseorderdetailid`),
  UNIQUE KEY `unq_purchaseorderdetail` (`purchaseorderid`,`productid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购订单商品明细表';

-- ----------------------------
-- Records of cxypurchaseorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxypurchaseorderproductsizedetail
-- ----------------------------
DROP TABLE IF EXISTS `cxypurchaseorderproductsizedetail`;
CREATE TABLE `cxypurchaseorderproductsizedetail` (
  `productsizepurchaseorderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品尺寸订单明细表id',
  `purchaseorderdetailid` int(11) NOT NULL COMMENT '订单商品明细id',
  `sizedetailid` int(11) NOT NULL COMMENT '尺寸明细id',
  `num` int(11) NOT NULL COMMENT '数量',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`productsizepurchaseorderid`),
  UNIQUE KEY `unq_sizedetail` (`purchaseorderdetailid`,`sizedetailid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购订单商品尺寸明细表';

-- ----------------------------
-- Records of cxypurchaseorderproductsizedetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxysell
-- ----------------------------
DROP TABLE IF EXISTS `cxysell`;
CREATE TABLE `cxysell` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sellid` varchar(18) NOT NULL DEFAULT '' COMMENT '销售出库单号',
  `shopid` int(11) NOT NULL DEFAULT '0' COMMENT '商铺id',
  `clientid` int(11) NOT NULL DEFAULT '0' COMMENT '客户id(cxyclient)',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '入库数量',
  `perprice` double NOT NULL DEFAULT '0' COMMENT '进货单价',
  `currency` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '币种',
  `comment` varchar(1000) DEFAULT '' COMMENT '单据说明',
  `repsor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '收款人',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_pouid` (`sellid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售出库单';

-- ----------------------------
-- Records of cxysell
-- ----------------------------

-- ----------------------------
-- Table structure for cxyselldetail
-- ----------------------------
DROP TABLE IF EXISTS `cxyselldetail`;
CREATE TABLE `cxyselldetail` (
  `selldetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售商品明细id',
  `sellid` int(11) NOT NULL DEFAULT '0' COMMENT '销售订单id',
  `productid` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `comment` varchar(255) DEFAULT NULL COMMENT '注释',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`selldetailid`),
  UNIQUE KEY `unq_selldetail` (`sellid`,`productid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售商品明细表';

-- ----------------------------
-- Records of cxyselldetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxysellproductsizedetail
-- ----------------------------
DROP TABLE IF EXISTS `cxysellproductsizedetail`;
CREATE TABLE `cxysellproductsizedetail` (
  `sellproductsizedetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售商品尺寸明细id',
  `selldetailid` int(11) NOT NULL COMMENT '销售商品明细id',
  `sizedetailid` int(11) NOT NULL COMMENT '尺寸明细id',
  `num` int(11) NOT NULL COMMENT '数量',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`sellproductsizedetailid`),
  UNIQUE KEY `unq_sizedetail` (`selldetailid`,`sizedetailid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售商品尺寸明细表';

-- ----------------------------
-- Records of cxysellproductsizedetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxyshop
-- ----------------------------
DROP TABLE IF EXISTS `cxyshop`;
CREATE TABLE `cxyshop` (
  `shopid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商铺id',
  `shopname` varchar(500) NOT NULL DEFAULT '' COMMENT '商铺名',
  `address` varchar(500) DEFAULT '' COMMENT '地址',
  `contactname` varchar(255) DEFAULT '' COMMENT '负责人',
  `contacephone` varchar(255) DEFAULT '' COMMENT '联系方式',
  `fax` varchar(255) DEFAULT '' COMMENT '传真',
  `qq` varchar(255) DEFAULT '' COMMENT 'qq',
  `email` varchar(255) DEFAULT '' COMMENT 'email',
  `post` varchar(255) DEFAULT '' COMMENT '邮编',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0正常 1未开业 2停业',
  `comment` varchar(1000) DEFAULT '' COMMENT '说明',
  `pshopid` int(11) NOT NULL DEFAULT '0' COMMENT '父店铺id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`shopid`),
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺';

-- ----------------------------
-- Records of cxyshop
-- ----------------------------

-- ----------------------------
-- Table structure for cxysizecategorydetail
-- ----------------------------
DROP TABLE IF EXISTS `cxysizecategorydetail`;
CREATE TABLE `cxysizecategorydetail` (
  `sizedetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '尺寸明细主键id',
  `sizecategoryid` int(11) NOT NULL COMMENT '尺寸id',
  `sizecategoryname` varchar(50) NOT NULL DEFAULT '' COMMENT '尺寸名称',
  `size` varchar(20) NOT NULL COMMENT '尺寸属性',
  PRIMARY KEY (`sizedetailid`),
  KEY `idx_scid` (`sizecategoryid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尺寸属性明细表';

-- ----------------------------
-- Records of cxysizecategorydetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxysupplier
-- ----------------------------
DROP TABLE IF EXISTS `cxysupplier`;
CREATE TABLE `cxysupplier` (
  `clientid` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `clientname` varchar(255) NOT NULL DEFAULT '' COMMENT '客户名称',
  `contactname` varchar(255) DEFAULT '' COMMENT '联系人',
  `contactphone` varchar(255) DEFAULT '' COMMENT '联系电话',
  `fax` varchar(255) DEFAULT '' COMMENT '传真',
  `qq` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '地址',
  `comment` varchar(1000) DEFAULT '' COMMENT '备注',
  `email` varchar(255) DEFAULT '' COMMENT 'email',
  `post` varchar(255) DEFAULT '' COMMENT '邮编',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态：0正常 1不存在',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`clientid`),
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of cxysupplier
-- ----------------------------

-- ----------------------------
-- Table structure for cxysuppliercategory
-- ----------------------------
DROP TABLE IF EXISTS `cxysuppliercategory`;
CREATE TABLE `cxysuppliercategory` (
  `suppliercategoryid` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商类别id',
  `suppliercategoryname` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商类别名称',
  `seq` int(11) NOT NULL DEFAULT '1' COMMENT '属于分类的哪一层',
  `pcategoryid` int(11) NOT NULL DEFAULT '1' COMMENT '父供应商类id',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '删除状态 0未删除 1删除',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`suppliercategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='供应商分类表';

-- ----------------------------
-- Records of cxysuppliercategory
-- ----------------------------
INSERT INTO `cxysuppliercategory` VALUES ('1', '全部分类', '0', '0', '0', '2015-11-06 00:13:22', '2015-11-06 00:13:43');

-- ----------------------------
-- Table structure for cxyunit
-- ----------------------------
DROP TABLE IF EXISTS `cxyunit`;
CREATE TABLE `cxyunit` (
  `unitid` int(11) NOT NULL AUTO_INCREMENT COMMENT '单位id',
  `unitname` varchar(20) NOT NULL DEFAULT '' COMMENT '单位名称',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除 0没删除 1删除',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`unitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位表';

-- ----------------------------
-- Records of cxyunit
-- ----------------------------

-- ----------------------------
-- Table structure for cxywarehousein
-- ----------------------------
DROP TABLE IF EXISTS `cxywarehousein`;
CREATE TABLE `cxywarehousein` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `warehouseid` varchar(18) NOT NULL DEFAULT '' COMMENT '入库单据号',
  `shopid` int(11) NOT NULL DEFAULT '0' COMMENT '商铺id',
  `supplierid` int(11) NOT NULL DEFAULT '0' COMMENT '供应商id(cxysupplier)',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '入库数量',
  `perprice` double NOT NULL DEFAULT '0' COMMENT '进货单价',
  `comment` varchar(1000) DEFAULT '' COMMENT '单据说明',
  `repsor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '经办人',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_pouid` (`warehouseid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库单';

-- ----------------------------
-- Records of cxywarehousein
-- ----------------------------

-- ----------------------------
-- Table structure for cxywarehouseindetail
-- ----------------------------
DROP TABLE IF EXISTS `cxywarehouseindetail`;
CREATE TABLE `cxywarehouseindetail` (
  `warehouseindetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品明细id',
  `warehouseinid` int(11) NOT NULL DEFAULT '0' COMMENT '采购订单id',
  `productid` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `placeforstore` varchar(255) NOT NULL DEFAULT '' COMMENT '存放位置',
  `comment` varchar(255) DEFAULT NULL COMMENT '注释',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`warehouseindetailid`),
  UNIQUE KEY `unq_warehouseindetail` (`warehouseinid`,`productid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库商品明细表';

-- ----------------------------
-- Records of cxywarehouseindetail
-- ----------------------------

-- ----------------------------
-- Table structure for cxywarehouseinsizedetail
-- ----------------------------
DROP TABLE IF EXISTS `cxywarehouseinsizedetail`;
CREATE TABLE `cxywarehouseinsizedetail` (
  `warehouseinproductsizedetailid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品尺寸订单明细表id',
  `warehouseindetailid` int(11) NOT NULL COMMENT '入库商品明细id',
  `sizedetailid` int(11) NOT NULL COMMENT '尺寸明细id',
  `num` int(11) NOT NULL COMMENT '数量',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `DataChange_LastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`warehouseinproductsizedetailid`),
  UNIQUE KEY `unq_sizedetail` (`warehouseindetailid`,`sizedetailid`) USING BTREE,
  KEY `idx_DCLT` (`DataChange_LastTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库商品尺寸明细表';

-- ----------------------------
-- Records of cxywarehouseinsizedetail
-- ----------------------------
