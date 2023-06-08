WITH income_statement  AS (
    SELECT * FROM {{REF ('stg_income_statement')}}
),

FINAL AS (
    SELECT *
    FROM income_statement
)

SELECT * FROM FINAL