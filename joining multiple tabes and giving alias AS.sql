use sql_invoicing;
select c.name,
       c.city,
       c.state,
       p.date,
       pm.name as 'mode of payment' 
from clients c 
join payments p using (client_id) 
join payment_methods pm 
  on p.payment_method = pm.payment_method_id  