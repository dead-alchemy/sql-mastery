use sql_invoicing; 

select 'First Half of 2019' as date_range
	, sum(i.invoice_total) as total_sales
    , sum(i.payment_total) as total_payments
    , sum(i.invoice_total) - sum(i.payment_total) as difference
from invoices i
where invoice_date between '2019-01-01' and '2021-06-30'

union

select 'Second Half of 2019' as date_range
	, sum(i.invoice_total) as total_sales
    , sum(i.payment_total)
    , sum(i.invoice_total) - sum(i.payment_total) as difference
from invoices i
where invoice_date between '2019-07-01' and '2021-12-31'

union

select 'Total of 2019' as date_range
	, sum(i.invoice_total) as total_sales
    , sum(i.payment_total)
    , sum(i.invoice_total) - sum(i.payment_total) as difference
from invoices i
where invoice_date between '2019-01-01' and '2021-12-31'