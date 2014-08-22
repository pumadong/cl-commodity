delete from `p_module` where name='商品中心';
INSERT INTO `p_module`(id,name,flag,url,sort_no,create_person,create_date,update_person,update_date) 
VALUES
(3,'商品中心','c','http://127.0.0.1:10005-server',30,'system',NOW(),'system',NOW())
;


delete from `p_resource` where module_flag='c';
INSERT INTO `p_resource`(id,name,url,remark,parent_id,structure,sort_no,module_flag,create_person,create_date,update_person,update_date) 
VALUES
(50,'基础管理','','',0,'s-1',1,'c','system',NOW(),'system',NOW()),
(51,'商品管理','','',0,'s-2',2,'c','system',NOW(),'system',NOW()),
(52,'价格管理','','',0,'s-3',3,'c','system',NOW(),'system',NOW()),
(53,'图片管理','','',0,'s-4',4,'c','system',NOW(),'system',NOW()),
(60,'分类管理','/controller/category/list.do','',50,'s-1-1',1,'c','system',NOW(),'system',NOW()),
(61,'品牌管理','/controller/brand/list.do','',50,'s-1-2',2,'c','system',NOW(),'system',NOW()),
(62,'属性管理','/controller/prop/list.do','',50,'s-1-3',3,'c','system',NOW(),'system',NOW()),
(63,'尺码表管理','/controller/sizechart/list.do','',50,'s-1-4',4,'c','system',NOW(),'system',NOW()),
(64,'商品新增','/controller/add.do','',51,'s-2-1',1,'c','system',NOW(),'system',NOW()),
(65,'商品管理','/controller/manage.do','',51,'s-2-2',2,'c','system',NOW(),'system',NOW()),
(66,'商品日志','/controller/log.do','',51,'s-2-3',3,'c','system',NOW(),'system',NOW()),
(67,'价格管理','/controller/price/manage.do','',52,'s-3-1',1,'c','system',NOW(),'system',NOW()),
(68,'调价日志','/controller/price/log.do','',52,'s-3-2',2,'c','system',NOW(),'system',NOW()),
(69,'图片上传','/controller/picture/batchupload.do','',53,'s-4-1',1,'c','system',NOW(),'system',NOW()),
(70,'图片管理','/controller/picture/manage.do','',53,'s-4-2',2,'c','system',NOW(),'system',NOW())
;