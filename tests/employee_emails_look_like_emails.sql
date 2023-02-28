select *
from {{ ref('employees') }}
where not regexp_contains(email, '^[A-Za-z0-9._%+-]+@jaffleshop\\.com$')