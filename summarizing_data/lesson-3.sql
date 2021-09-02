use sql_store;

select c.customer_id, 
	sum(quantity * unit_price)
from customers c
join orders o
	on o.customer_id = c.customer_id
join order_items i
	on i.order_id = o.order_id
    
where c.state = 'VA'
group by customer_id
having sum(quantity * unit_price) > 100
	