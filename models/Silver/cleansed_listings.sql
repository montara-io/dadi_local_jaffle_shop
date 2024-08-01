-- AUTO GENERATED BY MONTARA
--<DBT_CODE>

WITH RAW_LISTINGS__RAW_LISTINGS AS ( SELECT * FROM {{ source('RAW_LISTINGS', 'RAW_LISTINGS') }})

SELECT * FROM ( 
select
id as "actual list price: list price*quantity"
from
raw_listings__raw_listings
where
id is not null
) AS montara_model
--<INCREMENTAL>
{% if is_incremental() %}
WHERE updated_at >= (SELECT max(updated_at) FROM {{ this }})
{% endif %}
--</INCREMENTAL>
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  id as "actual list price: list price*quantity"
--from
--  raw_listings__raw_listings 
--where
--  id is not null
--</ORIGINAL_CODE>