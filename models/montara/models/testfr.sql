-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH RAW_HOSTS__RAW_HOSTS AS ( SELECT * FROM {{ source('RAW_HOSTS', 'RAW_HOSTS') }})

select * from raw_hosts__raw_hosts
--</DBT_CODE>
--<ORIGINAL_CODE>
--select * from raw_hosts__raw_hosts 
--</ORIGINAL_CODE>