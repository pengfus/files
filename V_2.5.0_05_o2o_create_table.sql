use o2o;

create table sys_responsibility
(
    responsibility_id   bigint auto_increment comment '职能ID'
        primary key,
    responsibility_name varchar(20)                        not null comment '职能名称',
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


create table o2o_sale_split
(
    id            bigint(32) auto_increment comment 'id'
        primary key,
    organize_code varchar(255)  null comment '组织机构编码',
    order_type    int           null comment '订单类型 0自助购 1三公里 2到店提 3快递 4自助收银机 5人工收银机 6外卖订单 8批发销售订单',
    delivery_type int           null,
    channel_type  int           null,
    date          date          null comment '销售日',
    time_idx      int           null comment '1-48,00:00-00:30为1,23:30-00:00为48',
    start_time    time          null comment '销售开始时间(开始-结束：半小时)',
    end_time      time          null comment '销售结束时间',
    income        int default 0 null comment '营业额，单位分',
    refund        int default 0 null comment '退款，单位分',
    total         int default 0 null comment '合计,单位分',
    constraint organize_code_order_type_start_time_end_time
        unique (organize_code, order_type, start_time, end_time)
)
    comment '销售额，维度每半小时';

create index date_start_time_end_time
    on o2o_sale_split (date, start_time, end_time);

create index date_time_idx
    on o2o_sale_split (date, time_idx);

create index organize_code
    on o2o_sale_split (organize_code);
