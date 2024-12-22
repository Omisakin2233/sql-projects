 --Write queries using INNER JOIN, LEFT JOIN, and FULL JOIN to retrieve data across multiple tables.

--INNER JOIN :
SELECT c.customer_id, c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

--LEFT JOIN :
SELECT c.customer_id, c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

--FULL JOIN :
SELECT c.customer_id, c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
FULL JOIN Orders o ON c.customer_id = o.customer_id;





--Use RANK() to rank customers based on their total spending.
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spending,
       RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS customer_rank
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spending DESC;


--
--Use ROW_NUMBER() to assign a unique number to each order for a customer.
SELECT 
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS order_number
FROM 
    orders;

