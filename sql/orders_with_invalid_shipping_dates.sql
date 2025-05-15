SELECT * FROM orders;

SELECT order_id, order_date, shipped_date, (shipped_date - order_date) AS days_difference
FROM orders
WHERE shipped_date IS NOT NULL AND order_date IS NOT NULL AND (shipped_date - order_date) < 0;