with source_info as (
    SELECT * FROM `{{ dataset }}.{{ schema }}.__TABLES__` where table_id = '{{table}}'
),
target_info as (
    SELECT * FROM `{{ dataset }}.{{ compare_schema }}.__TABLES__` where table_id = '{{table}}'
)
SELECT
    source_info.size_bytes as source_size,
    target_info.size_bytes as target_size,
    source_info.size_bytes - target_info.size_bytes as diff
from source_info, target_info
