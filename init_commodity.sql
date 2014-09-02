#数据初始化-商品字典表
insert into `c_dictionary`(`group`,`code`,`name`,sort_no,create_person,create_date)
values
('commodity_status','0','新建（待进货）',1,'system',now()),
('commodity_status','1','待售（入库后）',2,'system',now()),
('commodity_status','2','上架（在售）',3,'system',now()),
('commodity_status','3','下架（停售）',4,'system',now()),

('commodity_log','1','新增商品',10,'system',now()),
('commodity_log','2','修改商品',20,'system',now()),
('commodity_log','3','图片上传完整',30,'system',now()),
('commodity_log','4','图片删除',40,'system',now()),
('commodity_log','5','图片不再完整',50,'system',now()),
('commodity_log','6','商品销售',60,'system',now()),
('commodity_log','7','商品停售',70,'system',now()),
('commodity_log','8','修改价格',80,'system',now()),
('commodity_log','9','删除商品',90,'system',now()),

('commodity_pictype','o','原图',10,'system',now()),
('commodity_pictype','l','大图',10,'system',now()),
('commodity_pictype','m','中图',10,'system',now()),
('commodity_pictype','s','小图',10,'system',now()),
('commodity_pictype','t','微图',10,'system',now()),

('price_log','1','成本价',10,'system',now()),
('price_log','2','销售价',20,'system',now()),
('price_log','3','市场价',30,'system',now()),

('sizechart_limit','1','不限制',10,'system',now()),
('sizechart_limit','2','限制分类',20,'system',now()),
('sizechart_limit','3','限制品牌',30,'system',now()),
('sizechart_limit','4','限制分类和品牌',40,'system',now())
;

#数据初始化-品牌表
truncate table c_brand;
insert into c_brand(id,name,english_name,website,pic_large,pic_middle,pic_small,letter,sort_no,is_delete,create_person,create_date,update_person,update_date)
values
(1,'百丽','belle','http://www.belle.com','brand_1_l.jpg','brand_1_m.jpg','brand_1_s.jpg','B',1,0,'system',NOW(),'system',NOW()),
(2,'天美意','teenmix','http://www.teenmix.com.cn','brand_2_l.jpg','brand_2_m.jpg','brand_2_s.jpg','T',2,0,'system',NOW(),'system',NOW()),
(3,'他她','tata','http://www.tatashoes.com.cn','brand_3_l.jpg','brand_3_m.jpg','brand_3_s.jpg','T',3,0,'system',NOW(),'system',NOW()),
(4,'思加图','staccato','http://www.staccato.com','brand_4_l.jpg','brand_4_m.jpg','brand_4_s.jpg','S',4,0,'system',NOW(),'system',NOW()),
(5,'百思图','basto','http://www.basto.com.cn','brand_5_l.jpg','brand_5_m.jpg','brand_5_s.jpg','T',5,0,'system',NOW(),'system',NOW()),
(6,'茵奈儿','innet','','brand_6_l.jpg','brand_6_m.jpg','brand_6_s.jpg','T',6,0,'system',NOW(),'system',NOW()),
(7,'真美诗','joypeace','http://www.joypeace.com','brand_7_l.jpg','brand_7_m.jpg','brand_7_s.jpg','T',7,0,'system',NOW(),'system',NOW()),
(8,'耐克','nike','','brand_8_l.jpg','brand_8_m.jpg','brand_8_s.jpg','T',8,0,'system',NOW(),'system',NOW()),
(9,'阿迪达斯','adidas','','brand_9_l.jpg','brand_9_m.jpg','brand_9_s.jpg','T',9,0,'system',NOW(),'system',NOW()),
(10,'探路者','toread','','brand_10_l.jpg','brand_10_m.jpg','brand_10_s.jpg','T',10,0,'system',NOW(),'system',NOW())
;

#数据初始化-分类表
truncate table c_category;
insert into c_category(id,name,struct_name,level,parent_id,sort_no,is_delete,create_person,create_date,update_person,update_date)
values
(1,'女鞋','女鞋',1,0,1,0,'system',NOW(),'system',NOW()),
(2,'男鞋','男鞋',1,0,2,0,'system',NOW(),'system',NOW()),
(3,'女装','女装',1,0,3,0,'system',NOW(),'system',NOW()),
(4,'男装','男装',1,0,4,0,'system',NOW(),'system',NOW()),
(5,'凉鞋','女鞋-凉鞋',2,1,1,0,'system',NOW(),'system',NOW()),
(6,'靴子','女鞋-靴子',2,1,2,0,'system',NOW(),'system',NOW()),
(7,'休闲鞋','男鞋-休闲鞋',2,2,1,0,'system',NOW(),'system',NOW()),
(8,'运动鞋','男鞋-运动鞋',2,2,2,0,'system',NOW(),'system',NOW()),
(101,'中空凉鞋','女鞋-凉鞋-中空凉鞋',3,5,1,0,'system',NOW(),'system',NOW()),
(102,'后空凉鞋','女鞋-凉鞋-后空凉鞋',3,5,2,0,'system',NOW(),'system',NOW()),
(103,'长靴','女鞋-靴子-长靴',3,6,1,0,'system',NOW(),'system',NOW()),
(104,'短靴','女鞋-靴子-短靴',3,6,1,0,'system',NOW(),'system',NOW()),
(105,'家居鞋','男鞋-休闲鞋-家居鞋',3,7,1,0,'system',NOW(),'system',NOW()),
(106,'满帮鞋','男鞋-休闲鞋-满帮鞋',3,7,2,0,'system',NOW(),'system',NOW()),
(107,'篮球鞋','男鞋-运动鞋-篮球鞋',3,8,1,0,'system',NOW(),'system',NOW()),
(108,'跑步鞋','男鞋-运动鞋-跑步鞋',3,8,2,0,'system',NOW(),'system',NOW()),
(109,'网球鞋','男鞋-运动鞋-网球鞋',3,8,2,0,'system',NOW(),'system',NOW()),
(110,'登山鞋','男鞋-运动鞋-登山鞋',3,8,2,0,'system',NOW(),'system',NOW())
;

