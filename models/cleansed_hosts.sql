with raw_hosts as (
      select * from {{ source('RAW_HOSTSs', 'RAW_HOSTSs') }}
)

select * from raw_hosts
where name = '{{var('test_dadi')}}'
