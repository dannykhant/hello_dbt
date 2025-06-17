{% snapshot customer_history %}

    {{
   config(
       target_schema='l3_consumption',
       unique_key='customerid',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

    select *
    from {{ source('landing', 'cust') }}

{% endsnapshot %}
