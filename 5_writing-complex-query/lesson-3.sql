use sql_store;

select c.*
from customers c

join orders o
	on c.customer_id = o.customer_id
    
join order_items i
	on i.order_id = o.order_id
    
where i.product_id = 3