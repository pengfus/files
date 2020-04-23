
alter table o2o.o2o_fran_store
    add column receive_able smallint default 1 not null comment '是否支持收货，1-是，2-否' after recent_open;

alter table o2o.o2o_fran_store
    add column receive_organize_code varchar(255) comment '代收店铺编号' after receive_able;

alter table o2o.o2o_erp_stock_inorder
    add column order_organize_code varchar(255) comment '订单归属店' after organize_code;

alter table o2o.o2o_erp_stock_inorder
    add column reverse_apply_id bigint comment '售后单ID' after arrive_time;

alter table o2o.o2o_erp_stock_inorder
    add column sign_status smallint comment '是否完成签收，1-是，2-否' after reverse_apply_id;

alter table o2o.o2o_erp_stock_inorder
    add column app_order_code varchar(255) comment '订单编号' after sign_status;


insert into o2o.o2o_erp_config_param (code, name, value, create_time, update_time)
values ('AFTER_SALE_SEND_RECEIPT_RESULT_URL', '售后中心-发送收货结果接口（确认收货）', 'http://aftersale.aomygod.api/aftersale/reverse/signShip', now(), now());

