select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status as payment_status,
    amount,
    created

from {{ ref('raw_stripe_payment') }}