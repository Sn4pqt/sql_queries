-- Task: Find clients with duplicate records
-- Goal: Check that there are no duplicate records about clients in the database
SELECT * FROM customers;

SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;