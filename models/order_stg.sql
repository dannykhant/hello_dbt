{{
  config(
    materialized = 'incremental',
    unique_key = 'orderid'
    )
}}

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
    updated_at,
    current_timestamp dbt_updated_at
from {{ source('landing', 'order') }}

{% if is_incremental() %}
    where updated_at > (select max(dbt_updated_at) from {{ this }})
{% endif %}
