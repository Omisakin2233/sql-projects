 --Create indexes on frequently queried fields (e.g., customer_id, product_id) and demonstrate their impact on query performance.
--CUSTOMER_ID :
CREATE INDEX idx_customer_id ON Orders(customer_id);

--PRODUCT_ID :
CREATE INDEX idx_product_id ON Order_Items(product_id);

-- ORDER_ID 
CREATE INDEX idx_order_id ON Orders (order_id);

-- EMAIL 
CREATE INDEX idx_email ON Customers (email);



--XPLAIN ANALYZE
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;


