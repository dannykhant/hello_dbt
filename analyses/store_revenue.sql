select o.storeid, sum(oi.unitprice * oi.quantity) revenue
from {{ ref('order_stg') }} o
join {{ ref('order_item_stg') }} oi on o.orderid = oi.orderid
group by 1
