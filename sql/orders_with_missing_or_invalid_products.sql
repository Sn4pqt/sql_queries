SELECT * FROM orders;
SELECT * FROM order_details;

SELECT orders.order_id
FROM orders
LEFT JOIN order_details ON orders.order_id = order_details.order_id
WHERE order_details.order_id IS NULL OR order_details.quantity <= 0 OR order_details.quantity IS NULL;