use o2o;

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('operationTaskDefinitionChecker', 'checkAndChangeTaskDefinitionStatus', null, '0 0 1 * * ?', 0, '门店任务定义状态更新',
        now());

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('operationTaskGenerator', 'generateTask', null, '0 0 2 * * ?', 0, '生成门店任务', now());

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('operationTaskExpire', 'expireTask', null, '0 0 3 * * ?', 0, '逾期任务状态变更', now());

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('operationMaterialApplyTerminate', 'terminate', null, '0 0 1 * * ?', 0, '更新物料申请单状态', now());

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('orderAmountTask', 'orderAmountStatistics', NULL, '0 5/30 * * * ?', 0, '按订单类型每半小时统计销售额', '2020-03-19 15:42:08');

insert into o2o.schedule_job (`bean_name`, `method_name`, `params`, `cron_expression`, `status`, `remark`,
                              `create_time`)
VALUES ('workforceSaleTask', 'rangeStatistics', NULL, '0 10/30 * * * ?', 0, '排班销售额统计', '2020-03-19 15:42:08');