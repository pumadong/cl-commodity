cl-commodity
==================

商品管理系统


一、前置项目依赖

https://github.com/pumadong/cl-privilege

二、项目说明

关于商品中心，是一个核心系统，会和其他系统都有交集，比如：网站、订单、采购、仓储、配送...,所以独立出来，做一个单独的商品中心，有人负责，还是很有必要的。


三、mybatis-generator

ORM框架采用MyBatis，为了提高开发效率，先根据数据库表单结构自动生成Model和MyBatis相关类，生成命令如下：

java -jar mybatis-generator-core-1.3.1.jar -configfile config_commodity.xml -overwrite

生成时需要把mybatis-generator-core-1.3.1.jar、mysql-connector-java-5.1.24-bin.jar、config_privilege.xml放到一个目录下，生成的相关类和XML会放置到CreateResult文件夹下面。

jar下载地址：http://pan.baidu.com/s/1qW98L0C