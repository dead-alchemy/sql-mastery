use sql_store;

select p.product_id,
	p.name,
    count(oi.order_id) as orders,
    if(count(oi.order_id) > 1, 'Frequent', 'Single or No Order' ) as callout 
from products p

join order_items oi 
	on p.product_id = oi.product_id

group by p.product_id, 
	p.name