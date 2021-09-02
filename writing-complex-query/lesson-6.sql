use sql_invoicing;

select c.client_id, 
	c.name,
    sum(i.invoice_total) as total_sales, 
    (select avg(invoice_total) from invoices) as avg_sales,
    sum(i.invoice_total) - (select avg_sales) as difference
from clients c
left join invoices i using (client_id)

group by c.name