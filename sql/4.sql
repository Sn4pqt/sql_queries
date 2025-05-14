-- Task: Find orders with negative or zero amount
-- Goal: Check that the order amount is calculated correctly and there are no errors in the data
SELECT * FROM order_details;

SELECT order_id, product_id, unit_price, quantity, discount, unit_price*quantity*(1-discount)
FROM order_details
WHERE unit_price*quantity*(1-discount) <= 0;