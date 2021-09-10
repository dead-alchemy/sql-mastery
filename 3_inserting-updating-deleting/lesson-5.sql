update orders 
	set comments = 'Gold'
where customer_id in (
select customer_id
from customers c
where c.points >= 3000
)