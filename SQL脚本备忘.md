## SQL脚本备忘

- 库存中心库存查询

```sql
-- 库存中心
select *
from bbg_plat_sc.sdb_sc_store_details
where bn in ('991901000005')
  and warehouse_id in (select id from bbg_plat_sc.sdb_sc_warehouse where shop_id = '13207');
```



- 库存中心库存操作日志

```sql
select op_desc, nums, current_store, current_freez, order_id, create_time, o2o_order_id
from bbg_plat_log.sdb_sc_op_log
where bn = '992002000019'
  and warehouse_id in (select id from bbg_plat_sc.sdb_sc_warehouse where shop_id = '13140')
order by create_time desc;
```



- b2c订单明细

```sql
select *
from bbg_plat_trade.bbg_b2c_order_items
where bn = '991901000005'
  and order_id in (11111);
```

