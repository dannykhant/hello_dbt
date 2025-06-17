-- macro usage example
select
    customerid,
    revenue,
    {{ currency_exchange('revenue', 35, 3) }} as revenue_thb,
    {{ currency_exchange('revenue', 4000, 3) }} as revenue_khr
from {{ ref('customer_revenue') }}
