with
    customer_orders as (
        select c.customerid, count(o.orderid) order_cnt
        from `newagent-90be1.l1_landing.Orders` o
        join `newagent-90be1.l1_landing.Orders` c on o.customerid = c.customerid
        group by 1
    )

select *
from customer_orders
