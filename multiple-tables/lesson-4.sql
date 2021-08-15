select o.order_date
	, o.order_id
	, c.first_name
    , s.name
    , os.name
from orders o

left join customers c
	on o.customer_id = c.customer_id
    
left join shippers s
	on o.order_id = s.shipper_id
    
left join order_statuses os 
	on o.status = os.order_status_id