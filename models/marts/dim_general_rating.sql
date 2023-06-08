WITH general_rating  AS (
    SELECT * FROM {{REF ('stg_general_rating')}}
),

FINAL AS (
    SELECT *
    FROM general_rating
)

SELECT * FROM FINAL