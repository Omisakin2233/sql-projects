--Find the revenue generated per product.

SELECT p.product_id, p.product_name, SUM(oi.quantity * oi.price) AS total_revenue
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;


-