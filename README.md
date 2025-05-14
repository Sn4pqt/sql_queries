# QA SQL Queries (PostgreSQL + Northwind)
This repository contains SQL queries written to validate data in the Northwind database deployed in **PostgreSQL**. All queries are aimed at identifying defects, checking business logic and analyzing data quality.

1. **[Top 10 Most Profitable Products](sql/1.sql)**  
   Retrieves the 10 most profitable products based on total sales, including discount consideration. Uses `SUM`, `JOIN`, and `GROUP BY`.

2. **[Top Customers by Total Order Value](sql/2.sql)**  
   Identifies customers who generated the highest revenue, along with the number of orders placed.

3. **[Orders Without Products or with Invalid Quantities](sql/3.sql)**  
   Detects orders that are missing product details or include items with invalid quantities (zero or negative).

4. **[Orders with Zero or Negative Total Amount](sql/4.sql)**  
   Finds orders with a total value of zero or less — a possible indicator of calculation errors.

5. **[Duplicate Customers Check](sql/5.sql)**  
   Finds duplicate customer records based on `customer_id`, which may indicate data integrity issues.