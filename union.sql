select order_id,
	   order_date,
       'active' as status 
from orders 
where order_date >= '2019-01-01' 
union
select order_id,
	   order_date,
       'archive' as status 
from orders 
where order_date < '2019-01-01'  

