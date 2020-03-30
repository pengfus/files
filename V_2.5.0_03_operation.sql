create database oao_operation;

use oao_operation;

create table plan_range
(
    id            int auto_increment comment 'id'
        primary key,
    organize_code varchar(20)                          null comment '组织机构编号',
    name          varchar(50)                          not null comment '名称',
    type          int        default 1                 not null comment '1上班 0休息 -1请假',
    time          varchar(50)                          null comment '时间段,按先后顺序',
    task_time     varchar(50)                          null comment '时间点',
    deleted       tinyint(1) default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                               not null,
    create_time   datetime   default CURRENT_TIMESTAMP not null,
    updator       bigint                               not null,
    update_time   datetime   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '班次管理';

create table plan_workforce
(
    id            int auto_increment comment 'id'
        primary key,
    organize_code varchar(20)                          not null comment '组织机构编号',
    user_id       int                                  null comment '用户id',
    uuid          varchar(32)                          null comment 'uuid',
    start_date    date                                 null comment '开始日期',
    end_date      date                                 null comment '结束日期',
    day           int                                  null comment '日期长度',
    range_list    text                                 null comment '格式:[rangeId1,rangeId2]',
    status        int        default 0                 null comment '状态：0草稿，1发布，-1过期',
    deleted       tinyint(1) default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                               not null,
    create_time   datetime   default CURRENT_TIMESTAMP not null,
    updator       bigint                               not null,
    update_time   datetime   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint organize_code_user_id_start_date
        unique (start_date, organize_code, user_id)
)
    comment '排班管理，周为维度';

create index start_date_end_date
    on plan_workforce (start_date, end_date);

create table plan_workforce_month
(
    id           int auto_increment comment 'id'
        primary key,
    workforce_id int                                not null comment '排班id',
    y_m          varchar(7)                         null comment '年-月',
    create_time  datetime default CURRENT_TIMESTAMP not null,
    update_time  datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '周数，为了索引';

create index y_m
    on plan_workforce_month (y_m);

create table plan_workforce_sale
(
    id            int auto_increment comment 'id'
        primary key,
    organize_code varchar(20)                          not null comment '组织机构编号',
    user_id       int(1)                               null comment '用户id',
    y_m           varchar(7)                           null comment '年-月',
    start_date    date                                 null comment '开始日期',
    end_date      date                                 null comment '结束日期',
    date_length   int                                  null comment '日期长度，免得每次计算，此处不需要长度比较',
    sale_list     text                                 null comment '格式:[rangeId1_sale1,rangeId2_sale2],未排班 /_0',
    sale_amount   int                                  null comment '当月销售额，单位分',
    deleted       tinyint(1) default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                               not null,
    create_time   datetime   default CURRENT_TIMESTAMP not null,
    updator       bigint                               not null,
    update_time   datetime   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint user_id_y_m
        unique (user_id, y_m)
)
    comment '排班销售报表(排班当天变更,需要重新计算当天销售金额)';

create index organize_code
    on plan_workforce_sale (organize_code);

create index start_date_end_date
    on plan_workforce_sale (start_date, end_date);

create table store_material
(
    material_id   int auto_increment comment '物料ID'
        primary key,
    material_code varchar(20)                        not null comment '物料编号',
    material_type smallint                           not null comment '物料分类，1：办公用品，2：物流耗材',
    material_name varchar(60)                        not null comment '物料名称',
    box_size      varchar(60)                        null comment '箱型',
    specification varchar(60)                        not null comment '规格',
    instruction   varchar(200)                       null comment '使用说明',
    unit          varchar(30)                        not null comment '单位',
    unit_price    int                                not null comment '单价（元），存分',
    deleted       tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                             not null,
    create_time   datetime default CURRENT_TIMESTAMP not null,
    updator       bigint                             not null,
    update_time   datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint un_idx_material_code
        unique (material_code),
    constraint un_idx_material_name
        unique (material_name)
)
    comment '门店物料表';

create table store_material_apply
(
    apply_id        int auto_increment comment '主键ID'
        primary key,
    organize_code   varchar(20)                        not null comment '组织机构编号',
    apply_date      varchar(10)                        not null comment '申请年月',
    material_type   smallint                           not null comment '物料分类，1：办公用品，2：物流耗材',
    apply_status    smallint default 0                 not null comment '申请状态，0：未申请，1：申请中，2：已结束',
    apply_time      datetime                           not null comment '申请时间',
    total_amount    int                                not null comment '总额，分',
    receive_address varchar(200)                       null comment '收货地址',
    receive_name    varchar(20)                        null comment '收货人',
    receive_phone   varchar(20)                        null comment '联系方式',
    deleted         tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator         bigint                             not null,
    create_time     datetime default CURRENT_TIMESTAMP not null,
    updator         bigint                             not null,
    update_time     datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint un_idx_apply_date
        unique (apply_date, organize_code, material_type)
)
    comment '物料申请表';

create table store_material_apply_item
(
    item_id       int auto_increment comment '主键'
        primary key,
    apply_id      int                                not null comment '申请ID',
    material_id   int                                not null comment '物料ID',
    material_code varchar(20)                        not null comment '物料编号',
    material_type smallint                           not null comment '物料类型，1：办公用品，2：物流耗材',
    material_name varchar(60)                        not null comment '物料名称',
    box_size      varchar(60)                        null comment '箱型',
    specification varchar(60)                        not null comment '规格',
    instruction   varchar(200)                       null comment '使用说明',
    unit          varchar(30)                        not null comment '单位',
    unit_price    int                                not null comment '单价（元），存分',
    apply_num     int      default 0                 not null comment '申请数量',
    amount        int      default 0                 not null comment '金额',
    deleted       tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                             not null,
    create_time   datetime default CURRENT_TIMESTAMP not null,
    updator       bigint                             not null,
    update_time   datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint un_idx_apply_id
        unique (apply_id, material_id)
)
    comment '物料申请明细';

create table store_task
(
    task_id            int auto_increment comment '任务ID'
        primary key,
    task_definition_id int                                not null comment '任务定义ID',
    organize_code      varchar(20)                        not null comment '组织机构编号',
    task_status        smallint default 2                 not null comment '任务状态，1：已完成，2：未完成',
    task_start         datetime                           not null comment '任务开始时间',
    task_end           datetime                           not null comment '任务结束时间',
    finish_time        datetime                           null comment '完成时间',
    deleted            tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator            bigint                             not null,
    create_time        datetime default CURRENT_TIMESTAMP not null,
    updator            bigint                             not null,
    update_time        datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint un_idx_definition_create_organize
        unique (task_definition_id, task_start, organize_code)
)
    comment '门店任务表';

create index idx_organize_code
    on store_task (organize_code);

create table store_task_definition
(
    task_definition_id     int auto_increment comment '任务定义ID'
        primary key,
    group_id               int      default 0                 not null comment '所属任务组',
    task_definition_name   varchar(60)                        not null comment '任务名称',
    task_definition_status smallint default 1                 not null comment '任务状态，1：草稿，2：已开启，3：进行中，4，已结束',
    repeatable             tinyint                            not null comment '是否重复任务，1：是，0：否',
    task_start             datetime                           null comment '任务开始时间',
    task_end               datetime                           null comment '任务结束时间',
    task_cycle             smallint                           null comment '任务周期，每日，每周，每月',
    collect_method         smallint                           not null comment '收集方式，1：内部收集，2：外链收集',
    single_collect         tinyint                            null comment '收集次数，1：单次，0：多次',
    task_instructions      varchar(200)                       null comment '任务说明',
    deleted                tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator                bigint                             not null,
    create_time            datetime default CURRENT_TIMESTAMP not null,
    updator                bigint                             not null,
    update_time            datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '任务定义';

create table store_task_definition_field
(
    field_id           int auto_increment comment '主键ID'
        primary key,
    task_definition_id int                                not null comment '任务定义ID',
    field_name         varchar(60)                        not null comment '字段名',
    input_type         smallint default 1                 not null comment '输入类型，1：单行，2：多行',
    deleted            tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator            bigint                             not null,
    create_time        datetime default CURRENT_TIMESTAMP not null,
    updator            bigint                             not null,
    update_time        datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '内部收集内容';

create index idx_task_definition_id
    on store_task_definition_field (task_definition_id);

create table store_task_definition_url
(
    url_id             int auto_increment comment '外链ID'
        primary key,
    task_definition_id int                                not null comment '任务定义ID',
    file_name          varchar(30)                        not null comment '文件名称',
    url                varchar(250)                       not null comment '文件链接地址',
    deleted            tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator            bigint                             not null,
    create_time        datetime default CURRENT_TIMESTAMP not null,
    updator            bigint                             not null,
    update_time        datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '任务收集外链地址列表';

create index idx_task_definition_id
    on store_task_definition_url (task_definition_id);

create table store_task_detail
(
    detail_id     int auto_increment comment '明细ID'
        primary key,
    task_id       int                                not null comment '任务ID',
    field_id      int                                not null comment '收集字段ID',
    field_name    varchar(60)                        not null comment '字段名',
    collect_value varchar(500)                       not null comment '收集值',
    collect_time  varchar(20)                        not null comment '收集时间，格式：yyyy-MM-dd HH:mm:ss',
    deleted       tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator       bigint                             not null,
    create_time   datetime default CURRENT_TIMESTAMP not null,
    updator       bigint                             not null,
    update_time   datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint un_idx_task_field_collect_time
        unique (task_id, field_id, collect_time)
)
    comment '任务执行明细（竖表）';

create table store_task_group
(
    group_id    int auto_increment comment '任务组ID'
        primary key,
    group_name  varchar(60)                        not null comment '任务组名称',
    deleted     tinyint  default 0                 not null comment '删除标识，1：删除，0：未删',
    creator     bigint                             not null,
    create_time datetime default CURRENT_TIMESTAMP not null,
    updator     bigint                             not null,
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    comment '任务组';

INSERT INTO `plan_range` (`id`, `organize_code`, `name`, `type`, `time`, `task_time`, `deleted`, `creator`,
                          `create_time`, `updator`, `update_time`)
VALUES (1, NULL, 'OFF班', 0, '休息', '', 0, 1, '2020-03-16 13:59:12', 35, '2020-03-21 11:38:21'),
       (2, NULL, 'E班', -1, '请假', '', 0, 1, '2020-03-16 13:58:55', 1, '2020-03-21 11:38:24');