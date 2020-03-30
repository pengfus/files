

use o2o;

update o2o.sys_menu
set icon = 'fa fa-table'
where name = '营运管理'
  and parent_id = 0;

insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (818, 775, '完成任务', null, 'operation:tasks:status:patch', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (817, 772, '导出任务完成情况', null, 'operation:task:definitions:details:groupByTaskIdCollectTime:excel,operation:task:groups:details:groupByTaskIdCollectTime:excel', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (816, 775, '删除收集数据', null, 'operation:tasks:details:delete', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (815, 775, '修改收集数据', null, 'operation:tasks:details:put', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (814, 775, '提交', null, 'operation:tasks:details:post', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (813, 775, '查看详情', null, 'operation:tasks:details:groupByCreateTime,operation:task:definitions:get,operation:tasks:details:get', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (812, 772, '任务完成情况', null, 'operation:tasks:get,operation:task:definitions:details:groupByTaskIdCollectTime,operation:task:definitions:details:groupByTaskIdCollectTime:excel,operation:task:groups:details:groupByTaskIdCollectTime:excel', 2, null, 0, 1, 'APP_MENU_OPERATION_TASK', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (811, 771, '删除', null, 'operation:task:groups:delete', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (810, 771, '修改', null, 'operation:task:groups:put', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (809, 771, '新增', null, 'operation:task:groups:post', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (808, 772, '启动关闭任务', null, 'operation:task:definitions:status:patch', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (807, 772, '删除', null, 'operation:task:definitions:delete', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (806, 772, '修改', null, 'operation:task:definitions:put', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (805, 772, '新增', null, 'operation:task:definitions:post', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (804, 770, '导出申请情况', null, 'operation:materials:applications:excel', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (802, 774, '提交申请', null, 'operation:materials:applications:post,	operation:materials:applications:put', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (801, 774, '查询', null, 'operation:materials:applications:get', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (800, 770, '查询物料情况', null, 'operation:materials:applications:get', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (799, 770, '修改申请配置', null, 'operation:material:apply:config:put', 2, null, 0, 1, null, null, null, 'o2o');



insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (798, 770, '导入', null, 'operation:materials:excel:post', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (797, 770, '修改', null, 'operation:materials:delete', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (796, 770, '修改', null, 'operation:materials:put', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (795, 770, '新增', null, 'operation:materials:post', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (794, 770, '查询', null, 'operation:materials:get', 2, null, 0, 1, null, null, null, 'o2o');


insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (793, 524, '任务收集', '', null, 1, null, 7, 0, 'APP_MENU_OPERATION_TASK', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (791, 766, '删除', null, 'sysresponsibility:delete', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (790, 766, '新增/编辑', null, 'sysresponsibility:saveOrUpdate', 2, null, 0, 1, null, null, '新增/编辑', 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (789, 766, '查询', null, 'sysresponsibility:list', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (784, 768, '查询', null, 'staff:query', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (783, 768, '修改', null, 'staff:edit', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (782, 768, '分配店铺职能', null, 'staff:distribution', 2, null, 0, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (775, 554, '任务列表', 'modules/operationManage/stoTaskList.html', 'operation:tasks:get,operation:task:groups:get', 1, null, 33, 1, 'APP_MENU_OPERATION_TASK_', null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (774, 554, '物料申请', 'modules/operationManage/stoMaterialRequisition.html', null, 1, null, 22, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (772, 554, '任务管理', 'modules/operationManage/heaTaskManage.html', 'operation:task:definitions:get,operation:task:groups:get', 1, null, 32, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (771, 554, '任务组设置', 'modules/operationManage/heaTaskGroupSettings.html', 'operation:task:groups:get', 1, null, 31, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (770, 554, '物料申请管理', 'modules/operationManage/heaMaterialApplicationManage.html', null, 1, null, 21, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (769, 554, '门店通讯录', 'modules/operationManage/heaStoreAddressList.html', null, 1, null, 1, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (768, 554, '员工通讯录', 'modules/operationManage/heaStaffAddressList.html', null, 1, null, 8, 1, null, null, null, 'o2o');
insert into o2o.sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num, pc_showed, app_code, app_order_num, remark, sys_belong) values (766, 554, '门店职能配置', 'modules/operationManage/storeResponsibility.html', null, 1, null, 3, 1, null, null, null, 'o2o');

select *
from o2o.sys_menu order by menu_id desc;

insert into o2o.sys_role_menu (menu_id,role_id) values (818,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (817,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (816,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (815,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (814,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (813,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (812,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (811,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (810,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (809,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (808,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (807,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (806,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (805,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (804,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (802,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (801,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (800,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (799,1);

insert into o2o.sys_role_menu (menu_id,role_id) values (798,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (797,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (796,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (795,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (794,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (793,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (791,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (790,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (789,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (784,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (783,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (782,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (775,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (774,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (772,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (771,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (770,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (769,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (768,1);
insert into o2o.sys_role_menu (menu_id,role_id) values (766,1);



-- 排班

INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (686, 554, '班次管理', 'modules/operationManage/classesManage.html', NULL, 1, NULL, 10, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (687, 554, '排班管理', 'modules/operationManage/workforceManage.html', NULL, 1, NULL, 11, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (688, 554, '排班销售报表', 'modules/operationManage/workforceReport.html', NULL, 1, NULL, 12, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (692, 524, '排班管理', '', NULL, 1, NULL, 6, 0, 'APP_MENU_RANGE', NULL, NULL, 'o2o');

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 686);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 687);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 688);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 692);

INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (719, 686, '查看', NULL, 'operation:range:pages', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (720, 686, '新增', NULL, 'operation:range:save', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (721, 686, '修改', NULL, 'operation:range:update', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (722, 686, '删除', NULL, 'operation:range:del', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (723, 686, '导出', NULL, 'operation:range:exportExcel', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (724, 687, '查看', NULL, 'operation:workforce:pages', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (725, 687, '排班配置', NULL, 'operation:workforce:setWorkforceConfig', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (726, 687, '调整当前周期排班', NULL, 'operation:workforce:current', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (727, 687, '提交下一周期排班', NULL, 'operation:workforce:next', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (728, 687, '导出排班表', NULL, 'operation:workforce:exportExcel', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (729, 688, '查看', NULL, 'operation:workforceSale:pages', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');
INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`, `pc_showed`, `app_code`, `app_order_num`, `remark`, `sys_belong`) VALUES (730, 688, '导出报表', NULL, 'operation:workforceSale:exportExcel', 2, NULL, 0, 1, NULL, NULL, NULL, 'o2o');

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '719');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '720');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '721');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '722');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '723');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '724');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '725');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '726');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '727');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '728');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '729');
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES ('1', '730');





