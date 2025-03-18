/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssmhp49z

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-10-19 17:52:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093767489 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-10-19 14:37:51', '1', '1', '提问1', '回复1', '1');
INSERT INTO `chat` VALUES ('2', '2020-10-19 14:37:51', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-10-19 14:37:51', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('1603093719836', '2020-10-19 15:48:39', '1603093243016', null, '请问下您那边有什么好车可以租', null, '0');
INSERT INTO `chat` VALUES ('1603093767488', '2020-10-19 15:49:27', '1603093243016', '1', null, '好的您可以看看我们的主页有许多车型供您选着的', null);

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssmHP49Z/upload/1603090013844.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssmHP49Z/upload/1603090027682.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssmHP49Z/upload/1603090035330.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssmHP49Z/upload/1603092900900.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssmHP49Z/upload/1603092911219.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', 'http://localhost:8080/ssmHP49Z/upload/1603089958321.jpg');

-- ----------------------------
-- Table structure for `dingzhixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingzhixinxi`;
CREATE TABLE `dingzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `dingzhizhuangkuang` longtext COMMENT '定制状况',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `qucheriqi` date DEFAULT NULL COMMENT '取车日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093620592 DEFAULT CHARSET=utf8 COMMENT='定制信息';

-- ----------------------------
-- Records of dingzhixinxi
-- ----------------------------
INSERT INTO `dingzhixinxi` VALUES ('1', '2020-10-19 14:37:51', '汽车名称1', '用户名1', '定制状况1', '1', '2020-10-19', '未支付');
INSERT INTO `dingzhixinxi` VALUES ('2', '2020-10-19 14:37:51', '汽车名称2', '用户名2', '定制状况2', '2', '2020-10-19', '未支付');
INSERT INTO `dingzhixinxi` VALUES ('3', '2020-10-19 14:37:51', '汽车名称3', '用户名3', '定制状况3', '3', '2020-10-19', '未支付');
INSERT INTO `dingzhixinxi` VALUES ('1603093620591', '2020-10-19 15:47:00', '法拉利', '1', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603093588238.jpg\"></p><p>根据您的要求，给您定制了这款跑车，您满意的话就到店里来取，价格是每天500元</p>', '500', '2020-10-01', '已支付');

-- ----------------------------
-- Table structure for `discussqichexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussqichexinxi`;
CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093308735 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

-- ----------------------------
-- Records of discussqichexinxi
-- ----------------------------
INSERT INTO `discussqichexinxi` VALUES ('1', '2020-10-19 14:37:51', '1', '评论内容1', '1');
INSERT INTO `discussqichexinxi` VALUES ('2', '2020-10-19 14:37:51', '2', '评论内容2', '2');
INSERT INTO `discussqichexinxi` VALUES ('3', '2020-10-19 14:37:51', '3', '评论内容3', '3');
INSERT INTO `discussqichexinxi` VALUES ('1603093308734', '2020-10-19 15:41:48', '2', '非常舒适的车，真的可以租来试试', '1603093243016');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093076821 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2020-10-19 14:37:51', '新闻公告', 'http://localhost:8080/ssmHP49Z/upload/1603090579572.jpg', '<p>最近发生新闻大大事</p>');
INSERT INTO `news` VALUES ('2', '2020-10-19 14:37:51', '租赁公告', 'http://localhost:8080/ssmHP49Z/upload/1603090602062.jpg', '<p>请大家遵守租赁规则</p>');
INSERT INTO `news` VALUES ('3', '2020-10-19 14:37:51', '出租公告', 'http://localhost:8080/ssmHP49Z/upload/1603090625894.jpg', '<p>121212</p>');
INSERT INTO `news` VALUES ('1603090653786', '2020-10-19 14:57:33', '归还公告', 'http://localhost:8080/ssmHP49Z/upload/1603090641135.jpg', '<p>请大家准时归还</p>');
INSERT INTO `news` VALUES ('1603093076820', '2020-10-19 15:37:56', '公告信息', 'http://localhost:8080/ssmHP49Z/upload/1603093031299.jpg', '<p>这里可以发布一些公告信息或者一些新闻资讯都是可以的</p><p>对于那些经常不按时归还的客户将会处罚金</p>');

-- ----------------------------
-- Table structure for `qicheguihai`
-- ----------------------------
DROP TABLE IF EXISTS `qicheguihai`;
CREATE TABLE `qicheguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qichexianzhuang` longtext COMMENT '汽车现状',
  `shifouyousunhuai` varchar(200) DEFAULT NULL COMMENT '是否有损坏',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093459619 DEFAULT CHARSET=utf8 COMMENT='汽车归还';

-- ----------------------------
-- Records of qicheguihai
-- ----------------------------
INSERT INTO `qicheguihai` VALUES ('1', '2020-10-19 14:37:51', '汽车编号1', '汽车名称1', '汽车现状1', '是', '2020-10-19', '用户名1', '姓名1', '手机1', '否', '');
INSERT INTO `qicheguihai` VALUES ('2', '2020-10-19 14:37:51', '汽车编号2', '汽车名称2', '汽车现状2', '是', '2020-10-19', '用户名2', '姓名2', '手机2', '否', '');
INSERT INTO `qicheguihai` VALUES ('3', '2020-10-19 14:37:51', '汽车编号3', '汽车名称3', '<p>汽车现状3</p>', '是', '2020-10-13', '用户名3', '姓名3', '手机3', '否', '');
INSERT INTO `qicheguihai` VALUES ('1603093459618', '2020-10-19 15:44:18', '1002·', '宝马X7', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603093444047.jpg\"></p><p><br></p><p><br></p><p>汽车的后视镜有损坏</p>', '是', '2020-10-19', '1', '李明飞', '15214121412', '是', '已经按时归还');

-- ----------------------------
-- Table structure for `qicheleixing`
-- ----------------------------
DROP TABLE IF EXISTS `qicheleixing`;
CREATE TABLE `qicheleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603092993211 DEFAULT CHARSET=utf8 COMMENT='汽车类型';

-- ----------------------------
-- Records of qicheleixing
-- ----------------------------
INSERT INTO `qicheleixing` VALUES ('1', '2020-10-19 14:37:51', '小轿车');
INSERT INTO `qicheleixing` VALUES ('2', '2020-10-19 14:37:51', 'B级车');
INSERT INTO `qicheleixing` VALUES ('3', '2020-10-19 14:37:51', '越野车');
INSERT INTO `qicheleixing` VALUES ('1603090160747', '2020-10-19 14:49:20', '跑车');
INSERT INTO `qicheleixing` VALUES ('1603092987273', '2020-10-19 15:36:27', '山地车');
INSERT INTO `qicheleixing` VALUES ('1603092993210', '2020-10-19 15:36:32', 'SUV');

-- ----------------------------
-- Table structure for `qichexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `qichexinxi`;
CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qichebianhao` varchar(200) NOT NULL COMMENT '汽车编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `qichezhuangkuang` longtext COMMENT '汽车状况',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichebianhao` (`qichebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093199702 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

-- ----------------------------
-- Records of qichexinxi
-- ----------------------------
INSERT INTO `qichexinxi` VALUES ('1', '2020-10-19 14:37:51', '1001', '吉利远景', '小轿车', 'http://localhost:8080/ssmHP49Z/upload/1603090227194.jpg', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603090261101.jpg\"></p><p>一切正常，都已经经过检测，目前续航还有450KM，走油，最高时速达130KM每小时</p>', '120', '待租赁');
INSERT INTO `qichexinxi` VALUES ('2', '2020-10-19 14:37:51', '1002·', '宝马X7', 'B级车', 'http://localhost:8080/ssmHP49Z/upload/1603090328205.jpg', '<p><br></p><p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603090357443.jpg\"></p><p><br></p><p>一切正常，都已经经过检测，目前续航还有650KM，走油，最高时速达180KM每小时</p>', '200', '待租赁');
INSERT INTO `qichexinxi` VALUES ('3', '2020-10-19 14:37:51', '1003', '兰博基尼', '跑车', 'http://localhost:8080/ssmHP49Z/upload/1603090410799.jpg', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603090461376.jpg\"></p><p>一切正常，都已经经过检测，目前续航还有650KM，走油，最高时速达250KM每小时</p>', '350', '待租赁');
INSERT INTO `qichexinxi` VALUES ('1603093199701', '2020-10-19 15:39:59', '10004', 'SUV', 'SUV', 'http://localhost:8080/ssmHP49Z/upload/1603093125689.jpg', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603093152314.jpg\"></p><p>一切正常，没有损坏，目前还可以续航550公里，最高时速200km</p>', '250', '待租赁');

-- ----------------------------
-- Table structure for `qichezulin`
-- ----------------------------
DROP TABLE IF EXISTS `qichezulin`;
CREATE TABLE `qichezulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zulintianshu` int(11) DEFAULT NULL COMMENT '租赁天数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `zulinshijian` date DEFAULT NULL COMMENT '租赁时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093326685 DEFAULT CHARSET=utf8 COMMENT='汽车租赁';

-- ----------------------------
-- Records of qichezulin
-- ----------------------------
INSERT INTO `qichezulin` VALUES ('1', '2020-10-19 14:37:51', '汽车编号1', '汽车名称1', '价格1', '1', '总价格1', '2020-10-19', '2020-10-29', '用户名1', '姓名1', '手机1', '未支付');
INSERT INTO `qichezulin` VALUES ('2', '2020-10-19 14:37:51', '汽车编号2', '汽车名称2', '价格2', '2', '总价格2', '2020-10-01', '2020-10-08', '用户名2', '姓名2', '手机2', '未支付');
INSERT INTO `qichezulin` VALUES ('3', '2020-10-19 14:37:51', '汽车编号3', '汽车名称3', '价格3', '3', '总价格3', '2020-10-19', '2020-10-31', '用户名3', '姓名3', '手机3', '未支付');
INSERT INTO `qichezulin` VALUES ('1603093326684', '2020-10-19 15:42:06', '1002·', '宝马X7', '200', '2', '400', '2020-10-01', '2020-10-19', '1', '李明飞', '15214121412', '已支付');

-- ----------------------------
-- Table structure for `sirendingzhi`
-- ----------------------------
DROP TABLE IF EXISTS `sirendingzhi`;
CREATE TABLE `sirendingzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `beizhu` longtext COMMENT '备注',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093515796 DEFAULT CHARSET=utf8 COMMENT='私人定制';

-- ----------------------------
-- Records of sirendingzhi
-- ----------------------------
INSERT INTO `sirendingzhi` VALUES ('1', '2020-10-19 14:37:51', '汽车名称1', '汽车类型1', '颜色1', '座位1', '排量1', '备注1', '2020-10-19', '用户名1', '姓名1', '手机1');
INSERT INTO `sirendingzhi` VALUES ('2', '2020-10-19 14:37:51', '汽车名称2', '汽车类型2', '颜色2', '座位2', '排量2', '备注2', '2020-10-19', '用户名2', '姓名2', '手机2');
INSERT INTO `sirendingzhi` VALUES ('3', '2020-10-19 14:37:51', '汽车名称3', '汽车类型3', '颜色3', '座位3', '排量3', '备注3', '2020-10-19', '用户名3', '姓名3', '手机3');
INSERT INTO `sirendingzhi` VALUES ('1603093515795', '2020-10-19 15:45:14', '法拉利', '跑车', '黑色', '5座', '2.0T', '要跑起来很快的不带车窗的', '2020-10-01', '1', '李明飞', '15214121412');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093310325 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('2', '2020-10-19 14:37:51', '2', '2', '表名2', '收藏名称2', 'storeup_picture2');
INSERT INTO `storeup` VALUES ('3', '2020-10-19 14:37:51', '3', '3', '表名3', '收藏名称3', 'storeup_picture3');
INSERT INTO `storeup` VALUES ('1603093310324', '2020-10-19 15:41:50', '1603093243016', '2', 'qichexinxi', '宝马X7', 'http://localhost:8080/ssmHP49Z/upload/1603090328205.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'gu3mtcz3smf6xtsnl9tcrhyj66wdppnu', '2020-10-19 14:44:51', '2020-10-19 16:48:53');
INSERT INTO `token` VALUES ('2', '1', '001', 'yonghu', '用户', 'jvzg3lqjdt5kfetbvotuv9jk6xr72xh3', '2020-10-19 15:02:03', '2020-10-19 16:35:15');
INSERT INTO `token` VALUES ('3', '1603093243016', '1', 'yonghu', '用户', 'nt0rw6bqqxx9m551dc6ej4ji70ynkrxs', '2020-10-19 15:40:47', '2020-10-19 16:49:36');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-10-19 14:37:51');

-- ----------------------------
-- Table structure for `wentishangbao`
-- ----------------------------
DROP TABLE IF EXISTS `wentishangbao`;
CREATE TABLE `wentishangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichewenti` longtext COMMENT '汽车问题',
  `shangbaoriqi` date DEFAULT NULL COMMENT '上报日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093393223 DEFAULT CHARSET=utf8 COMMENT='问题上报';

-- ----------------------------
-- Records of wentishangbao
-- ----------------------------
INSERT INTO `wentishangbao` VALUES ('1', '2020-10-19 14:37:51', '标题1', '汽车编号1', '汽车问题1', '2020-10-19', '用户名1', '姓名1', '否', '');
INSERT INTO `wentishangbao` VALUES ('2', '2020-10-19 14:37:51', '标题2', '汽车编号2', '汽车问题2', '2020-10-19', '用户名2', '姓名2', '否', '');
INSERT INTO `wentishangbao` VALUES ('3', '2020-10-19 14:37:51', '标题3', '汽车编号3', '汽车问题3', '2020-10-19', '用户名3', '姓名3', '否', '');
INSERT INTO `wentishangbao` VALUES ('1603093393222', '2020-10-19 15:43:12', '宝马汽车后视镜损坏', '1002·', '<p><img src=\"http://localhost:8080/ssmHP49Z/upload/1603093376195.jpg\"></p><p><br></p><p>宝马车的后视镜在倒车的时候不小心损坏</p>', '2020-10-01', '1', '李明飞', '是', '经过核实，确实有损坏');

-- ----------------------------
-- Table structure for `yajinjiaona`
-- ----------------------------
DROP TABLE IF EXISTS `yajinjiaona`;
CREATE TABLE `yajinjiaona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yajin` int(11) NOT NULL COMMENT '押金',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093407339 DEFAULT CHARSET=utf8 COMMENT='押金缴纳';

-- ----------------------------
-- Records of yajinjiaona
-- ----------------------------
INSERT INTO `yajinjiaona` VALUES ('1603090536192', '2020-10-19 14:55:35', '001', '李铭', '1000', '2020-10-01', '', '', '');
INSERT INTO `yajinjiaona` VALUES ('1603090541670', '2020-10-19 14:55:40', '002', '王芳', '1000', '2020-10-01', '', '', '');
INSERT INTO `yajinjiaona` VALUES ('1603093407338', '2020-10-19 15:43:27', '1', '李明飞', '1800', '2020-10-01', '', '', '已支付');

-- ----------------------------
-- Table structure for `yajinkouchu`
-- ----------------------------
DROP TABLE IF EXISTS `yajinkouchu`;
CREATE TABLE `yajinkouchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yajin` int(11) NOT NULL COMMENT '押金',
  `kouchuliyou` longtext COMMENT '扣除理由',
  `kouchuriqi` date DEFAULT NULL COMMENT '扣除日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093658533 DEFAULT CHARSET=utf8 COMMENT='押金扣除';

-- ----------------------------
-- Records of yajinkouchu
-- ----------------------------
INSERT INTO `yajinkouchu` VALUES ('1', '2020-10-19 14:37:51', '用户名1', '姓名1', '1', '扣除理由1', '2020-10-19');
INSERT INTO `yajinkouchu` VALUES ('2', '2020-10-19 14:37:51', '用户名2', '姓名2', '2', '扣除理由2', '2020-10-19');
INSERT INTO `yajinkouchu` VALUES ('3', '2020-10-19 14:37:51', '用户名3', '姓名3', '3', '扣除理由3', '2020-10-19');
INSERT INTO `yajinkouchu` VALUES ('1603093658532', '2020-10-19 15:47:37', '1', '李明飞', '200', '租车过程中，后视镜损坏', '2020-10-01');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1603093243017 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-10-19 14:37:51', '001', '001', '李铭', '男', 'http://localhost:8080/ssmHP49Z/upload/1603090109525.png', '440300199101010001', '15214121412');
INSERT INTO `yonghu` VALUES ('2', '2020-10-19 14:37:51', '002', '002', '王芳', '女', 'http://localhost:8080/ssmHP49Z/upload/1603090124998.png', '440300199202020002', '15214121412');
INSERT INTO `yonghu` VALUES ('1603093243016', '2020-10-19 15:40:43', '1', '1', '李明飞', '男', 'http://localhost:8080/ssmHP49Z/upload/1603093272518.png', '441214121411521412', '15214121412');
