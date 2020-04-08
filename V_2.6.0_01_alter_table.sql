
alter table o2o.o2o_fran_store
    add column receive_able smallint default 1 not null comment '是否支持收货，1-是，2-否' after recent_open;

alter table o2o.o2o_fran_store
    add column receive_organize_code varchar(255) comment '代收店铺编号' after receive_able;

alter table o2o.o2o_erp_stock_inorder
    add column order_organize_code varchar(255) comment '订单归属店' after organize_code;

alter table o2o.o2o_erp_stock_inorder
    add column reverse_apply_id bigint comment '售后单ID' after arrive_time;