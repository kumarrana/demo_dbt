-- refunds have negative amounts, So total value should be >=0
-- There return the record where this is not true to  make the test fail

select
    order_id,
    sum(amount) as total_amount

from {{ ref('stg_payments') }}
group by 1
having not(total_amount >=0)