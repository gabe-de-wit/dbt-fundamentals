select order_id, any_value(customer_id) as customer_id, sum(amount) as amount
from {{ ref('stg_orders') }} inner join {{ ref('stg_payments_successful') }} using (order_id)
group by order_id