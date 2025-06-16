select orderid from {{ ref('order_fact') }} where revenue < 0
