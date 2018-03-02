/*
Navicat MySQL Data Transfer

Source Server         : sports
Source Server Version : 50632
Source Host           : 172.16.0.220:3306
Source Database       : athletics_pay

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2018-02-09 15:47:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pay_alipay_callback
-- ----------------------------
DROP TABLE IF EXISTS `pay_alipay_callback`;
CREATE TABLE `pay_alipay_callback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支付操作表的主键',
  `notify_time` datetime DEFAULT NULL COMMENT '通知的发送时间',
  `notify_type` varchar(64) DEFAULT NULL COMMENT '通知的类型',
  `notify_id` varchar(128) DEFAULT NULL COMMENT '通知校验ID',
  `app_id` varchar(32) DEFAULT NULL COMMENT '支付宝分配给开发者的应用Id',
  `charset` varchar(10) DEFAULT NULL COMMENT '编码格式，如utf-8、gbk、gb2312等',
  `version` varchar(3) DEFAULT NULL COMMENT '调用的接口版本，固定为：1.0	1',
  `sign_type` varchar(10) DEFAULT NULL COMMENT '商户生成签名字符串所使用的签名算法类型，目前支持RSA2和RSA，推荐使用RSA2	RSA2',
  `sign` varchar(256) DEFAULT NULL COMMENT '请参考异步返回结果的验签',
  `trade_no` varchar(64) DEFAULT NULL COMMENT '支付宝交易凭证号',
  `out_trade_no` varchar(64) DEFAULT NULL COMMENT '支付请求的商户订单号',
  `out_biz_no` varchar(64) DEFAULT NULL COMMENT '商户业务ID，主要是退款通知中返回退款申请的流水号',
  `buyer_id` varchar(16) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝唯一用户号。以2088开头的纯16位数字',
  `buyer_logon_id` varchar(100) DEFAULT NULL COMMENT '买家支付宝账号',
  `seller_id` varchar(30) DEFAULT NULL COMMENT '卖家支付宝用户号',
  `seller_email` varchar(100) DEFAULT NULL COMMENT '卖家支付宝账号',
  `trade_status` varchar(32) DEFAULT NULL COMMENT '交易目前所处的状态，见交易状态说明',
  `total_amount` decimal(9,2) DEFAULT NULL COMMENT '本次交易支付的订单金额，单位为人民币（元）',
  `receipt_amount` decimal(9,2) DEFAULT NULL COMMENT '商家在交易中实际收到的款项，单位为元',
  `invoice_amount` decimal(9,2) DEFAULT NULL COMMENT '用户在交易中支付的可开发票的金额',
  `buyer_pay_amount` decimal(9,2) DEFAULT NULL COMMENT '用户在交易中支付的金额',
  `point_amount` decimal(9,2) DEFAULT NULL COMMENT '使用集分宝支付的金额',
  `refund_fee` decimal(9,2) DEFAULT NULL COMMENT '退款通知中，返回总退款金额，单位为元',
  `subject` varchar(256) DEFAULT NULL COMMENT '商品的标题/交易标题/订单标题/订单关键字等，是请求时对应的参数，原样通知回来	当面付交易',
  `body` varchar(400) DEFAULT NULL COMMENT '该订单的备注、描述、明细等。对应请求时的body参数，原样通知回来	当面付交易内容',
  `gmt_create` datetime DEFAULT NULL COMMENT '该笔交易创建的时间。',
  `gmt_payment` datetime DEFAULT NULL COMMENT '该笔交易的买家付款时间。',
  `gmt_refund` datetime DEFAULT NULL COMMENT '该笔交易的退款时间。',
  `gmt_close` datetime DEFAULT NULL COMMENT '该笔交易结束时间。',
  `fund_bill_list` varchar(512) DEFAULT NULL COMMENT '支付成功的各个渠道金额信息',
  `passback_params` varchar(512) DEFAULT NULL COMMENT '公共回传参数，如果请求时传递了该参数，则返回给商户时会在异步通知时将该参数原样返回。本参数必须进行UrlEncode之后才可以发送给支付宝',
  `wap_app` varchar(16) DEFAULT NULL COMMENT '网页支付或app支付',
  `code` varchar(64) DEFAULT NULL COMMENT '返回码',
  `msg` varchar(1024) DEFAULT NULL COMMENT '处理结果的描述，信息来自于code返回结果的描述',
  `sub_code` varchar(64) DEFAULT NULL COMMENT '子返回码',
  `sub_msg` varchar(1024) DEFAULT NULL COMMENT '详细信息',
  `params` varchar(512) DEFAULT NULL COMMENT '参数集合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pay_alipay_callback
-- ----------------------------
INSERT INTO `pay_alipay_callback` VALUES ('1', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('2', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('3', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('4', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('5', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('6', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('7', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', null, null, '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('8', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', 'RSA2', '601510b7970e52cc63db0f44997cf70e', '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('9', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', 'RSA2', '601510b7970e52cc63db0f44997cf70e', '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);
INSERT INTO `pay_alipay_callback` VALUES ('10', '2016-02-27 15:45:58', 'trade_status_async', 'ac05099524730693a8b330c5ecf72da9786', '2014072300007148', 'utf-8', '1.0', 'RSA2', '601510b7970e52cc63db0f44997cf70e', '2013112011001004330000121536', '6823789339978248', 'HZRF001', '2088102122524333', '15901825620', '2088101106499364', 'zhuzhanghu@alitest.com', 'TRADE_SUCCESS', '20.00', '15.00', '10.00', '13.88', '12.00', '2.58', '当面付交易', '当面付交易内容', '2015-04-27 15:45:57', '2015-04-27 15:45:57', '2015-04-28 15:45:57', '2015-04-29 15:45:57', '[{“amount”:“15.00”,“fundChannel”:“ALIPAYACCOUNT”}]', 'merchantBizType%3d3C%26merchantBizNo%3d2016010101111', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pay_alipay_request
-- ----------------------------
DROP TABLE IF EXISTS `pay_alipay_request`;
CREATE TABLE `pay_alipay_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `body` varchar(128) DEFAULT NULL COMMENT '对一笔交易的具体描述信息。',
  `business_params` varchar(512) DEFAULT NULL COMMENT '商户传入业务信息，具体值要和支付宝约定，应用于安全，营销等参数直传场景，格式为json格式。',
  `disable_pay_channels` varchar(128) DEFAULT NULL COMMENT '禁用渠道，用户不可用指定渠道支付。',
  `enable_pay_channels` varchar(128) DEFAULT NULL COMMENT '可用渠道，用户只能在指定渠道范围内支付。',
  `ext_user_info` varchar(512) DEFAULT NULL COMMENT '外部指定买家。',
  `extend_params` varchar(512) DEFAULT NULL COMMENT '业务扩展参数。',
  `goods_type` varchar(8) DEFAULT NULL COMMENT '商品主类型 :0-虚拟类商品,1-实物类商品。',
  `invoice_info` varchar(512) DEFAULT NULL COMMENT '开票信息。',
  `out_trade_no` varchar(64) DEFAULT NULL COMMENT '商户网站唯一订单号。',
  `passback_params` varchar(512) DEFAULT NULL COMMENT '公用回传参数，如果请求时传递了该参数，则返回给商户时会回传该参数。',
  `product_code` varchar(65) DEFAULT NULL COMMENT '销售产品码，商家和支付宝签约的产品码。',
  `promo_params` varchar(512) DEFAULT NULL COMMENT '优惠参数。',
  `royalty_info` varchar(512) DEFAULT NULL COMMENT '描述分账信息，Json格式，详见分账参数说明。',
  `seller_id` varchar(64) DEFAULT NULL COMMENT '收款支付宝用户ID。 如果该值为空，则默认为商户签约账号对应的支付宝用户ID。',
  `specified_channel` varchar(32) DEFAULT NULL COMMENT '指定渠道，目前仅支持传入pcredit。',
  `store_id` varchar(32) DEFAULT NULL COMMENT '商户门店编号。',
  `sub_merchant` varchar(64) DEFAULT NULL COMMENT '间连受理商户信息体，当前只对特殊银行机构特定场景下使用此字段。',
  `subject` varchar(256) DEFAULT NULL COMMENT '商品的标题/交易标题/订单标题/订单关键字等。',
  `time_expire` varchar(32) DEFAULT NULL COMMENT '绝对超时时间，格式为yyyy-MM-dd HH:mm。',
  `timeout_express` varchar(32) DEFAULT NULL COMMENT '该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。',
  `total_amount` decimal(9,2) DEFAULT NULL COMMENT '订单总金额，单位为元，精确到小数点后两位，取值范围[0.01,100000000]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pay_alipay_request
-- ----------------------------
INSERT INTO `pay_alipay_request` VALUES ('1', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', '2017-12-28 21:26:57', '30m', '33.00');
INSERT INTO `pay_alipay_request` VALUES ('2', '主题内容', null, null, null, null, null, null, null, '10128181214223888', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.00');
INSERT INTO `pay_alipay_request` VALUES ('3', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('4', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('5', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('6', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('7', '主题内容', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('8', '', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_MSECURITY_PAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('9', '', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_WAP_WAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');
INSERT INTO `pay_alipay_request` VALUES ('10', '', null, null, null, null, null, null, null, '10128181214223839', null, 'QUICK_WAP_WAY', null, null, '2088123456789', null, null, null, '主题', null, '30m', '33.01');

-- ----------------------------
-- Table structure for pay_app
-- ----------------------------
DROP TABLE IF EXISTS `pay_app`;
CREATE TABLE `pay_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '应用唯一标识ID',
  `app_name` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `app_key` varchar(128) DEFAULT NULL COMMENT '应用唯一编码',
  `create_man` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_man` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  `state` int(2) DEFAULT NULL COMMENT '状态：1-启用，2-暂停；3-禁止',
  PRIMARY KEY (`id`),
  KEY `idx_ne_key_state` (`app_name`,`app_key`,`state`),
  KEY `idx_app_create_time` (`create_time`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调用支付应用管理表';

-- ----------------------------
-- Records of pay_app
-- ----------------------------

-- ----------------------------
-- Table structure for pay_channel
-- ----------------------------
DROP TABLE IF EXISTS `pay_channel`;
CREATE TABLE `pay_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支付渠道唯一标识ID',
  `name` varchar(128) DEFAULT NULL COMMENT '支付供应商名称',
  `code` varchar(50) DEFAULT NULL COMMENT '支付供应商唯一编码（系统平台内唯一编码）',
  `pay_private_key` varchar(1000) DEFAULT NULL COMMENT '支付私钥',
  `pay_public_key` varchar(1000) DEFAULT NULL COMMENT '支付公钥',
  `state` int(2) DEFAULT NULL COMMENT '状态：1-启用；2-暂停；3禁用',
  `create_man` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_man` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_pch_name` (`name`,`state`),
  KEY `idx_pch_code` (`code`,`state`),
  KEY `idx_pch_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付渠道表';

-- ----------------------------
-- Records of pay_channel
-- ----------------------------

-- ----------------------------
-- Table structure for pay_wechatpay_callback
-- ----------------------------
DROP TABLE IF EXISTS `pay_wechatpay_callback`;
CREATE TABLE `pay_wechatpay_callback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '微信支付回调唯一流水ID',
  `return_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL ',
  `return_msg` varchar(128) DEFAULT NULL COMMENT '返回信息，如非空，为错误原因,签名失败',
  `appid` varchar(32) DEFAULT NULL COMMENT '微信开放平台审核通过的应用APPID',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '微信支付分配的商户号',
  `device_info` varchar(32) DEFAULT NULL COMMENT '微信支付分配的终端设备号',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机字符串，不长于32位',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `result_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL',
  `err_code` varchar(32) DEFAULT NULL COMMENT '错误返回的信息描述',
  `err_code_des` varchar(128) DEFAULT NULL COMMENT '错误返回的信息描述',
  `openid` varchar(128) DEFAULT NULL COMMENT '用户在商户appid下的唯一标识',
  `is_subscribe` char(1) DEFAULT NULL COMMENT '用户是否关注公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效',
  `trade_status` varchar(32) DEFAULT NULL,
  `trade_type` varchar(16) DEFAULT NULL COMMENT 'APP',
  `bank_type` varchar(16) DEFAULT NULL COMMENT '银行类型，采用字符串类型的银行标识',
  `settlement_total_fee` int(11) DEFAULT NULL COMMENT '应结订单金额=订单金额-非充值代金券金额，应结订单金额<=订单金额',
  `total_fee` int(11) DEFAULT NULL COMMENT '订单总金额，单位为分',
  `fee_type` varchar(8) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY',
  `cash_fee` int(11) DEFAULT NULL COMMENT '现金支付金额订单现金支付金额',
  `cash_fee_type` varchar(16) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY',
  `coupon_fee` int(11) DEFAULT NULL COMMENT '代金券或立减优惠金额<=订单总金额，订单总金额-代金券或立减优惠金额=现金支付金额',
  `coupon_count` int(11) DEFAULT NULL COMMENT '代金券或立减优惠使用数量',
  `coupon_id` int(11) DEFAULT NULL COMMENT '代金券或立减优惠ID,$n为下标，从0开始编号',
  `coupon_name` varchar(64) DEFAULT NULL COMMENT '单个代金券或立减优惠支付金额,$n为下标，从0开始编号',
  `coupon_fee_id` int(11) DEFAULT NULL COMMENT '单个代金券或立减优惠支付金额,$n为下标，从0开始编号',
  `coupon_fee_name` varchar(64) DEFAULT NULL COMMENT '单个代金券或立减优惠支付金额,$n为下标，从0开始编号',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '微信支付订单号',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户系统内部订单号，要求32个字符内，只能是数字、大小写字母_-|*@ ，且在同一个商户号下唯一。',
  `time_end` datetime DEFAULT NULL COMMENT '支付完成时间，格式为yyyyMMddHHmmss，如2009年12月25日9点10分10秒表示为20091225091010',
  `attach` varchar(128) DEFAULT NULL COMMENT '商家数据包，原样返回',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='微信支付回调表';

-- ----------------------------
-- Records of pay_wechatpay_callback
-- ----------------------------
INSERT INTO `pay_wechatpay_callback` VALUES ('1', 'SUCCESS', null, 'wx2421b1c4370ec43b', '10000100', null, '5d2b6c2a8db53831f7eda20af46e531c', null, 'SUCCESS', null, null, 'oUpF8uMEb4qRXf22hE3X68TekukE', 'Y', null, 'JSAPI', 'CFT', null, '1', 'CNY', null, null, null, '1', null, null, null, null, '1004400740201409030005092168', '1409811653', '2014-09-03 13:15:40', '支付测试');
INSERT INTO `pay_wechatpay_callback` VALUES ('2', 'SUCCESS', null, 'wx2421b1c4370ec43b', '10000100', null, '5d2b6c2a8db53831f7eda20af46e531c', null, 'SUCCESS', null, null, 'oUpF8uMEb4qRXf22hE3X68TekukE', 'Y', null, 'JSAPI', 'CFT', null, '1', 'CNY', null, null, null, '1', null, null, null, null, '1004400740201409030005092168', '1409811653', '2014-09-03 13:15:40', '支付测试');
INSERT INTO `pay_wechatpay_callback` VALUES ('3', 'SUCCESS', null, 'wx2421b1c4370ec43b', '10000100', null, '5d2b6c2a8db53831f7eda20af46e531c', null, 'SUCCESS', null, null, 'oUpF8uMEb4qRXf22hE3X68TekukE', 'Y', null, 'JSAPI', 'CFT', null, '1', 'CNY', null, null, null, '1', null, null, null, null, '1004400740201409030005092168', '1409811653', '2014-09-03 13:15:40', '支付测试');
INSERT INTO `pay_wechatpay_callback` VALUES ('4', 'SUCCESS', null, 'wx2421b1c4370ec43b', '10000100', null, '5d2b6c2a8db53831f7eda20af46e531c', null, 'SUCCESS', null, null, 'oUpF8uMEb4qRXf22hE3X68TekukE', 'Y', null, 'JSAPI', 'CFT', null, '1', 'CNY', null, null, null, '1', null, null, null, null, '1004400740201409030005092168', '1409811653', '2014-09-03 13:15:40', '支付测试');
INSERT INTO `pay_wechatpay_callback` VALUES ('5', 'SUCCESS', null, 'wx2421b1c4370ec43b', '10000100', null, '5d2b6c2a8db53831f7eda20af46e531c', null, 'SUCCESS', null, null, 'oUpF8uMEb4qRXf22hE3X68TekukE', 'Y', null, 'APP', 'CFT', null, '1', 'CNY', null, null, null, '1', null, null, null, null, '1004400740201409030005092168', '1409811653', '2014-09-03 13:15:40', '支付测试');

-- ----------------------------
-- Table structure for pay_wechatpay_request
-- ----------------------------
DROP TABLE IF EXISTS `pay_wechatpay_request`;
CREATE TABLE `pay_wechatpay_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '微信支付唯一流水ID',
  `appid` varchar(32) DEFAULT NULL COMMENT '微信开放平台审核通过的应用APPID',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '微信支付分配的商户号',
  `device_info` varchar(32) DEFAULT NULL COMMENT '终端设备号(门店号或收银设备ID)，默认请传"WEB"',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机字符串，不长于32位',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `sign_type` varchar(32) DEFAULT NULL COMMENT '签名类型，目前支持HMAC-SHA256和MD5，默认为MD5',
  `body` varchar(128) DEFAULT NULL COMMENT 'APP——需传入应用市场上的APP名字-实际商品名称，天天爱消除-游戏充值。',
  `detail` varchar(8192) DEFAULT NULL COMMENT '商品详细描述，对于使用单品优惠的商户，改字段必须按照规范上传',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户系统内部订单号，要求32个字符内，只能是数字、大小写字母_-|*@ ，且在同一个商户号下唯一',
  `attach` varchar(127) DEFAULT NULL COMMENT '附加数据，在查询API和支付通知中原样返回，该字段主要用于商户携带订单的自定义数据',
  `fee_type` varchar(16) DEFAULT NULL COMMENT '符合ISO 4217标准的三位字母代码，默认人民币：CNY',
  `total_fee` varchar(16) DEFAULT NULL COMMENT '订单总金额，单位为分',
  `spbill_create_ip` varchar(16) DEFAULT NULL COMMENT '用户端实际ip',
  `time_start` datetime DEFAULT NULL COMMENT '订单生成时间，格式为yyyyMMddHHmmss，如2009年12月25日9点10分10秒表示为20091225091010',
  `time_expire` datetime DEFAULT NULL COMMENT '订单失效时间，格式为yyyyMMddHHmmss，如2009年12月27日9点10分10秒表示为20091227091010',
  `goods_tag` varchar(32) DEFAULT NULL COMMENT '订单优惠标记，代金券或立减优惠功能的参数',
  `notify_url` varchar(256) DEFAULT NULL COMMENT '接收微信支付异步通知回调地址，通知url必须为直接可访问的url，不能携带参数',
  `trade_type` varchar(16) DEFAULT NULL COMMENT '支付类型',
  `limit_pay` varchar(32) DEFAULT NULL COMMENT 'no_credit--指定不能使用信用卡支付',
  `scene_info` varchar(256) DEFAULT NULL COMMENT '{"store_id": "", //门店唯一标识，选填，String(32) "store_name":"”//门店名称，选填，String(64)}',
  `xml` varchar(4096) DEFAULT NULL COMMENT 'MD5加密',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='微信支付请求';

-- ----------------------------
-- Records of pay_wechatpay_request
-- ----------------------------
INSERT INTO `pay_wechatpay_request` VALUES ('1', '=\"wx0a3242424aae13c6\";', '\"1469dfsf02\";', '\"WEB\";', '1143085598', 'DBB8A4F2F953C8F05EEC1232B5A4CE05', 'MD5', '主题', '主题内容', '10128181214223839', '小牛竞技', 'CNY', '33.01', null, '2017-12-22 11:43:08', null, '', '\"http://www.bairuoheng.cn/app/notify\";', 'APP', null, '{\"store_id\": \"001\", \"store_name\":\"小牛科技竞技APP\"}', '<xml><appid><![CDATA[=\"wx0a3242424aae13c6\";]]></appid><attach><![CDATA[小牛竞技]]></attach><body><![CDATA[主题]]></body><detail><![CDATA[主题内容]]></detail><device_info><![CDATA[\"WEB\";]]></device_info><fee_type><![CDATA[CNY]]></fee_type><mch_id><![CDATA[\"1469dfsf02\";]]></mch_id><nonce_str><![CDATA[1143085598]]></nonce_str><notify_url><![CDATA[\"http://www.bairuoheng.cn/app/notify\";]]></notify_url><out_trade_no><![CDATA[10128181214223839]]></out_trade_no><scene_info><![CDATA[10128181214223839]]></scene_info><total_fee><![CDATA[33.01]]></total_fee><trade_type><![CDATA[APP]]></trade_type><sign><![CDATA[DBB8A4F2F953C8F05EEC1232B5A4CE05]]></sign></xml>');
INSERT INTO `pay_wechatpay_request` VALUES ('2', '=\"wx0a3242424aae13c6\";', '\"1469dfsf02\";', '\"WEB\";', '1357242451', 'DBB8A4F2F953C8F05EEC1232B5A4CE05', 'MD5', '主题', '主题内容', '10128181214223839', '小牛竞技', 'CNY', '33.01', null, '2017-12-22 13:57:25', null, '', '\"http://www.bairuoheng.cn/app/notify\";', 'APP', null, '{\"store_id\": \"001\", \"store_name\":\"小牛科技竞技APP\"}', '<xml><appid><![CDATA[=\"wx0a3242424aae13c6\";]]></appid><attach><![CDATA[小牛竞技]]></attach><body><![CDATA[主题]]></body><detail><![CDATA[主题内容]]></detail><device_info><![CDATA[\"WEB\";]]></device_info><fee_type><![CDATA[CNY]]></fee_type><mch_id><![CDATA[\"1469dfsf02\";]]></mch_id><nonce_str><![CDATA[1357242451]]></nonce_str><notify_url><![CDATA[\"http://www.bairuoheng.cn/app/notify\";]]></notify_url><out_trade_no><![CDATA[10128181214223839]]></out_trade_no><scene_info><![CDATA[10128181214223839]]></scene_info><total_fee><![CDATA[33.01]]></total_fee><trade_type><![CDATA[APP]]></trade_type><sign><![CDATA[DBB8A4F2F953C8F05EEC1232B5A4CE05]]></sign></xml>');
INSERT INTO `pay_wechatpay_request` VALUES ('3', '=\"wx0a3242424aae13c6\";', '\"1469dfsf02\";', '\"WEB\";', '1402074313', 'DBB8A4F2F953C8F05EEC1232B5A4CE05', 'MD5', '主题', '主题内容', '10128181214223839', '小牛竞技', 'CNY', '33.01', null, '2017-12-22 14:02:07', null, '', '\"http://www.bairuoheng.cn/app/notify\";', 'APP', null, '{\"store_id\": \"001\", \"store_name\":\"小牛科技竞技APP\"}', '<xml><appid><![CDATA[=\"wx0a3242424aae13c6\";]]></appid><attach><![CDATA[小牛竞技]]></attach><body><![CDATA[主题]]></body><detail><![CDATA[主题内容]]></detail><device_info><![CDATA[\"WEB\";]]></device_info><fee_type><![CDATA[CNY]]></fee_type><mch_id><![CDATA[\"1469dfsf02\";]]></mch_id><nonce_str><![CDATA[1402074313]]></nonce_str><notify_url><![CDATA[\"http://www.bairuoheng.cn/app/notify\";]]></notify_url><out_trade_no><![CDATA[10128181214223839]]></out_trade_no><scene_info><![CDATA[10128181214223839]]></scene_info><total_fee><![CDATA[33.01]]></total_fee><trade_type><![CDATA[APP]]></trade_type><sign><![CDATA[DBB8A4F2F953C8F05EEC1232B5A4CE05]]></sign></xml>');
INSERT INTO `pay_wechatpay_request` VALUES ('4', '=wx0a3242424aae13c6', '1469dfsf02', 'WEB', '1403287309', '3E2D88DDCEAC73964C7EC3CE16B59648', 'MD5', '主题', '主题内容', '10128181214223839', '小牛竞技', 'CNY', '33.01', null, '2017-12-22 14:03:29', null, '', 'http://www.bairuoheng.cn/app/notify', 'APP', null, '{\"store_id\": \"001\", \"store_name\":\"小牛科技竞技APP\"}', '<xml><appid><![CDATA[=wx0a3242424aae13c6]]></appid><attach><![CDATA[小牛竞技]]></attach><body><![CDATA[主题]]></body><detail><![CDATA[主题内容]]></detail><device_info><![CDATA[WEB]]></device_info><fee_type><![CDATA[CNY]]></fee_type><mch_id><![CDATA[1469dfsf02]]></mch_id><nonce_str><![CDATA[1403287309]]></nonce_str><notify_url><![CDATA[http://www.bairuoheng.cn/app/notify]]></notify_url><out_trade_no><![CDATA[10128181214223839]]></out_trade_no><scene_info><![CDATA[10128181214223839]]></scene_info><total_fee><![CDATA[33.01]]></total_fee><trade_type><![CDATA[APP]]></trade_type><sign><![CDATA[3E2D88DDCEAC73964C7EC3CE16B59648]]></sign></xml>');
INSERT INTO `pay_wechatpay_request` VALUES ('5', '=wx0a3242424aae13c6', '1469dfsf02', 'WEB', '1415077764', '3E2D88DDCEAC73964C7EC3CE16B59648', 'MD5', '主题', '主题内容', '10128181214223839', '小牛竞技', 'CNY', '33.01', null, '2017-12-22 14:15:07', null, '', 'http://www.bairuoheng.cn/app/notify', 'APP', null, '{\"store_id\": \"001\", \"store_name\":\"小牛科技竞技APP\"}', '<xml><appid><![CDATA[=wx0a3242424aae13c6]]></appid><attach><![CDATA[小牛竞技]]></attach><body><![CDATA[主题]]></body><detail><![CDATA[主题内容]]></detail><device_info><![CDATA[WEB]]></device_info><fee_type><![CDATA[CNY]]></fee_type><mch_id><![CDATA[1469dfsf02]]></mch_id><nonce_str><![CDATA[1415077764]]></nonce_str><notify_url><![CDATA[http://www.bairuoheng.cn/app/notify]]></notify_url><out_trade_no><![CDATA[10128181214223839]]></out_trade_no><scene_info><![CDATA[10128181214223839]]></scene_info><total_fee><![CDATA[33.01]]></total_fee><trade_type><![CDATA[APP]]></trade_type><sign><![CDATA[3E2D88DDCEAC73964C7EC3CE16B59648]]></sign></xml>');

-- ----------------------------
-- Table structure for r_app_pay
-- ----------------------------
DROP TABLE IF EXISTS `r_app_pay`;
CREATE TABLE `r_app_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '应用平台与支付通道配置关系表唯一标识',
  `pay_channel_id` varchar(32) DEFAULT NULL COMMENT '支付渠道唯一标识ID',
  `app_id` int(11) DEFAULT NULL COMMENT '应用平台唯一标识ID',
  `state` int(2) DEFAULT '2' COMMENT '状态：1-启用，2-暂停；3-禁用；',
  `is_recommend` int(2) DEFAULT '2' COMMENT '是否推荐：1-是；2-否',
  `sort` int(6) DEFAULT '0' COMMENT '排序',
  `create_man` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_man` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_rap_pchannel_id` (`pay_channel_id`,`app_id`,`state`,`sort`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='应用平台与支付通道配置关系表';

-- ----------------------------
-- Records of r_app_pay
-- ----------------------------
