insert into customers ( name ,email, phone_number, address_street, address_city, address_state, address_postal_code)
values 
('abayomi', 'omisakinabayomi28@gmail.com', '091-5918-2063','oremata', 'ikorodu', 'LAS', '2007')

select * from CUSTOMERS ;
--add a new customer 



--Use ROW_NUMBER() to assign a unique number to each order for a customer.

SELECT 
    order_id,
    customer_id,
    order_date,
    total_amount,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS order_number
FROM Orders;
