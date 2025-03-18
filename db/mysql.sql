DROP DATABASE IF EXISTS ssmHP49Z;

CREATE DATABASE ssmHP49Z default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmHP49Z;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shenfenzheng,shouji) VALUES('用户1','123456','姓名1','男','yonghu_touxiang1','440300199101010001','020-89819991');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shenfenzheng,shouji) VALUES('用户2','123456','姓名2','男','yonghu_touxiang2','440300199202020002','020-89819992');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shenfenzheng,shouji) VALUES('用户3','123456','姓名3','男','yonghu_touxiang3','440300199303030003','020-89819993');


DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qichebianhao` varchar(200) NOT NULL UNIQUE   COMMENT '汽车编号',
	`qichemingcheng` varchar(200)    COMMENT '汽车名称',
	`qicheleixing` varchar(200)    COMMENT '汽车类型',
	`tupian` varchar(200)    COMMENT '图片',
	`qichezhuangkuang` longtext    COMMENT '汽车状况',
	`jiage` int    COMMENT '价格',
	`zhuangtai` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车信息';

INSERT INTO qichexinxi(qichebianhao,qichemingcheng,qicheleixing,tupian,qichezhuangkuang,jiage,zhuangtai) VALUES('汽车编号1','汽车名称1','汽车类型1','qichexinxi_tupian1','汽车状况1',1,'待租赁');
INSERT INTO qichexinxi(qichebianhao,qichemingcheng,qicheleixing,tupian,qichezhuangkuang,jiage,zhuangtai) VALUES('汽车编号2','汽车名称2','汽车类型2','qichexinxi_tupian2','汽车状况2',2,'待租赁');
INSERT INTO qichexinxi(qichebianhao,qichemingcheng,qicheleixing,tupian,qichezhuangkuang,jiage,zhuangtai) VALUES('汽车编号3','汽车名称3','汽车类型3','qichexinxi_tupian3','汽车状况3',3,'待租赁');


DROP TABLE IF EXISTS `qicheleixing`;

CREATE TABLE `qicheleixing` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qicheleixing` varchar(200) NOT NULL   COMMENT '汽车类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车类型';

INSERT INTO qicheleixing(qicheleixing) VALUES('汽车类型1');
INSERT INTO qicheleixing(qicheleixing) VALUES('汽车类型2');
INSERT INTO qicheleixing(qicheleixing) VALUES('汽车类型3');


DROP TABLE IF EXISTS `qichezulin`;

CREATE TABLE `qichezulin` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qichebianhao` varchar(200)    COMMENT '汽车编号',
	`qichemingcheng` varchar(200)    COMMENT '汽车名称',
	`jiage` varchar(200)    COMMENT '价格',
	`zulintianshu` int    COMMENT '租赁天数',
	`zongjiage` varchar(200)    COMMENT '总价格',
	`zulinshijian` date    COMMENT '租赁时间',
	`jieshushijian` date    COMMENT '结束时间',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车租赁';

INSERT INTO qichezulin(qichebianhao,qichemingcheng,jiage,zulintianshu,zongjiage,zulinshijian,jieshushijian,yonghuming,xingming,shouji,ispay) VALUES('汽车编号1','汽车名称1','价格1',1,'总价格1',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'用户名1','姓名1','手机1','未支付');
INSERT INTO qichezulin(qichebianhao,qichemingcheng,jiage,zulintianshu,zongjiage,zulinshijian,jieshushijian,yonghuming,xingming,shouji,ispay) VALUES('汽车编号2','汽车名称2','价格2',2,'总价格2',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'用户名2','姓名2','手机2','未支付');
INSERT INTO qichezulin(qichebianhao,qichemingcheng,jiage,zulintianshu,zongjiage,zulinshijian,jieshushijian,yonghuming,xingming,shouji,ispay) VALUES('汽车编号3','汽车名称3','价格3',3,'总价格3',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'用户名3','姓名3','手机3','未支付');


DROP TABLE IF EXISTS `wentishangbao`;

CREATE TABLE `wentishangbao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`qichebianhao` varchar(200)    COMMENT '汽车编号',
	`qichewenti` longtext    COMMENT '汽车问题',
	`shangbaoriqi` date    COMMENT '上报日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题上报';

INSERT INTO wentishangbao(biaoti,qichebianhao,qichewenti,shangbaoriqi,yonghuming,xingming,sfsh,shhf) VALUES('标题1','汽车编号1','汽车问题1',CURRENT_TIMESTAMP,'用户名1','姓名1','否','');
INSERT INTO wentishangbao(biaoti,qichebianhao,qichewenti,shangbaoriqi,yonghuming,xingming,sfsh,shhf) VALUES('标题2','汽车编号2','汽车问题2',CURRENT_TIMESTAMP,'用户名2','姓名2','否','');
INSERT INTO wentishangbao(biaoti,qichebianhao,qichewenti,shangbaoriqi,yonghuming,xingming,sfsh,shhf) VALUES('标题3','汽车编号3','汽车问题3',CURRENT_TIMESTAMP,'用户名3','姓名3','否','');


DROP TABLE IF EXISTS `yajinjiaona`;

CREATE TABLE `yajinjiaona` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`yajin` int NOT NULL   COMMENT '押金',
	`riqi` date    COMMENT '日期',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='押金缴纳';

