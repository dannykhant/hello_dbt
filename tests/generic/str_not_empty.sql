str_not_empty.sql
{% test str_not_empty(model, column_name) %}
    select {{ column_name }} from {{ model }} where trim({{ column_name }}) = ''
{% endtest %}
