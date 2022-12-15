Use sql_invoicing;
create table invoice_archived as 
select name,
       c.client_id,
       i.payment_date,
       phone,
       address
from  clients c
join invoices i using (client_id)
where payment_date is not null
    