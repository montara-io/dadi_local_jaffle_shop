with raw_hosts as (
      select * from {{ source('RAW_HOSTS', 'RAW_HOSTSs') }}
)

select * from cleansed_hosts 