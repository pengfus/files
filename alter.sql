alter table o2o.sys_user
    add column secondary_certification tinyint default 0 not null comment '二次验证，0:关闭，1:开启' after region_flag;

alter table o2o.sys_role
    add column secondary_certification tinyint default 0 not null comment '二次验证，0:关闭，1:开启' after role_type;

alter table o2o.sys_user
    add column secondary_certification_code varchar(100) null comment '二次验证密钥' after secondary_certification;

alter table o2o.sys_user
    add column secondary_certification_img varchar(500) null comment '二次验证密钥二维码地址' after secondary_certification_code;

alter table o2o.sys_user_token
    add column secondary_status tinyint default 0 comment '二次验证状态，0:未验证，1:已验证';


create table sys_user_device
(
   id                   bigint not null auto_increment comment '主键ID',
   device_serial        varchar(60) not null comment '设备号',
   user_id              bigint not null comment '用户ID',
   create_time          datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   del_flag             tinyint not null default 0 comment '删除标志',
   primary key (id)
);

alter table sys_user_device comment '用户登录设备';


create unique index u_idx_device_serial on sys_user_device
(
   device_serial
);

