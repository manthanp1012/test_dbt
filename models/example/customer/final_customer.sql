{{ config( materialized='table', unique_key='customer_id', target_schema='company', target_table='final_customer', strategy='timestamp', updated_at='updated_at') }} 
select count(*) as total_customers, current_timestamp as updated_at from {{ ref('stage_customer') }} 
