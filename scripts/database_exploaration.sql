-- Explore all tables and columns via `INFORMATION_SCHEMA`
-- Inspect specific table structures (`dim_customers`, etc.)

SELECT *
FROM INFORMATION_SCHEMA.TABLES
	
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'
