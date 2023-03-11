select name
from salesperson
where name not in (select name 
				   from salesperson 
				   inner join orders 
				   on salesperson.sales_id = orders.sales_id
				   where com_id = (select com_id from company 
								   where name = 'RED'))
