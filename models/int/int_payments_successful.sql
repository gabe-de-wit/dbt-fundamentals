select * except (status)
from {{ ref('stg_stripe__payments') }}
where status = 'success'