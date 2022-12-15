use sql_store;
select customer_id,
       first_name,
       points,
       'Gold' as type
from customers 
where points > 3000
union 
select customer_id,
       first_name,
       points,
       'Siver' as type
from customers 
where points between 2000 and 3000
union 
select customer_id,
       first_name,
       point s,
       'Bronze' as type
from customers 
where points < 2000
order by first_name

