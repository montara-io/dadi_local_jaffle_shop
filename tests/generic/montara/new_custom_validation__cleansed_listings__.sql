{% test new_custom_validation__cleansed_listings__(model) %}
--start_test_query
--start_query
WITH cleansed_listings AS (SELECT * FROM {{ ref('cleansed_listings') }})

select * from cleansed_listings
--original_sql
--select * from cleansed_listings 
--end_test_query
{% endtest %}