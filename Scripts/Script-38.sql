--Find the top 3 best-selling products.
 SELECT product_id, SUM(quantity) AS total_sold
FROM Order_Items
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 3;


--Identify products that are out of stock.
SELECT product_id, product_name, stock_quantity
FROM Products
WHERE stock_quantity = 0;
