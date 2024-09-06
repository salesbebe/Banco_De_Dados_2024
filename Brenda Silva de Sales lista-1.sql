select orders.order_id,orders.order_date,customers.first_name,customers.last_name,customers.email
from orders
inner join customers on customers.customer_id = orders.order_id;
--------------


select products.product_name,order_items.quantity
from products
inner join order_items on order_items.product_id = order_items.order_id
where customer_id = 1;
---------------


select customers.first_name,customers.last_name,sum(pruducts.price)as total
from customers 
inner join orders on customers.customer_id = orders.order_id
inner join order_items on orders.order_id = order_items.order_id
inner join product on order_items.producct_id = products.product_id
group by 
customers.customers_id,customers.first_name,customers.last_name;
-----------------


select customers.first_name
from customers
left join orders on customers.customer_id = orders.customer_id
where order_id is null;
------------


select products.product_name,sum(order_items.quantity) as total
from products 
inner join order_items
on products.porduct-id = order_items.product_id
group by product_name
order by total_produdo asc;

