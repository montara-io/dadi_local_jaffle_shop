--- AUTO GENERATED BY MONTARA ---
--<DBT_CODE>

  {{
    config(
      post_hook=["\n  \n  {% if target.name == 'dev' %}\n    {{log('Running retention policy for {{this}}. Staging retention days: 150, Production retention days: 15.')}}\n    DELETE FROM {{this}} WHERE updated_at < DATEADD(day, -150, CURRENT_DATE())\n  \n  {% elif target.name == 'prod' %}\n    {{log('Running retention policy for {{this}}. Staging retention days: 150, Production retention days: 15.')}}\n    DELETE FROM {{this}} WHERE updated_at < DATEADD(day, -15, CURRENT_DATE())\n  \n  {% endif %}\n  "],  
    )
  }}
  
WITH raw_hosts_augmented AS (SELECT * FROM {{ ref('raw_hosts_augmented') }})

SELECT * FROM ( 
  select
*
from
raw_hosts_augmented
where
updated_at is not null
) AS montara_model
--<INCREMENTAL>
{% if is_incremental() %}
  WHERE updated_at >= (SELECT max(updated_at) FROM {{ this }})
{% endif %}
--</INCREMENTAL>
--</DBT_CODE>
--<ORIGINAL_CODE>
--select
--  *
--from
--  raw_hosts_augmented
--where
--  updated_at is not null
--</ORIGINAL_CODE>