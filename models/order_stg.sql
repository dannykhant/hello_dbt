select
    orderid,
    orderdate,
    customerid,
    employeeid,
    storeid,
    status,
    case
        when status = 'Completed'
        then 'Win'
        when status = 'Canceled'
        then 'Lost'
        else 'In Progress'
    end as leadstatus,
    updated_at
from {{ source('landing', 'order') }}
