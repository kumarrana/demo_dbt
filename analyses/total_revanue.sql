with payments as(
    select * from {{ ref('stg_payments') }}
),

sums_amount as(
    select 
        sum(amount) as total_revenue
    from payments
    where status = 'success'
)


select * from sums_amount