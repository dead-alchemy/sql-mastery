use sql_invoicing;

select p.date,
	m.name,
    sum(p.amount)
from payments p

join payment_methods m on m.payment_method_id = p.payment_method

group by p.date,
	m.name
order by p.date