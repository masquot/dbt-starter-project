    select
        orders.order_id,
        orders.customer_id,
        coalesce(payments.amount, 0) as amount

    from {{ ref('stg_orders') }} orders

    left join {{ ref('stg_payments') }} payments using (order_id)