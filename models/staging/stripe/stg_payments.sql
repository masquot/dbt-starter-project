with payments as (

    select
        ID as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        STATUS as `status`,
        AMOUNT as amount,
        CREATED as creation_date

    from default.stripe_payments_csv

)

select * from payments