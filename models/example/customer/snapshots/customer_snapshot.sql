{{ config(
    materialized='table', 
    unique_key='snapshot_date'
)}}

WITH snapshots AS (
    SELECT 
        *,
        DATE_TRUNC(updated_at, MONTH) AS snapshot_date 
    FROM {{ ref('final_customer') }}
)

SELECT * FROM snapshots
