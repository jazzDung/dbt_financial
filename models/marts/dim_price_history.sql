with price_history as (
    select * from {{ref ('stg_price_history')}}
),

final as (
    select
        ticker,
        open,
        high,
        low,
        close,
        volume,
        to_timestamp(trading_date, 'YYYY-MM-DDTHH:MI:SS.MS') as trading_date
    from price_history
)

select * from final