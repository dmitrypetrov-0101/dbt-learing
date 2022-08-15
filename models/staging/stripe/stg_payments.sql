select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status as payment_status,
    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

from {{ ref('raw_stripe_payment') }}