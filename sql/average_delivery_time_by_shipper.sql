SELECT * FROM orders;
SELECT * FROM shippers;

SELECT shippers.company_name, AVG(orders.shipped_date - orders.order_date) AS avg_ship_time
FROM orders
LEFT JOIN shippers ON orders.ship_via = shippers.shipper_id
WHERE orders.shipped_date IS NOT NULL AND orders.order_date IS NOT NULL
GROUP BY shippers.company_name
ORDER BY avg_ship_time DESC;