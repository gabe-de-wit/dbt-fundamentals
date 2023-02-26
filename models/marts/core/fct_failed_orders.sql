select order_id, customer_id, amount
from {{ ref('stg_orders') }} inner join {{ ref('stg_payments_failed') }} using (order_id)