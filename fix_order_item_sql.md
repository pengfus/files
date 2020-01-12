```sql
select * from o2o.o2o_erp_app_order_item i
where i.channel_type in (1,7) and i.del_flag = 0 and i.create_time > '2020-01-01 00:00:00' and i.cat_code is null;

update o2o.o2o_erp_app_order_item i left join o2o.o2o_erp_record_product p on p.product_id = i.product_id
set i.output_vat = p.output_vat, i.cat_code = p.cat_code,i.update_time = now()
where i.channel_type in (1,7) and i.del_flag = 0 and i.create_time > '2020-01-11 00:00:00' and i.cat_code is null;
```