SELECT * FROM order_details;

SELECT order_id, product_id, unit_price, quantity, discount, unit_price*quantity*(1-discount)
FROM order_details
WHERE unit_price*quantity*(1-discount) <= 0;