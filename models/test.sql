select *
from {{ source('DEMO', 'weather') }}