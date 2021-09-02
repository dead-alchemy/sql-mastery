use sql_invoicing;

select i.* 
from invoices i
where i.invoice_total > 
(
	select avg(invoice_total)
    from invoices 
    where client_id = i.client_id
    group by client_id
)