INSERT INTO yajinjiaona(yonghuming,xingming,yajin,riqi,sfsh,shhf,ispay) VALUES('用户名1','姓名1',1,CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO yajinjiaona(yonghuming,xingming,yajin,riqi,sfsh,shhf,ispay) VALUES('用户名2','姓名2',2,CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO yajinjiaona(yonghuming,xingming,yajin,riqi,sfsh,shhf,ispay) VALUES('用户名3','姓名3',3,CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `yajinkouchu`;

CREATE TABLE `yajinkouchu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`yajin` int NOT NULL   COMMENT '押金',
	`kouchuliyou` longtext    COMMENT '扣除理由',
	`kouchuriqi` date    COMMENT '扣除日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='押金扣除';

INSERT INTO yajinkouchu(yonghuming,xingming,yajin,kouchuliyou,kouchuriqi) VALUES('用户名1','姓名1',1,'扣除理由1',CURRENT_TIMESTAMP);
INSERT INTO yajinkouchu(yonghuming,xingming,yajin,kouchuliyou,kouchuriqi) VALUES('用户名2','姓名2',2,'扣除理由2',CURRENT_TIMESTAMP);
INSERT INTO yajinkouchu(yonghuming,xingming,yajin,kouchuliyou,kouchuriqi) VALUES('用户名3','姓名3',3,'扣除理由3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `qicheguihai`;

CREATE TABLE `qicheguihai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qichebianhao` varchar(200)    COMMENT '汽车编号',
	`qichemingcheng` varchar(200)    COMMENT '汽车名称',
	`qichexianzhuang` longtext    COMMENT '汽车现状',
	`shifouyousunhuai` varchar(200)    COMMENT '是否有损坏',
	`guihairiqi` date    COMMENT '归还日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车归还';

INSERT INTO qicheguihai(qichebianhao,qichemingcheng,qichexianzhuang,shifouyousunhuai,guihairiqi,yonghuming,xingming,shouji,sfsh,shhf) VALUES('汽车编号1','汽车名称1','汽车现状1','是',CURRENT_TIMESTAMP,'用户名1','姓名1','手机1','否','');
INSERT INTO qicheguihai(qichebianhao,qichemingcheng,qichexianzhuang,shifouyousunhuai,guihairiqi,yonghuming,xingming,shouji,sfsh,shhf) VALUES('汽车编号2','汽车名称2','汽车现状2','是',CURRENT_TIMESTAMP,'用户名2','姓名2','手机2','否','');
INSERT INTO qicheguihai(qichebianhao,qichemingcheng,qichexianzhuang,shifouyousunhuai,guihairiqi,yonghuming,xingming,shouji,sfsh,shhf) VALUES('汽车编号3','汽车名称3','汽车现状3','是',CURRENT_TIMESTAMP,'用户名3','姓名3','手机3','否','');


DROP TABLE IF EXISTS `sirendingzhi`;

CREATE TABLE `sirendingzhi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qichemingcheng` varchar(200) NOT NULL   COMMENT '汽车名称',
	`qicheleixing` varchar(200)    COMMENT '汽车类型',
	`yanse` varchar(200)    COMMENT '颜色',
	`zuowei` varchar(200)    COMMENT '座位',
	`pailiang` varchar(200)    COMMENT '排量',
	`beizhu` longtext    COMMENT '备注',
	`riqi` date    COMMENT '日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私人定制';

INSERT INTO sirendingzhi(qichemingcheng,qicheleixing,yanse,zuowei,pailiang,beizhu,riqi,yonghuming,xingming,shouji) VALUES('汽车名称1','汽车类型1','颜色1','座位1','排量1','备注1',CURRENT_TIMESTAMP,'用户名1','姓名1','手机1');
INSERT INTO sirendingzhi(qichemingcheng,qicheleixing,yanse,zuowei,pailiang,beizhu,riqi,yonghuming,xingming,shouji) VALUES('汽车名称2','汽车类型2','颜色2','座位2','排量2','备注2',CURRENT_TIMESTAMP,'用户名2','姓名2','手机2');
INSERT INTO sirendingzhi(qichemingcheng,qicheleixing,yanse,zuowei,pailiang,beizhu,riqi,yonghuming,xingming,shouji) VALUES('汽车名称3','汽车类型3','颜色3','座位3','排量3','备注3',CURRENT_TIMESTAMP,'用户名3','姓名3','手机3');


DROP TABLE IF EXISTS `dingzhixinxi`;

CREATE TABLE `dingzhixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`qichemingcheng` varchar(200)    COMMENT '汽车名称',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`dingzhizhuangkuang` longtext    COMMENT '定制状况',
	`jiage` int NOT NULL   COMMENT '价格',
	`qucheriqi` date    COMMENT '取车日期',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定制信息';

INSERT INTO dingzhixinxi(qichemingcheng,yonghuming,dingzhizhuangkuang,jiage,qucheriqi,ispay) VALUES('汽车名称1','用户名1','定制状况1',1,CURRENT_TIMESTAMP,'未支付');
INSERT INTO dingzhixinxi(qichemingcheng,yonghuming,dingzhizhuangkuang,jiage,qucheriqi,ispay) VALUES('汽车名称2','用户名2','定制状况2',2,CURRENT_TIMESTAMP,'未支付');
INSERT INTO dingzhixinxi(qichemingcheng,yonghuming,dingzhizhuangkuang,jiage,qucheriqi,ispay) VALUES('汽车名称3','用户名3','定制状况3',3,CURRENT_TIMESTAMP,'未支付');


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

INSERT INTO discussqichexinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussqichexinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussqichexinxi(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

