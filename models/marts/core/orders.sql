select
    order_id,
    any_value(customer_id) as customer_id,
    sum(amount) as amount
    
from {{ ref('stg_jaffle_shop__orders') }}
inner join {{ ref('int_payments_successful') }} using (order_id)

group by order_id