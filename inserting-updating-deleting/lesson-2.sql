-- use sql_invoicing;

create table invoicing_archives as
select i.invoice_id, 
	i.number, 
    c.name,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
from invoices i

join clients c using(client_id)

where i.payment_date is not null
;