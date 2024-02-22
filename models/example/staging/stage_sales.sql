{{ config(materialized='table', unique_key='transaction_id') }}
select * from company.sales