use sql_store;
select 
     c.customer_id,
     c.first_name,
     o.order_id,
     sh.name as shipper 
from customers c
left Join orders o
    on c.customer_id = o.customer_id 
left Join shippers sh 
    on o.shipper_id = sh.shipper_id 
    