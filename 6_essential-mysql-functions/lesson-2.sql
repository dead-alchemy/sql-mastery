use sql_store;

select concat(first_name, ' ', last_name) as customer,
	ifnull(phone, 'Not Assigned') as phone_number
from customers