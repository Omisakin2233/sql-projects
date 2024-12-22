--Calculate the total amount of an order.
SELECT order_id, SUM(quantity * price) AS total_amount
FROM Order_Items
WHERE order_id = 1
GROUP BY order_id;

