select sum(amount) as total_revenue

from {{ ref('stg_payments_successful') }}
left join {{ ref('stg_orders') }} using (order_id)
left join {{ ref('employees') }} using (customer_id)

where employees.employee_id is null