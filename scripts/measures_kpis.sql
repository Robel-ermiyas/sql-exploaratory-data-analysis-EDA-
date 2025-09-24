-- find the total sales
SELECT SUM(sales_amount) AS total_sales
FROM gold.fact_sales

  -- find how many items are sold
SELECT SUM(quantity) AS total_itmes
FROM gold.fact_sales

-- find the average selling price
SELECT AVG(price)
FROM gold.fact_sales

-- find total number of orders
SELECT COUNT(order_number) AS total_orders
FROM gold.fact_sales

SELECT COUNT(DISTINCT order_number)
FROM gold.fact_sales

-- find total number of products
SELECT COUNT(product_key)
FROM gold.dim_products

-- find total number of customers
SELECT COUNT(customer_key)
FROM gold.dim_customers

-- find total number of customers that has placed an orders
SELECT COUNT(DISTINCT customer_key)
FROM gold.fact_sales

-- Generate a Report that shows all key metrics of the business
SELECT 'Total Sales ' AS Measure_name, SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT 'Total Items' , SUM(quantity) 
From gold.fact_sales
UNION ALL
SELECT 'Average Selling Price', ROUND(AVG(price), 2)
FROM gold.fact_sales
UNION ALL
SELECT 'Total Number of Orders', COUNT(DISTINCT order_number)
FROM gold.fact_sales
UNION ALL 
SELECT 'Total Number of Products', COUNT(product_key)
FROM gold.dim_products
UNION ALL
SELECT 'Total Number of customers', COUNT(customer_key)
FROM gold.dim_customers
UNION ALL
SELECT 'Total Number of Customers that has placed an Orders',COUNT(DISTINCT customer_key)
FROM gold.fact_sales

