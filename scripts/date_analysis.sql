-- find the first and last order date
-- how many years of sales are available
SELECT MIN(order_date) AS first_order_date,
	   MAX(order_date) AS last_order_date,	
	   EXTRACT(YEAR FROM MAX(order_date)) - EXTRACT(YEAR FROM MIN(order_date))) AS order_range_years
FROM gold.fact_sales

-- Find the youngest and the oldest customers 
SELECT MAX(birthdate) AS youngest_customer,
	   MIN(birthdate) AS oldest_customer,
	   EXTRACT( YEAR FROM CURRENT_DATE) - EXTRACT (YEAR FROM MIN(birthdate)) AS age_of_the_oldest_customer,
	   EXTRACT( YEAR FROM CURRENT_DATE) - EXTRACT (YEAR FROM MAX(birthdate)) AS age_of_the_oldest_customer
FROM gold.dim_customers
