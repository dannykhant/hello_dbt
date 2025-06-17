{% macro currency_exchange(revenue_column, exchange_rate, decimal_places=2) %}
    round({{ revenue_column }} * {{ exchange_rate }}, {{ decimal_places }})
{% endmacro %}
