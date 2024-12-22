--Use a Common Table Expression (CTE) to calculate the total revenue per customer, then find the customers with revenue greater than $500.

WITH CustomerRevenue AS (
    SELECT 
        c.customer_id,
        c.name,
        SUM(o.total_amount) AS total_revenue
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
)
SELECT 
    customer_id, 
    name, 
    total_revenue
FROM CustomerRevenue
WHERE total_revenue > 500
ORDER BY total_revenue DESC;


--Write a subquery to find the product with the highest price.
SELECT product_id, product_name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);