#数据初始化-品牌分类关系表
truncate table c_category_brand;
insert into c_category_brand(category_id,brand_id,create_person,create_date)
values
(101,1,'system',NOW()),(101,2,'system',NOW()),(101,3,'system',NOW()),(101,4,'system',NOW()),(101,5,'system',NOW()),(101,6,'system',NOW()),(101,7,'system',NOW()),(101,8,'system',NOW()),(101,9,'system',NOW()),(101,10,'system',NOW()),
(102,1,'system',NOW()),(102,2,'system',NOW()),(102,3,'system',NOW()),(102,4,'system',NOW()),(102,5,'system',NOW()),(102,6,'system',NOW()),(102,7,'system',NOW()),(102,8,'system',NOW()),(102,9,'system',NOW()),(102,10,'system',NOW()),
(103,1,'system',NOW()),(103,2,'system',NOW()),(103,3,'system',NOW()),(103,4,'system',NOW()),(103,5,'system',NOW()),(103,6,'system',NOW()),(103,7,'system',NOW()),(103,8,'system',NOW()),(103,9,'system',NOW()),(103,10,'system',NOW()),
(104,1,'system',NOW()),(104,2,'system',NOW()),(104,3,'system',NOW()),(104,4,'system',NOW()),(104,5,'system',NOW()),(104,6,'system',NOW()),(104,7,'system',NOW()),(104,8,'system',NOW()),(104,9,'system',NOW()),(104,10,'system',NOW()),
(105,1,'system',NOW()),(105,2,'system',NOW()),(105,3,'system',NOW()),(105,4,'system',NOW()),(105,5,'system',NOW()),(105,6,'system',NOW()),(105,7,'system',NOW()),(105,8,'system',NOW()),(105,9,'system',NOW()),(105,10,'system',NOW()),
(106,1,'system',NOW()),(106,2,'system',NOW()),(106,3,'system',NOW()),(106,4,'system',NOW()),(106,5,'system',NOW()),(106,6,'system',NOW()),(106,7,'system',NOW()),(106,8,'system',NOW()),(106,9,'system',NOW()),(106,10,'system',NOW()),
(107,1,'system',NOW()),(107,2,'system',NOW()),(107,3,'system',NOW()),(107,4,'system',NOW()),(107,5,'system',NOW()),(107,6,'system',NOW()),(107,7,'system',NOW()),(107,8,'system',NOW()),(107,9,'system',NOW()),(107,10,'system',NOW()),
(108,1,'system',NOW()),(108,2,'system',NOW()),(108,3,'system',NOW()),(108,4,'system',NOW()),(108,5,'system',NOW()),(108,6,'system',NOW()),(108,7,'system',NOW()),(108,8,'system',NOW()),(108,9,'system',NOW()),(108,10,'system',NOW()),
(109,1,'system',NOW()),(109,2,'system',NOW()),(109,3,'system',NOW()),(109,4,'system',NOW()),(109,5,'system',NOW()),(109,6,'system',NOW()),(109,7,'system',NOW()),(109,8,'system',NOW()),(109,9,'system',NOW()),(109,10,'system',NOW()),
(110,1,'system',NOW()),(110,2,'system',NOW()),(110,3,'system',NOW()),(110,4,'system',NOW()),(110,5,'system',NOW()),(110,6,'system',NOW()),(110,7,'system',NOW()),(110,8,'system',NOW()),(110,9,'system',NOW()),(110,10,'system',NOW())
;

#数据初始化-属性项表
truncate table c_prop_item;
insert into c_prop_item(id,name,sort_no,is_delete,create_person,create_date,update_person,update_date)
values
(1,'色系',1,0,'system',NOW(),'system',NOW()),
(2,'产地',2,0,'system',NOW(),'system',NOW()),
(3,'季节',3,0,'system',NOW(),'system',NOW()),
(4,'工艺',4,0,'system',NOW(),'system',NOW()),
(5,'面料材质',5,0,'system',NOW(),'system',NOW())
;

#数据初始化-属性值表
truncate table c_prop_value;
insert into c_prop_value(id,name,prop_item_id,sort_no,is_delete,create_person,create_date,update_person,update_date)
values
(1,'米色',1,1,0,'system',NOW(),'system',NOW()),
(2,'金银色',1,2,0,'system',NOW(),'system',NOW()),
(3,'紫色',1,3,0,'system',NOW(),'system',NOW()),
(4,'中国',2,1,0,'system',NOW(),'system',NOW()),
(5,'美国',2,2,0,'system',NOW(),'system',NOW()),
(6,'春',3,1,0,'system',NOW(),'system',NOW()),
(7,'夏',3,2,0,'system',NOW(),'system',NOW()),
(8,'秋',3,3,0,'system',NOW(),'system',NOW()),
(9,'冬',3,4,0,'system',NOW(),'system',NOW()),
(10,'电绣',4,1,0,'system',NOW(),'system',NOW()),
(11,'漆皮',4,2,0,'system',NOW(),'system',NOW()),
(12,'棉',5,1,0,'system',NOW(),'system',NOW()),
(13,'尼龙',5,2,0,'system',NOW(),'system',NOW()),
(14,'皮质',5,3,0,'system',NOW(),'system',NOW()),
(15,'绸缎',5,4,0,'system',NOW(),'system',NOW())
;

