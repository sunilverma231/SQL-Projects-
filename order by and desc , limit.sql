use sql_store;
select first_name,
       last_name,
       points
       
from customers 
order by points desc
limit 3
