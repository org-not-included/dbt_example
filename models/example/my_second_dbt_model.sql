
-- Use the `ref` function to select from other models

select new_id + 1 as newest_id
from {{ ref('my_first_dbt_model') }}
where new_id = 1
