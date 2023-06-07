with cash_flow as (
    select * from {{ref ('stg_cash_flow')}}
),

final as (
    select *
    from cash_flow
)

select * from final