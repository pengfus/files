
alter table o2o.sys_user
    add column wechart_no varchar(100) comment '微信号' after mobile;

alter table o2o.o2o_fran_store
    add column email varchar(100) comment '店铺邮箱' after sender_tel;