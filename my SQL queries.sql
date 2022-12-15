USE sql_invoicing;

SELECT 
     c.name,
     c.city,
     c.state,
     p.client_id,
     p.date,
     pm.name AS Paid_through
FROM clients c
JOIN payments p
   ON c.client_id = p.client_id
JOIN payment_methods pm
   ON p.payment_method = pm.payment_method_id