use sql_invoicing;

select p.payment_id,
	p.date,
    p.amount,
    c.name,
    m.name
from payments p

join clients c 
	using (client_id)
    
join payment_methods m
	on p.payment_method = m.payment_method_id