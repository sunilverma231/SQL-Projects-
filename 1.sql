Use sql_invoicing;
select 
     c.name,
     p.invoice_id,
     p.amount,
     pm.name
from clients c
join payments p
   on c.client_id = p.client_id
join payment_methods pm 
  on p.payment_method = pm.payment_method_id
