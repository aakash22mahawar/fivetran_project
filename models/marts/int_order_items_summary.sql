select
    order_key,
    sum(extended_price) as gross_amount,
    sum(item_discount) as discount_amount

from
    {{ref('int_order_items')}}

group by
    order_key