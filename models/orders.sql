with orders as (
    select * from {{ ref('stg_orders') }}
),
payments as (
    select * from {{ ref('stg_payments') }}
),
final as (
    Select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        sum(payments.payment_amount) as amount
    from orders
    join payments on orders.order_id = payments.order_id
    where payment_status = 'success'
    group by orders.order_id, orders.customer_id, order_date

)
Select * from final