select 
    ticker,
    open,
    high,
    low,
    close,
    volume,
    tradingdate as trading_date

from {{ source('raw', 'price_history') }}