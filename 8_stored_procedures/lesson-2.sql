use sql_invoicing;

delimiter $$
create procedure get_invoices_by_client(
	client_id  int
)
begin
select *
from invoices i
where i.client_id = client_id;
end$$
delimiter ;