#数据初始化-分类属性项关系表
truncate table c_category_prop_item;
insert into c_category_prop_item(category_id,prop_item_id,is_required,is_multiple,is_show,create_person,create_date,update_person,update_date)
values
(101,1,1,1,1,'system',NOW(),'system',NOW()),(101,2,1,1,1,'system',NOW(),'system',NOW()),(101,3,1,1,1,'system',NOW(),'system',NOW()),(101,4,1,1,1,'system',NOW(),'system',NOW()),(101,5,1,1,1,'system',NOW(),'system',NOW()),
(102,1,1,1,1,'system',NOW(),'system',NOW()),(102,2,1,1,1,'system',NOW(),'system',NOW()),(102,3,1,1,1,'system',NOW(),'system',NOW()),(102,4,1,1,1,'system',NOW(),'system',NOW()),(102,5,1,1,1,'system',NOW(),'system',NOW()),
(103,1,1,1,1,'system',NOW(),'system',NOW()),(103,2,1,1,1,'system',NOW(),'system',NOW()),(103,3,1,1,1,'system',NOW(),'system',NOW()),(103,4,1,1,1,'system',NOW(),'system',NOW()),(103,5,1,1,1,'system',NOW(),'system',NOW()),
(104,1,1,1,1,'system',NOW(),'system',NOW()),(104,2,1,1,1,'system',NOW(),'system',NOW()),(104,3,1,1,1,'system',NOW(),'system',NOW()),(104,4,1,1,1,'system',NOW(),'system',NOW()),(104,5,1,1,1,'system',NOW(),'system',NOW()),
(105,1,1,1,1,'system',NOW(),'system',NOW()),(105,2,1,1,1,'system',NOW(),'system',NOW()),(105,3,1,1,1,'system',NOW(),'system',NOW()),(105,4,1,1,1,'system',NOW(),'system',NOW()),(105,5,1,1,1,'system',NOW(),'system',NOW()),
(106,1,1,1,1,'system',NOW(),'system',NOW()),(106,2,1,1,1,'system',NOW(),'system',NOW()),(106,3,1,1,1,'system',NOW(),'system',NOW()),(106,4,1,1,1,'system',NOW(),'system',NOW()),(106,5,1,1,1,'system',NOW(),'system',NOW()),
(107,1,1,1,1,'system',NOW(),'system',NOW()),(107,2,1,1,1,'system',NOW(),'system',NOW()),(107,3,1,1,1,'system',NOW(),'system',NOW()),(107,4,1,1,1,'system',NOW(),'system',NOW()),(107,5,1,1,1,'system',NOW(),'system',NOW()),
(108,1,1,1,1,'system',NOW(),'system',NOW()),(108,2,1,1,1,'system',NOW(),'system',NOW()),(108,3,1,1,1,'system',NOW(),'system',NOW()),(108,4,1,1,1,'system',NOW(),'system',NOW()),(108,5,1,1,1,'system',NOW(),'system',NOW()),
(109,1,1,1,1,'system',NOW(),'system',NOW()),(109,2,1,1,1,'system',NOW(),'system',NOW()),(109,3,1,1,1,'system',NOW(),'system',NOW()),(109,4,1,1,1,'system',NOW(),'system',NOW()),(109,5,1,1,1,'system',NOW(),'system',NOW()),
(110,1,1,1,1,'system',NOW(),'system',NOW()),(110,2,1,1,1,'system',NOW(),'system',NOW()),(110,3,1,1,1,'system',NOW(),'system',NOW()),(110,4,1,1,1,'system',NOW(),'system',NOW()),(110,5,1,1,1,'system',NOW(),'system',NOW())
;

