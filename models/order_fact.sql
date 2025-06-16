select
    o.orderid,
    o.status,
    o.leadstatus,
    c.customerid,
    c.fullname,
    oi.productid,
    o.updated_at,
    sum(oi.total_price) revenue,
    count(oi.orderid) order_cnt
from {{ ref('order_item_stg') }} oi
join {{ ref('order_stg') }} o on oi.orderid = o.orderid
join {{ ref('customer_stg') }} c on o.customerid = c.customerid
group by 1, 2, 3, 4, 5, 6, 7
