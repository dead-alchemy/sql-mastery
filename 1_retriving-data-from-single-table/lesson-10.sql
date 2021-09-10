select *
from order_items
where order_id = 2
order by quantity * unit_price desc