#数据初始化-分类属性值关系表
truncate table c_category_prop_value;
insert into c_category_prop_value(category_id,prop_value_id,create_person,create_date)
values
(101,1,'system',NOW()),(101,2,'system',NOW()),(101,3,'system',NOW()),(101,4,'system',NOW()),(101,5,'system',NOW()),(101,6,'system',NOW()),(101,7,'system',NOW()),(101,8,'system',NOW()),(101,9,'system',NOW()),(101,10,'system',NOW()),(101,11,'system',NOW()),(101,12,'system',NOW()),(101,13,'system',NOW()),(101,14,'system',NOW()),(101,15,'system',NOW()),
(102,1,'system',NOW()),(102,2,'system',NOW()),(102,3,'system',NOW()),(102,4,'system',NOW()),(102,5,'system',NOW()),(102,6,'system',NOW()),(102,7,'system',NOW()),(102,8,'system',NOW()),(102,9,'system',NOW()),(102,10,'system',NOW()),(102,11,'system',NOW()),(102,12,'system',NOW()),(102,13,'system',NOW()),(102,14,'system',NOW()),(102,15,'system',NOW()),
(103,1,'system',NOW()),(103,2,'system',NOW()),(103,3,'system',NOW()),(103,4,'system',NOW()),(103,5,'system',NOW()),(103,6,'system',NOW()),(103,7,'system',NOW()),(103,8,'system',NOW()),(103,9,'system',NOW()),(103,10,'system',NOW()),(103,11,'system',NOW()),(103,12,'system',NOW()),(103,13,'system',NOW()),(103,14,'system',NOW()),(103,15,'system',NOW()),
(104,1,'system',NOW()),(104,2,'system',NOW()),(104,3,'system',NOW()),(104,4,'system',NOW()),(104,5,'system',NOW()),(104,6,'system',NOW()),(104,7,'system',NOW()),(104,8,'system',NOW()),(104,9,'system',NOW()),(104,10,'system',NOW()),(104,11,'system',NOW()),(104,12,'system',NOW()),(104,13,'system',NOW()),(104,14,'system',NOW()),(104,15,'system',NOW()),
(105,1,'system',NOW()),(105,2,'system',NOW()),(105,3,'system',NOW()),(105,4,'system',NOW()),(105,5,'system',NOW()),(105,6,'system',NOW()),(105,7,'system',NOW()),(105,8,'system',NOW()),(105,9,'system',NOW()),(105,10,'system',NOW()),(105,11,'system',NOW()),(105,12,'system',NOW()),(105,13,'system',NOW()),(105,14,'system',NOW()),(105,15,'system',NOW()),
(106,1,'system',NOW()),(106,2,'system',NOW()),(106,3,'system',NOW()),(106,4,'system',NOW()),(106,5,'system',NOW()),(106,6,'system',NOW()),(106,7,'system',NOW()),(106,8,'system',NOW()),(106,9,'system',NOW()),(106,10,'system',NOW()),(106,11,'system',NOW()),(106,12,'system',NOW()),(106,13,'system',NOW()),(106,14,'system',NOW()),(106,15,'system',NOW()),
(107,1,'system',NOW()),(107,2,'system',NOW()),(107,3,'system',NOW()),(107,4,'system',NOW()),(107,5,'system',NOW()),(107,6,'system',NOW()),(107,7,'system',NOW()),(107,8,'system',NOW()),(107,9,'system',NOW()),(107,10,'system',NOW()),(107,11,'system',NOW()),(107,12,'system',NOW()),(107,13,'system',NOW()),(107,14,'system',NOW()),(107,15,'system',NOW()),
(108,1,'system',NOW()),(108,2,'system',NOW()),(108,3,'system',NOW()),(108,4,'system',NOW()),(108,5,'system',NOW()),(108,6,'system',NOW()),(108,7,'system',NOW()),(108,8,'system',NOW()),(108,9,'system',NOW()),(108,10,'system',NOW()),(108,11,'system',NOW()),(108,12,'system',NOW()),(108,13,'system',NOW()),(108,14,'system',NOW()),(108,15,'system',NOW()),
(109,1,'system',NOW()),(109,2,'system',NOW()),(109,3,'system',NOW()),(109,4,'system',NOW()),(109,5,'system',NOW()),(109,6,'system',NOW()),(109,7,'system',NOW()),(109,8,'system',NOW()),(109,9,'system',NOW()),(109,10,'system',NOW()),(109,11,'system',NOW()),(109,12,'system',NOW()),(109,13,'system',NOW()),(109,14,'system',NOW()),(109,15,'system',NOW()),
(110,1,'system',NOW()),(110,2,'system',NOW()),(110,3,'system',NOW()),(110,4,'system',NOW()),(110,5,'system',NOW()),(110,6,'system',NOW()),(110,7,'system',NOW()),(110,8,'system',NOW()),(110,9,'system',NOW()),(110,10,'system',NOW()),(110,11,'system',NOW()),(110,12,'system',NOW()),(110,13,'system',NOW()),(110,14,'system',NOW()),(110,15,'system',NOW())
;

#数据初始化-商品表
truncate table c_commodity;
insert into c_commodity(no,sno,style_no,name,brand_id,category_id,supplier_id,sizechart_id,color,pic_color,pic_ver,cost_price,sale_price,market_price,status,pic_flag,is_delete,create_person,create_date,update_person,update_date)
values
('99913497','BBL3PQF4DU1CM3','3PQF4CM3','BELLE/百丽啡色小牛皮3PQF4CM3秋季女单鞋',1,1,1,1,'咖啡色','99913497_c.jpg',1,100,200,300,3,1,0,'system',NOW(),'system',NOW()),
('99913498','BBL3PQF4DU1CM3','3PQF4CM3','BELLE/百丽黑色小牛皮/绵羊3PQF4CM3秋季女皮鞋',1,1,1,1,'黑色','99913498_c.jpg',1,100,200,300,3,1,0,'system',NOW(),'system',NOW()),
('99907021','BBL3V646DM8DD3','3V646DD3','BELLE/百丽冬季深兰羊绒女低靴-红色',1,1,1,1,'红色','99907021_c.jpg',1,120,220,320,3,1,0,'system',NOW(),'system',NOW()),
('99907022','BBL3V646DM8DD3','3V646DD3','BELLE/百丽冬季深兰羊绒女低靴-黑色',1,1,1,1,'黑色','99907022_c.jpg',1,120,220,320,3,1,0,'system',NOW(),'system',NOW()),
('99907023','BBL3V646DM8DD3','3V646DD3','BELLE/百丽冬季深兰羊绒女低靴-黄色',1,1,1,1,'黄色','99907023_c.jpg',1,120,220,320,3,1,0,'system',NOW(),'system',NOW()),
('99907024','BBL3V646DM8DD3','3V646DD3','BELLE/百丽冬季深兰羊绒女低靴-绿色',1,1,1,1,'绿色','99907024_c.jpg',1,120,220,320,3,1,0,'system',NOW(),'system',NOW()),
('99907025','BBL3V646DM8DD3','3V646DD3','BELLE/百丽冬季深兰羊绒女低靴-咖啡色',1,1,1,1,'咖啡色','99907025_c.jpg',1,120,220,320,3,1,0,'system',NOW(),'system',NOW()),
('99916866','BBL3HXA8DU1DG3','3HXA8DG3','BELLE/百丽冬季黑色油蜡牛皮女皮靴',1,1,1,1,'黑色','99916866_c.jpg',1,220,450,800,3,1,0,'system',NOW(),'system',NOW()),
('99916867','BBL3HXA8DU1DG3','3HXA8DG3','BELLE/百丽冬季xx色油蜡牛皮女皮靴',1,1,1,1,'xx色','99916867_c.jpg',1,220,450,800,3,1,0,'system',NOW(),'system',NOW()),
('99916868','BBL3HXA8DU1DG3','3HXA8DG3','BELLE/百丽冬季yy色油蜡牛皮女皮靴',1,1,1,1,'yy色','99916868_c.jpg',1,220,450,800,3,1,0,'system',NOW(),'system',NOW())
;

