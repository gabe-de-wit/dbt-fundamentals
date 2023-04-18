select
    order_id,
    customer_id,
    amount
    
from {{ ref('stg_jaffle_shop__orders') }}
inner join {{ ref('int_payments_failed') }} using (order_id)