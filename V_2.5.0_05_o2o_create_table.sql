use o2o;

create table sys_responsibility
(
    responsibility_id   bigint auto_increment comment '职能ID'
        primary key,
    respinsibility_name varchar(20)                        not null comment '职能名称',
    unique_flag         tinyint  default 0                 not null comment '是否唯一，1：是，0：否',
    del_flag            tinyint  default 0                 not null comment '删除标识，1：删除，0：有效',
    creator             bigint                             not null,
    create_time         datetime default CURRENT_TIMESTAMP not null,
    updator             bigint                             not null,
    update_time         datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '门店职能表';


create table sys_user_responsibility
(
    id                bigint auto_increment comment '主键ID'
        primary key,
    user_id           bigint            not null comment '员工ID',
    responsibility_id bigint            not null comment '职能ID',
    master_flag       tinyint default 1 not null comment '是否负责人，1：是，0否'
)
    comment '店员职能关系表';

