select *
from customers 
where first_name regexp 'elka|ambur'
;

select * 
from customers
where last_name regexp 'ey$|on$'
;

select *
from customers
where last_name regexp '^my|se'
;

select *
from customers
where last_name regexp '^b[ru]'