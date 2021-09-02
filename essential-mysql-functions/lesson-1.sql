use sql_store;

select *
from orders 
where year(order_date) = year(curdate())