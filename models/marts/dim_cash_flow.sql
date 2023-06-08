WITH cash_flow  AS (
    SELECT * FROM {{REF ('stg_cash_flow')}}
),

FINAL AS (
    SELECT *
    FROM cash_flow
)

SELECT * FROM FINAL