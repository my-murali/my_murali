
{{config(materialized='incremental')}}
select
    *
from {{ ref('merge_order') }}

{% if is_incremental() %}
 where ID > (select max(ID) from {{ this }} )

{% endif %}