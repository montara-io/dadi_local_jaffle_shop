-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH RAW_LISTINGS__RAW_LISTINGS AS ( SELECT * FROM {{ source('RAW_LISTINGS', 'RAW_LISTINGS') }})

select
*
from
RAW_LISTINGS__RAW_LISTINGS
limit
10
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  *
--from
--  RAW_LISTINGS__RAW_LISTINGS
--limit
--  10
--</ORIGINAL_CODE>