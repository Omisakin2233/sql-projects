SELECT * FROM orders WHERE customer_id = 2;

--Retrieve all orders made by a specific customer.


SELECT o.order_id, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.name = 'Jane Smith';

--Retrieve all orders made by a specific customer.




-- Delete related rows in Order_Items
DELETE FROM Order_Items
WHERE order_id = 20;

-- Delete the order from Orders
DELETE FROM Orders
WHERE order_id = 20;


--deleting an order 
DELETE FROM orders
WHERE order_id = 5;


--updating a product 
UPDATE products
SET stock_quantity = stock_quantity - 3
WHERE product_id = 10;


