-- Task: Find the 10 most profitable clients, as well as the number of their orders
-- Goal: Check which clients bring the most profit, and also make sure that the number of orders is calculated correctly
SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM customers;

SELECT customers.contact_name, SUM (order_details.unit_price * order_details.quantity * (1 - order_details.discount)) AS total_sum, COUNT(DISTINCT(orders.order_id)) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id 
GROUP BY customers.contact_name
ORDER BY total_sum DESC;