use o2o;

alter table o2o.sys_user
    add column wechart_no varchar(100) comment '微信号' after mobile;

alter table o2o.sys_user
    add column quit_time datetime DEFAULT NULL comment '离职时间' after create_time;

alter table o2o.o2o_fran_store
    add column email varchar(100) comment '店铺邮箱' after sender_tel;


update o2o.o2o_fran_store fs ,o2o.o2o_erp_sys_organize o
set fs.sender_tel =o.mobile
WHERE fs.organize_code = organize_code;

insert into o2o.sys_config (`key`, `value`, `status`, `remark`)
values ('OPERATE_PLAN_PERIOD', 7, 1, '7,14,28');
insert into o2o.sys_config (`key`, `value`, `status`, `remark`)
values ('MATERIAL_APPLY_CFG', '{"stationeryLimit":2,"expressLimit":2,"applyStart":2,"applyEnd":4}', 1, '物料申请配置，勿删');
