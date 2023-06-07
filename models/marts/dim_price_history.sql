with price_history as (
    select * from {{ref ('stg_price_history')}}
),

final as (
    select *
    from price_history
)

select * from final