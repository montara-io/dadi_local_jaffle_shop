-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH cleansed_hosts AS (SELECT * FROM {{ ref('cleansed_hosts') }})

select
*
from
cleansed_hosts limit 100
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  *
--from
--  cleansed_hosts limit 100
--</ORIGINAL_CODE>