#数据初始化-货品表
truncate table c_product;
insert into c_product(no,commodity_no,barcode,size,is_delete,create_person,create_date,update_person,update_date)
values
('99913497001','99913497','SAB99913497001','X',0,'system',NOW(),'system',NOW()),
('99913497002','99913497','SAB99913497002','XL',0,'system',NOW(),'system',NOW()),
('99913498001','99913498','SAB99913498001','X',0,'system',NOW(),'system',NOW()),
('99913498002','99913498','SAB99913498002','S',0,'system',NOW(),'system',NOW()),
('99913498003','99913498','SAB99913498003','XL',0,'system',NOW(),'system',NOW()),
('99913498004','99913498','SAB99913498004','XXL',0,'system',NOW(),'system',NOW()),
('99913498005','99913498','SAB99913498005','M',0,'system',NOW(),'system',NOW()),
('99907021001','99907021','SAB99907021001','X',0,'system',NOW(),'system',NOW()),
('99907021002','99907021','SAB99907021002','S',0,'system',NOW(),'system',NOW()),
('99907021003','99907021','SAB99907021003','XL',0,'system',NOW(),'system',NOW()),
('99907022001','99907022','SAB99907022001','X',0,'system',NOW(),'system',NOW()),
('99907022002','99907022','SAB99907022002','S',0,'system',NOW(),'system',NOW()),
('99907022003','99907022','SAB99907022003','XL',0,'system',NOW(),'system',NOW()),
('99907022004','99907022','SAB99907022004','XXL',0,'system',NOW(),'system',NOW()),
('99907023001','99907023','SAB99907023001','X',0,'system',NOW(),'system',NOW()),
('99907023002','99907023','SAB99907023002','S',0,'system',NOW(),'system',NOW()),
('99907024001','99907024','SAB99907024001','X',0,'system',NOW(),'system',NOW()),
('99907024002','99907024','SAB99907024002','S',0,'system',NOW(),'system',NOW()),
('99907024003','99907024','SAB99907024003','XL',0,'system',NOW(),'system',NOW()),
('99907024004','99907024','SAB99907024004','XXL',0,'system',NOW(),'system',NOW()),
('99907024005','99907024','SAB99907024005','M',0,'system',NOW(),'system',NOW()),
('99907025001','99907025','SAB99907025001','X',0,'system',NOW(),'system',NOW()),
('99907025002','99907025','SAB99907025002','S',0,'system',NOW(),'system',NOW()),
('99916866001','99916866','SAB99916866001','X',0,'system',NOW(),'system',NOW()),
('99916866002','99916866','SAB99916866002','S',0,'system',NOW(),'system',NOW()),
('99916867001','99916867','SAB99916867001','X',0,'system',NOW(),'system',NOW()),
('99916867002','99916867','SAB99916867002','S',0,'system',NOW(),'system',NOW()),
('99916867003','99916867','SAB99916867003','XL',0,'system',NOW(),'system',NOW()),
('99916868001','99916868','SAB99916868001','X',0,'system',NOW(),'system',NOW()),
('99916868002','99916868','SAB99916868002','S',0,'system',NOW(),'system',NOW()),
('99916868003','99916868','SAB99916868003','XL',0,'system',NOW(),'system',NOW()),
('99916868004','99916868','SAB99916868004','XXL',0,'system',NOW(),'system',NOW()),
('99916868005','99916868','SAB99916868005','M',0,'system',NOW(),'system',NOW()),
('99916868006','99916868','SAB99916868XX5','微号',0,'system',NOW(),'system',NOW()),
('99916868007','99916868','SAB99916868YY5','大号',0,'system',NOW(),'system',NOW())
;

