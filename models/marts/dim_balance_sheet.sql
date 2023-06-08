WITH balance_sheet  AS (
    SELECT * FROM {{REF ('stg_balance_sheet')}}
),

FINAL AS (
    SELECT *
    FROM balance_sheet
)

SELECT * FROM FINAL