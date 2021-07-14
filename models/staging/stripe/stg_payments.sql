Select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    amount/100 as payment_amount,
    created as created_date, -- put _at for date fields
    _batched_at as updated_at
from raw.stripe.payment -- 120 rows