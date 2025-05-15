# QA SQL Queries (PostgreSQL + Northwind)
This repository contains SQL queries written to validate data in the Northwind database deployed in **PostgreSQL**. All queries are aimed at identifying defects, checking business logic and analyzing data quality.

1. **[Top 10 Most Profitable Products](sql/top_10_profitable_products.sql)**  
   Retrieves the 10 most profitable products based on total sales, including discount consideration.

2. **[Top Customers by Total Order Value](sql/top_customers_by_order_value.sql)**  
   Identifies customers who generated the highest revenue, along with the number of orders placed.

3. **[Orders Without Products or with Invalid Quantities](sql/orders_with_missing_or_invalid_products.sql)**  
   Detects orders that are missing product details or include items with invalid quantities (zero or negative).

4. **[Orders with Zero or Negative Total Amount](sql/orders_with_negative_total.sql)**  
   Finds orders with a total value of zero or less.

5. **[Duplicate Customers Check](sql/duplicate_customers.sql)**  
   Finds duplicate customer records based on `customer_id`.

6. **[Products Never Ordered](sql/products_never_ordered.sql)**  
   Identifies products that were never included in any order.

7. **[Average Delivery Time by Shipper](sql/average_delivery_time_by_shipper.sql)**  
   Calculates the average number of days between the order date and the shipped date for each shipping company. 

8. **[Orders with Invalid Shipping Dates](sql/orders_with_invalid_shipping_dates.sql)**  
   Detects orders where the shipping date is earlier than the order date.