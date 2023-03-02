{%- set possible_payment_methods = ['credit_card', 'bank_transfer', 'coupon', 'gift_card'] -%}

select
    order_id,
    any_value(customer_id) as customer_id,
    {%- for method in possible_payment_methods %}
    sum(case when payment_method = '{{method}}' then amount else 0 end) as amount_by_{{method}}
    {%- if not loop.last -%} , {%- endif %}
    {%- endfor %}

from {{ ref('stg_orders') }} inner join {{ ref('stg_payments_successful') }} using (order_id)

group by order_id