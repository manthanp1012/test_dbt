{{ config(materialized='table')}}
select transaction_date, count(*) as total_sales, sum(quantity) as total_quantity from {{ ref('stage_sales') }} group by 1
