-- Basic Retail Dataset Exploration

SELECT COUNT(*) AS total_rows
FROM retail;

SELECT MIN(price) AS minimum_price,
       MAX(price) AS maximum_price,
       AVG(price) AS average_price
FROM retail;

SELECT country,
       SUM(quantity * price) AS total_revenue
FROM retail
GROUP BY country
ORDER BY total_revenue DESC;

SELECT country,
       COUNT(DISTINCT customer_id) AS total_customers
FROM retail
GROUP BY country
ORDER BY total_customers DESC;
