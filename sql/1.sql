-- Task: Find the 10 most profitable products by total sales amount, taking into account the discount
-- Goal: Check the correctness of the profit calculations for each product, taking into account the quantity and discount
SELECT * FROM products;
SELECT * FROM order_details;

SELECT products.product_name, SUM(order_details.unit_price * order_details.quantity * (1 - order_details.discount)) AS total
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id
GROUP BY products.product_name
ORDER BY total DESC
LIMIT 10;