#数据初始化-商品图片表
truncate table c_commodity_picture;
insert into c_commodity_picture(name,commodity_no,type,create_person,create_date,update_person,update_date)
values
('99913497_01_b.jpg','99913497','b','system',NOW(),'system',NOW()),
('99913497_01_o.jpg','99913497','o','system',NOW(),'system',NOW()),('99913497_02_o.jpg','99913497','o','system',NOW(),'system',NOW()),('99913497_03_o.jpg','99913497','o','system',NOW(),'system',NOW()),
('99913497_01_l.jpg','99913497','l','system',NOW(),'system',NOW()),('99913497_02_l.jpg','99913497','l','system',NOW(),'system',NOW()),('99913497_03_l.jpg','99913497','l','system',NOW(),'system',NOW()),
('99913497_01_m.jpg','99913497','m','system',NOW(),'system',NOW()),('99913497_02_m.jpg','99913497','m','system',NOW(),'system',NOW()),('99913497_03_m.jpg','99913497','m','system',NOW(),'system',NOW()),
('99913497_01_s.jpg','99913497','s','system',NOW(),'system',NOW()),('99913497_02_s.jpg','99913497','s','system',NOW(),'system',NOW()),('99913497_03_s.jpg','99913497','s','system',NOW(),'system',NOW()),
('99913497_01_t.jpg','99913497','t','system',NOW(),'system',NOW()),('99913497_02_t.jpg','99913497','t','system',NOW(),'system',NOW()),('99913497_03_t.jpg','99913497','t','system',NOW(),'system',NOW()),
('99913498_01_b.jpg','99913498','b','system',NOW(),'system',NOW()),
('99913498_01_o.jpg','99913498','o','system',NOW(),'system',NOW()),('99913498_02_o.jpg','99913498','o','system',NOW(),'system',NOW()),('99913498_03_o.jpg','99913498','o','system',NOW(),'system',NOW()),
('99913498_01_l.jpg','99913498','l','system',NOW(),'system',NOW()),('99913498_02_l.jpg','99913498','l','system',NOW(),'system',NOW()),('99913498_03_l.jpg','99913498','l','system',NOW(),'system',NOW()),
('99913498_01_m.jpg','99913498','m','system',NOW(),'system',NOW()),('99913498_02_m.jpg','99913498','m','system',NOW(),'system',NOW()),('99913498_03_m.jpg','99913498','m','system',NOW(),'system',NOW()),
('99913498_01_s.jpg','99913498','s','system',NOW(),'system',NOW()),('99913498_02_s.jpg','99913498','s','system',NOW(),'system',NOW()),('99913498_03_s.jpg','99913498','s','system',NOW(),'system',NOW()),
('99913498_01_t.jpg','99913498','t','system',NOW(),'system',NOW()),('99913498_02_t.jpg','99913498','t','system',NOW(),'system',NOW()),('99913498_03_t.jpg','99913498','t','system',NOW(),'system',NOW()),
('99907021_01_b.jpg','99907021','b','system',NOW(),'system',NOW()),
('99907021_01_o.jpg','99907021','o','system',NOW(),'system',NOW()),('99907021_02_o.jpg','99907021','o','system',NOW(),'system',NOW()),('99907021_03_o.jpg','99907021','o','system',NOW(),'system',NOW()),
('99907021_01_l.jpg','99907021','l','system',NOW(),'system',NOW()),('99907021_02_l.jpg','99907021','l','system',NOW(),'system',NOW()),('99907021_03_l.jpg','99907021','l','system',NOW(),'system',NOW()),
('99907021_01_m.jpg','99907021','m','system',NOW(),'system',NOW()),('99907021_02_m.jpg','99907021','m','system',NOW(),'system',NOW()),('99907021_03_m.jpg','99907021','m','system',NOW(),'system',NOW()),
('99907021_01_s.jpg','99907021','s','system',NOW(),'system',NOW()),('99907021_02_s.jpg','99907021','s','system',NOW(),'system',NOW()),('99907021_03_s.jpg','99907021','s','system',NOW(),'system',NOW()),
('99907021_01_t.jpg','99907021','t','system',NOW(),'system',NOW()),('99907021_02_t.jpg','99907021','t','system',NOW(),'system',NOW()),('99907021_03_t.jpg','99907021','t','system',NOW(),'system',NOW()),
('99907022_01_b.jpg','99907022','b','system',NOW(),'system',NOW()),
('99907022_01_o.jpg','99907022','o','system',NOW(),'system',NOW()),('99907022_02_o.jpg','99907022','o','system',NOW(),'system',NOW()),('99907022_03_o.jpg','99907022','o','system',NOW(),'system',NOW()),
('99907022_01_l.jpg','99907022','l','system',NOW(),'system',NOW()),('99907022_02_l.jpg','99907022','l','system',NOW(),'system',NOW()),('99907022_03_l.jpg','99907022','l','system',NOW(),'system',NOW()),
('99907022_01_m.jpg','99907022','m','system',NOW(),'system',NOW()),('99907022_02_m.jpg','99907022','m','system',NOW(),'system',NOW()),('99907022_03_m.jpg','99907022','m','system',NOW(),'system',NOW()),
('99907022_01_s.jpg','99907022','s','system',NOW(),'system',NOW()),('99907022_02_s.jpg','99907022','s','system',NOW(),'system',NOW()),('99907022_03_s.jpg','99907022','s','system',NOW(),'system',NOW()),
('99907022_01_t.jpg','99907022','t','system',NOW(),'system',NOW()),('99907022_02_t.jpg','99907022','t','system',NOW(),'system',NOW()),('99907022_03_t.jpg','99907022','t','system',NOW(),'system',NOW()),
('99907023_01_b.jpg','99907023','b','system',NOW(),'system',NOW()),
('99907023_01_o.jpg','99907023','o','system',NOW(),'system',NOW()),('99907023_02_o.jpg','99907023','o','system',NOW(),'system',NOW()),('99907023_03_o.jpg','99907023','o','system',NOW(),'system',NOW()),
('99907023_01_l.jpg','99907023','l','system',NOW(),'system',NOW()),('99907023_02_l.jpg','99907023','l','system',NOW(),'system',NOW()),('99907023_03_l.jpg','99907023','l','system',NOW(),'system',NOW()),
('99907023_01_m.jpg','99907023','m','system',NOW(),'system',NOW()),('99907023_02_m.jpg','99907023','m','system',NOW(),'system',NOW()),('99907023_03_m.jpg','99907023','m','system',NOW(),'system',NOW()),
('99907023_01_s.jpg','99907023','s','system',NOW(),'system',NOW()),('99907023_02_s.jpg','99907023','s','system',NOW(),'system',NOW()),('99907023_03_s.jpg','99907023','s','system',NOW(),'system',NOW()),
('99907023_01_t.jpg','99907023','t','system',NOW(),'system',NOW()),('99907023_02_t.jpg','99907023','t','system',NOW(),'system',NOW()),('99907023_03_t.jpg','99907023','t','system',NOW(),'system',NOW()),
('99907024_01_b.jpg','99907024','b','system',NOW(),'system',NOW()),
('99907024_01_o.jpg','99907024','o','system',NOW(),'system',NOW()),('99907024_02_o.jpg','99907024','o','system',NOW(),'system',NOW()),('99907024_03_o.jpg','99907024','o','system',NOW(),'system',NOW()),
('99907024_01_l.jpg','99907024','l','system',NOW(),'system',NOW()),('99907024_02_l.jpg','99907024','l','system',NOW(),'system',NOW()),('99907024_03_l.jpg','99907024','l','system',NOW(),'system',NOW()),
('99907024_01_m.jpg','99907024','m','system',NOW(),'system',NOW()),('99907024_02_m.jpg','99907024','m','system',NOW(),'system',NOW()),('99907024_03_m.jpg','99907024','m','system',NOW(),'system',NOW()),
('99907024_01_s.jpg','99907024','s','system',NOW(),'system',NOW()),('99907024_02_s.jpg','99907024','s','system',NOW(),'system',NOW()),('99907024_03_s.jpg','99907024','s','system',NOW(),'system',NOW()),
('99907024_01_t.jpg','99907024','t','system',NOW(),'system',NOW()),('99907024_02_t.jpg','99907024','t','system',NOW(),'system',NOW()),('99907024_03_t.jpg','99907024','t','system',NOW(),'system',NOW()),
('99907025_01_b.jpg','99907025','b','system',NOW(),'system',NOW()),
('99907025_01_o.jpg','99907025','o','system',NOW(),'system',NOW()),('99907025_02_o.jpg','99907025','o','system',NOW(),'system',NOW()),('99907025_03_o.jpg','99907025','o','system',NOW(),'system',NOW()),
('99907025_01_l.jpg','99907025','l','system',NOW(),'system',NOW()),('99907025_02_l.jpg','99907025','l','system',NOW(),'system',NOW()),('99907025_03_l.jpg','99907025','l','system',NOW(),'system',NOW()),
('99907025_01_m.jpg','99907025','m','system',NOW(),'system',NOW()),('99907025_02_m.jpg','99907025','m','system',NOW(),'system',NOW()),('99907025_03_m.jpg','99907025','m','system',NOW(),'system',NOW()),
('99907025_01_s.jpg','99907025','s','system',NOW(),'system',NOW()),('99907025_02_s.jpg','99907025','s','system',NOW(),'system',NOW()),('99907025_03_s.jpg','99907025','s','system',NOW(),'system',NOW()),
('99907025_01_t.jpg','99907025','t','system',NOW(),'system',NOW()),('99907025_02_t.jpg','99907025','t','system',NOW(),'system',NOW()),('99907025_03_t.jpg','99907025','t','system',NOW(),'system',NOW()),
('99916866_01_b.jpg','99916866','b','system',NOW(),'system',NOW()),
('99916866_01_o.jpg','99916866','o','system',NOW(),'system',NOW()),('99916866_02_o.jpg','99916866','o','system',NOW(),'system',NOW()),('99916866_03_o.jpg','99916866','o','system',NOW(),'system',NOW()),
('99916866_01_l.jpg','99916866','l','system',NOW(),'system',NOW()),('99916866_02_l.jpg','99916866','l','system',NOW(),'system',NOW()),('99916866_03_l.jpg','99916866','l','system',NOW(),'system',NOW()),
('99916866_01_m.jpg','99916866','m','system',NOW(),'system',NOW()),('99916866_02_m.jpg','99916866','m','system',NOW(),'system',NOW()),('99916866_03_m.jpg','99916866','m','system',NOW(),'system',NOW()),
('99916866_01_s.jpg','99916866','s','system',NOW(),'system',NOW()),('99916866_02_s.jpg','99916866','s','system',NOW(),'system',NOW()),('99916866_03_s.jpg','99916866','s','system',NOW(),'system',NOW()),
('99916866_01_t.jpg','99916866','t','system',NOW(),'system',NOW()),('99916866_02_t.jpg','99916866','t','system',NOW(),'system',NOW()),('99916866_03_t.jpg','99916866','t','system',NOW(),'system',NOW()),
('99916867_01_b.jpg','99916867','b','system',NOW(),'system',NOW()),
('99916867_01_o.jpg','99916867','o','system',NOW(),'system',NOW()),('99916867_02_o.jpg','99916867','o','system',NOW(),'system',NOW()),('99916867_03_o.jpg','99916867','o','system',NOW(),'system',NOW()),
('99916867_01_l.jpg','99916867','l','system',NOW(),'system',NOW()),('99916867_02_l.jpg','99916867','l','system',NOW(),'system',NOW()),('99916867_03_l.jpg','99916867','l','system',NOW(),'system',NOW()),
('99916867_01_m.jpg','99916867','m','system',NOW(),'system',NOW()),('99916867_02_m.jpg','99916867','m','system',NOW(),'system',NOW()),('99916867_03_m.jpg','99916867','m','system',NOW(),'system',NOW()),
('99916867_01_s.jpg','99916867','s','system',NOW(),'system',NOW()),('99916867_02_s.jpg','99916867','s','system',NOW(),'system',NOW()),('99916867_03_s.jpg','99916867','s','system',NOW(),'system',NOW()),
('99916867_01_t.jpg','99916867','t','system',NOW(),'system',NOW()),('99916867_02_t.jpg','99916867','t','system',NOW(),'system',NOW()),('99916867_03_t.jpg','99916867','t','system',NOW(),'system',NOW()),
('99916868_01_b.jpg','99916868','b','system',NOW(),'system',NOW()),
('99916868_01_o.jpg','99916868','o','system',NOW(),'system',NOW()),('99916868_02_o.jpg','99916868','o','system',NOW(),'system',NOW()),('99916868_03_o.jpg','99916868','o','system',NOW(),'system',NOW()),
('99916868_01_l.jpg','99916868','l','system',NOW(),'system',NOW()),('99916868_02_l.jpg','99916868','l','system',NOW(),'system',NOW()),('99916868_03_l.jpg','99916868','l','system',NOW(),'system',NOW()),
('99916868_01_m.jpg','99916868','m','system',NOW(),'system',NOW()),('99916868_02_m.jpg','99916868','m','system',NOW(),'system',NOW()),('99916868_03_m.jpg','99916868','m','system',NOW(),'system',NOW()),
('99916868_01_s.jpg','99916868','s','system',NOW(),'system',NOW()),('99916868_02_s.jpg','99916868','s','system',NOW(),'system',NOW()),('99916868_03_s.jpg','99916868','s','system',NOW(),'system',NOW()),
('99916868_01_t.jpg','99916868','t','system',NOW(),'system',NOW()),('99916868_02_t.jpg','99916868','t','system',NOW(),'system',NOW()),('99916868_03_t.jpg','99916868','t','system',NOW(),'system',NOW())
;

