select
    *
from
    {{ref('fact_orders')}}

where
    discount_amount>0