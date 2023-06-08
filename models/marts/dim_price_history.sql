WITH price_history  AS (
    SELECT * FROM {{REF ('stg_price_history')}}
),

FINAL AS (
    SELECT *
    FROM price_history
)

SELECT * FROM FINAL