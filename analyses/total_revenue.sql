select
    sum(amount) as total_revenue

from {{ ref('int_payments_successful') }}