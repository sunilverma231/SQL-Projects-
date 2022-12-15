use sql_store;
update orders
set comments = 'Gold Customers'
where customers_id in (select customer_id 
                       from customers 
                       where points > 3000) 
     