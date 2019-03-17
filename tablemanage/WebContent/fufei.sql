SET character_set_client = gb2312; 
SET character_set_connection = gb2312; 
SET character_set_database = gb2312; 
SET character_set_results = gb2312; 
SET character_set_server = gb2312;
CREATE TABLE `fufei` (
   `id` int(11) not null auto_increment,
   `qiuzhuohao` varchar(50),`meixiaoshijifei` varchar(50),`zongshichang` varchar(50),`huiyuanbianhao` varchar(50),`xingming` varchar(50),`huiyuandengji` varchar(50),`zhekou` varchar(50),`zongjine` varchar(50),`beizhu` varchar(500),`issh` varchar(10) DEFAULT '否',
   `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 AUTO_INCREMENT=2;

insert into fufei(qiuzhuohao,meixiaoshijifei,zongshichang,huiyuanbianhao,xingming,huiyuandengji,zhekou,zongjine,beizhu) select qiuzhuohao,meixiaoshijifei,'62','020',xingming,huiyuandengji,zhekou,'','暂无' from dingzhuoxinxi order by rand()  limit 0,1;insert into fufei(qiuzhuohao,meixiaoshijifei,zongshichang,huiyuanbianhao,xingming,huiyuandengji,zhekou,zongjine,beizhu) select qiuzhuohao,meixiaoshijifei,'37','011',xingming,huiyuandengji,zhekou,'','ok' from dingzhuoxinxi order by rand()  limit 0,1;insert into fufei(qiuzhuohao,meixiaoshijifei,zongshichang,huiyuanbianhao,xingming,huiyuandengji,zhekou,zongjine,beizhu) select qiuzhuohao,meixiaoshijifei,'22','008',xingming,huiyuandengji,zhekou,'','没问题' from dingzhuoxinxi order by rand()  limit 0,1;insert into fufei(qiuzhuohao,meixiaoshijifei,zongshichang,huiyuanbianhao,xingming,huiyuandengji,zhekou,zongjine,beizhu) select qiuzhuohao,meixiaoshijifei,'23','022',xingming,huiyuandengji,zhekou,'','无' from dingzhuoxinxi order by rand()  limit 0,1;insert into fufei(qiuzhuohao,meixiaoshijifei,zongshichang,huiyuanbianhao,xingming,huiyuandengji,zhekou,zongjine,beizhu) select qiuzhuohao,meixiaoshijifei,'85','001',xingming,huiyuandengji,zhekou,'','没问题' from dingzhuoxinxi order by rand()  limit 0,1;
update fufei set zongjine=1*meixiaoshijifei*zongshichang*zhekou;
update fufei set issh='是';

