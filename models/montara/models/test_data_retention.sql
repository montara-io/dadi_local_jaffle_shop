--- AUTO GENERATED BY MONTARA ---
--<DBT_CODE>
WITH raw_hosts_augmented AS (SELECT * FROM {{ ref('raw_hosts_augmented') }})

select * from raw_hosts_augmented
--</DBT_CODE>
--<ORIGINAL_CODE>
--select * from raw_hosts_augmented 
--</ORIGINAL_CODE>