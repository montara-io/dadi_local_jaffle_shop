-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH cleansed_listings AS (SELECT * FROM {{ ref('cleansed_listings') }})

select
*
from
cleansed_listings
limit 10000
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  *
--from
--  cleansed_listings
--  limit 10000
--</ORIGINAL_CODE>