use sql_invoicing;

create view clients_balance as 
select c.client_id,
	c.name,
	sum(invoice_total - payment_total)
from clients c
join invoices i
	on i.client_id = c.client_id
group by c.client_id, name