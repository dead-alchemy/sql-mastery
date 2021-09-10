select i.order_id,
	i.product_id,
    p.name,
    i.quantity,
    i.unit_price
from order_items i
join products p
	on i.product_id = p.product_id
