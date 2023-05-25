select 
    ticker,
    open,
    high,
    low,
    close,
    volume,
    tradingdate as trading_date

from {{ source('financial_raw', 'price_history') }}