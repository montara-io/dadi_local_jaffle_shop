-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH cleansed_hosts AS (SELECT * FROM {{ ref('cleansed_hosts') }})

SELECT * FROM (
select
id, created_at
from
cleansed_hosts
) AS montara_model
--<INCREMENTAL>
{% if is_incremental() %}
WHERE CREATED_AT >= (SELECT max(CREATED_AT) FROM {{ this }})
{% endif %}
--</INCREMENTAL>
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  id, created_at
--from
--  cleansed_hosts
--</ORIGINAL_CODE>