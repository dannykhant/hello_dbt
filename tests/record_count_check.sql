{# This is to check if there is enough sample data in the source tables #}
{% set t_counts = {
  'cust': 2,
  'order': 5,
  'orderit': 10
} %}
{% for table, counts in t_counts.items() %}
    select *
    from
        (
            select
                '{{ table }}' as table_name,
                (select count(1) from {{ source('landing', table ) }}) as actual_counts,
                {{ counts }} as expected_counts
        )
    where actual_counts < {{ counts }}
    {% if not loop.last %}
        union all
    {% endif %}
{% endfor %}
