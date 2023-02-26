select first_name, last_name
from {{ ref('stg_customers') }}
where not regexp_contains(first_name, '^[A-Z][a-z]*$') or not regexp_contains(last_name, '^[A-Z].$')

-- these regexes are overly specific (names can have apostrophes/accented characters in them etc.),
-- but match the format of the data we have