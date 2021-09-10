-- less than 2000 points bronze, over 3000 is gold.

select customer_id, 
	last_name, 
	points,
    'Bronze'
from customers
where points <= 2000
UNION
select customer_id, 
	last_name, 
	points,
    'Silver'
from customers
where points > 2000
and points < 3000
UNION
select customer_id, 
	last_name, 
	points,
    'Gold'
from customers
where points >= 3000
