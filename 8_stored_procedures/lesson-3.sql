use sql_invoicing;

delimiter $$
create procedure get_payments(
	client_id  int, 
    payment_method_id tinyint
)
begin
	select *
	from payments p
    where p.client_id = ifnull(client_id, p.client_id)
    and p.payment_method_id = ifnull(payment_method_id, p.payment_method_id)
    
	;
end$$
delimiter ;

