insert into o2o.sys_config(`key`, `value`, `status`, `remark`)
values ('LOGIN_CAPTCHA_THRESHOLD_LIMIT', '3', 1, '登录验证码阈值，大于等于0，等于0时，表示需要输入登录验证码');


insert into o2o.sys_role (role_name, dept_id, domain_type, auto_created, role_type, create_time)
values ('店长', 1, 4, 0, 'ROOT_STORE_MANAGER', now()),
       ('副店长', 1, 4, 0, 'ROOT_ASSISTANT_STORE_MANAGER', now()),
       ('高级店员', 1, 4, 0, 'ROOT_SENIOR_STORE_CLERK', now()),
       ('中级店员', 1, 4, 0, 'ROOT_INTERMEDIATE_STORE_CLERK', now()),
       ('初级店员', 1, 4, 0, 'ROOT_PRIMARY_STORE_CLERK', now());

-- 初始化角色菜单

-- 店长
insert into o2o.sys_role_menu (role_id, menu_id)
select (select sr.role_id
        from o2o.sys_role sr
        where sr.dept_id = 1
          and sr.role_type = 'ROOT_STORE_MANAGER'
          and sr.domain_type = 4
        limit 1),
       t.menu_id
from o2o.sys_role_menu t
         left join o2o.sys_role r on r.role_id = t.role_id
         left join o2o.o2o_erp_sys_organize o on o.dept_id = r.dept_id
where r.role_name = '门店店长'
  and o.organize_code = 'A1A15';

-- 副店长
insert into o2o.sys_role_menu (role_id, menu_id)
select (select sr.role_id
        from o2o.sys_role sr
        where sr.dept_id = 1
          and sr.role_type = 'ROOT_ASSISTANT_STORE_MANAGER'
          and sr.domain_type = 4
        limit 1),
       t.menu_id
from o2o.sys_role_menu t
         left join o2o.sys_role r on r.role_id = t.role_id
         left join o2o.o2o_erp_sys_organize o on o.dept_id = r.dept_id
where r.role_name = '门店高级店务员'
  and o.organize_code = 'A1A15';

-- 高级店员
insert into o2o.sys_role_menu (role_id, menu_id)
select (select sr.role_id
        from o2o.sys_role sr
        where sr.dept_id = 1
          and sr.role_type = 'ROOT_SENIOR_STORE_CLERK'
          and sr.domain_type = 4
        limit 1),
       t.menu_id
from o2o.sys_role_menu t
         left join o2o.sys_role r on r.role_id = t.role_id
         left join o2o.o2o_erp_sys_organize o on o.dept_id = r.dept_id
where r.role_name = '门店高级店务员'
  and o.organize_code = 'A1A15';


-- 中级店员
insert into o2o.sys_role_menu (role_id, menu_id)
select (select sr.role_id
        from o2o.sys_role sr
        where sr.dept_id = 1
          and sr.role_type = 'ROOT_INTERMEDIATE_STORE_CLERK'
          and sr.domain_type = 4
        limit 1),
       t.menu_id
from o2o.sys_role_menu t
         left join o2o.sys_role r on r.role_id = t.role_id
         left join o2o.o2o_erp_sys_organize o on o.dept_id = r.dept_id
where r.role_name = '门店店务员'
  and o.organize_code = 'A1A15';

-- 初级店员
insert into o2o.sys_role_menu (role_id, menu_id)
select (select sr.role_id
        from o2o.sys_role sr
        where sr.dept_id = 1
          and sr.role_type = 'ROOT_PRIMARY_STORE_CLERK'
          and sr.domain_type = 4
        limit 1),
       t.menu_id
from o2o.sys_role_menu t
         left join o2o.sys_role r on r.role_id = t.role_id
         left join o2o.o2o_erp_sys_organize o on o.dept_id = r.dept_id
where r.role_name = '门店店务员'
  and o.organize_code = 'A1A15';


-- 重置帐号角色

-- 门店超级管理员和门店店长角色，更换成店长
update o2o.sys_user_role sur left join o2o.sys_role r on r.role_id = sur.role_id
set sur.role_id = (select sr.role_id
                   from o2o.sys_role sr
                   where sr.dept_id = 1
                     and sr.role_name = '店长'
                     and sr.role_type = 'ROOT_STORE_MANAGER'
                   limit 1)
where r.dept_id != 1
  and r.role_name in ('门店超级管理员', '门店店长');


-- 门店高级店务员和门店品类主管角色，更换成高级店员
update o2o.sys_user_role sur left join o2o.sys_role r on r.role_id = sur.role_id
set sur.role_id = (select sr.role_id
                   from o2o.sys_role sr
                   where sr.dept_id = 1
                     and sr.role_name = '高级店员 '
                     and sr.role_type = 'ROOT_SENIOR_STORE_CLERK'
                   limit 1)
where r.dept_id != 1
  and r.role_name in ('门店高级店务员', '门店品类主管');

-- 门店高级店务员角色，更换成高级店员
update o2o.sys_user_role sur left join o2o.sys_role r on r.role_id = sur.role_id
set sur.role_id = (select sr.role_id
                   from o2o.sys_role sr
                   where sr.dept_id = 1
                     and sr.role_name = '中级店员 '
                     and sr.role_type = 'ROOT_INTERMEDIATE_STORE_CLERK'
                   limit 1)
where r.dept_id != 1
  and r.role_name in ('门店店务员');

-- 物流和测试人员角色，删除（更新）帐号角色关系
update o2o.sys_user_role sur left join o2o.sys_role r on r.role_id = sur.role_id
set sur.role_id = -sur.role_id
where r.dept_id != 1
  and r.role_name in ('物流', '测试人员');


-- 删除（更新）门店角色
update o2o.sys_role
set dept_id     = -dept_id,
    domain_type = -domain_type
where dept_id != 1;
