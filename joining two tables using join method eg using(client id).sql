use sql_invoicing;
select c.name as client,
      c.city,
      p.date,
      p.amount,
      pm.name as payment_method
from payments p
join clients c using (client_id)
join payment_methods pm 
  on p.payment_id = pm.payment_method_id