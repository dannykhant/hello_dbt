select o.storeid, st.salestarget, sum(oi.quantity * oi.unitprice) actual_sales
from {{ ref('order_item_stg') }} oi
join {{ ref('order_stg') }} o on oi.orderid = o.orderid
join {{ ref('sales_target') }} st on o.storeid = st.storeid
group by 1, 2
