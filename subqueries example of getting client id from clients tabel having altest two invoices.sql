use sql_invoicing;
select *
from clients 
where client_id in (
select client_id
from invoices
group by client_id
having count(*) >= 2)