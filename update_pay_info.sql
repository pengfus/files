update o2o.o2o_erp_app_order_pay_item
set app_order_code = '200122144350010165',
    update_time    = now()
where pay_item_id = 1464961;
update o2o.o2o_erp_app_order_pay_item
set app_order_id = 1631834,
    update_time= now()
where pay_item_id = 1411037;
update o2o.o2o_erp_app_order_pay_item
set pay_type    = 33,
    update_time = now()
where create_time > '2020-01-11 00:00:00'
  and pay_type = 1
  and app_order_code in (select r.order_no from o2o.o2o_erp_pay_record r where r.pay_way = 'CHINAUMS');