-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH cleansed_hosts AS (SELECT * FROM {{ ref('cleansed_hosts') }})

select * from cleansed_hosts
--</DBT_CODE>
--<ORIGINAL_CODE>
---- new 3
--select * from cleansed_hosts
--</ORIGINAL_CODE>