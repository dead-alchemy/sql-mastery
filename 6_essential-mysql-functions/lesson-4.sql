use sql_store;

select concat(first_name, ' ', last_name) as customer, 
	points, 
	case 
		when points >= 3000 then 'Gold'
        when points < 2000 then 'Bronze'
        else 'Silver'
	end as status
from customers c
order by points desc