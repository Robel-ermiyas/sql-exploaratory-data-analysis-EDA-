-- Which five products generate high revenue
SELECT 
	d.product_name,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products d
ON f.product_key = d.product_key
GROUP BY d.product_name
ORDER BY total_revenue DESC
LIMIT 5

-- What are 5 worst-performing products interms of sales
SELECT 
	d.product_name,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products d
ON f.product_key = d.product_key
GROUP BY d.product_name
ORDER BY total_revenue ASC
LIMIT 5

-- Find the top 10 customers who have generated the highest revenue
SELECT d.customer_key, 
	   d.first_name,
	   d.last_name,
	   SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers d
ON f.customer_key = d.customer_key
GROUP BY d.customer_key, d.first_name, d.last_name
ORDER BY total_revenue DESC
LIMIT 10

-- Top 3 customers with lowest order placed
SELECT d.customer_key, 
	   d.first_name,
	   d.last_name,
	   COUNT(DISTINCT f.order_number) AS total_orders
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers d
ON f.customer_key = d.customer_key
GROUP BY d.customer_key, d.first_name, d.last_name
ORDER BY total_orders  
LIMIT 3
