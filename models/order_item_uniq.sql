{{ dbt_utils.deduplicate(
    relation=source('landing', 'orderit'),
    partition_by='orderid',
    order_by="updated_at desc",
   )
}}
