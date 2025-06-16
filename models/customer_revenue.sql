select customerid, fullname, sum(revenue) revenue
from {{ ref('order_fact') }}
group by 1, 2
