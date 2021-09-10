use sql_invoicing;

select *
from payments p

join payment_methods m
	on p.payment_method = m.payment_method_id
    
join clients c
	on p.client_id = c.client_id