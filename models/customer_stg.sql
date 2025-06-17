{{
  config(
    materialized = 'ephemeral'
    )
}}

select
    customerid,
    concat(firstname, ' ', lastname) fullname,
    email,
    phone,
    address,
    city,
    state,
    zipcode
from {{ source('landing', 'cust') }}
