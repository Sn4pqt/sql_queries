SELECT * FROM order_details;
SELECT * FROM products;

SELECT products.product_name, COUNT (order_details.product_id)
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_name
HAVING COUNT (order_details.product_id) = 0;