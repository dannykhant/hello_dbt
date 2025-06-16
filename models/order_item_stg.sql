select
    orderitemid,
    orderid,
    productid,
    quantity,
    unitprice,
    quantity * unitprice as total_price,
from {{ source('landing', 'orderit') }}
