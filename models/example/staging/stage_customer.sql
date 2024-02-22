{{ config(materialized='table',unique_key = 'customer_id') }}
select * from company.customer