#数据初始化-商品属性表
truncate table c_commodity_prop;
insert into c_commodity_prop(commodity_no,prop_value_id,create_person,create_date,update_person,update_date)
values
('99913497',1,'system',NOW(),'system',NOW()),('99913497',4,'system',NOW(),'system',NOW()),('99913497',6,'system',NOW(),'system',NOW()),('99913497',1,'system',NOW(),'system',NOW()),('99913497',12,'system',NOW(),'system',NOW()),
('99913498',1,'system',NOW(),'system',NOW()),('99913498',4,'system',NOW(),'system',NOW()),('99913498',6,'system',NOW(),'system',NOW()),('99913498',1,'system',NOW(),'system',NOW()),('99913498',12,'system',NOW(),'system',NOW()),
('99907021',1,'system',NOW(),'system',NOW()),('99907021',4,'system',NOW(),'system',NOW()),('99907021',6,'system',NOW(),'system',NOW()),('99907021',1,'system',NOW(),'system',NOW()),('99907021',12,'system',NOW(),'system',NOW()),
('99907022',1,'system',NOW(),'system',NOW()),('99907022',4,'system',NOW(),'system',NOW()),('99907022',6,'system',NOW(),'system',NOW()),('99907022',1,'system',NOW(),'system',NOW()),('99907022',12,'system',NOW(),'system',NOW()),
('99907023',1,'system',NOW(),'system',NOW()),('99907023',4,'system',NOW(),'system',NOW()),('99907023',6,'system',NOW(),'system',NOW()),('99907023',1,'system',NOW(),'system',NOW()),('99907023',12,'system',NOW(),'system',NOW()),
('99907024',1,'system',NOW(),'system',NOW()),('99907024',4,'system',NOW(),'system',NOW()),('99907024',6,'system',NOW(),'system',NOW()),('99907024',1,'system',NOW(),'system',NOW()),('99907024',12,'system',NOW(),'system',NOW()),
('99907025',1,'system',NOW(),'system',NOW()),('99907025',4,'system',NOW(),'system',NOW()),('99907025',6,'system',NOW(),'system',NOW()),('99907025',1,'system',NOW(),'system',NOW()),('99907025',12,'system',NOW(),'system',NOW()),
('99916866',1,'system',NOW(),'system',NOW()),('99916866',4,'system',NOW(),'system',NOW()),('99916866',6,'system',NOW(),'system',NOW()),('99916866',1,'system',NOW(),'system',NOW()),('99916866',12,'system',NOW(),'system',NOW()),
('99916867',1,'system',NOW(),'system',NOW()),('99916867',4,'system',NOW(),'system',NOW()),('99916867',6,'system',NOW(),'system',NOW()),('99916867',1,'system',NOW(),'system',NOW()),('99916867',12,'system',NOW(),'system',NOW()),
('99916868',1,'system',NOW(),'system',NOW()),('99916868',4,'system',NOW(),'system',NOW()),('99916868',6,'system',NOW(),'system',NOW()),('99916868',1,'system',NOW(),'system',NOW()),('99916868',12,'system',NOW(),'system',NOW())
;

#数据初始化-尺码对照表
truncate table c_sizechart;
insert into c_sizechart(id,title,content,remark,type,is_delete,create_person,create_date,update_person,update_date)
values
(1,'女鞋尺码表','法国码,34,35,36;国标码,220,225,230','这里是温馨提示',1,0,'system',NOW(),'system',NOW())
;