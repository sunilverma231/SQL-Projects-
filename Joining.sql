 use sql_invoicing;
 select 
   c.name,
   p.date,
   p.amount,
   pm.name as 'payment by'
from clients c 
join payments p 
   using (client_id)
join payment_methods pm
   on p.payment_method = pm.payment_method_id