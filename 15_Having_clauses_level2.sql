-- HAVING Clause - Advanced Level Examples
-- Assumes similar schema: sales(id, product, amount, sale_date), customers(id, name, region)

-- 1. Top 3 products by average sale
SELECT product, AVG(amount) AS avg_sale
FROM sales
GROUP BY product
HAVING AVG(amount) >= (
  SELECT AVG(amount)
  FROM sales
  GROUP BY product
  ORDER BY AVG(amount) DESC
  LIMIT 1 OFFSET 2
);

-- 2. Customers with min sale below overall average
SELECT customer_id, MIN(amount)
FROM sales
GROUP BY customer_id
HAVING MIN(amount) < (SELECT AVG(amount) FROM sales);

-- 3. Products where sum ≠ avg × count
SELECT product
FROM sales
GROUP BY product
HAVING SUM(amount) <> AVG(amount) * COUNT(*);

-- 4. Products sold only once
SELECT product
FROM sales
GROUP BY product
HAVING COUNT(*) = 1;

-- 5. Days with more than 2 products sold above 100
SELECT sale_date
FROM sales
WHERE amount > 100
GROUP BY sale_date
HAVING COUNT(DISTINCT product) > 2;

-- 6. Customers with all sales over 50
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING MIN(amount) > 50;

-- 7. Products where stddev > 30 (if supported)
SELECT product
FROM sales
GROUP BY product
HAVING STDDEV(amount) > 30;

-- 8. Sales dates with > 1000 total and > 10 products
SELECT sale_date
FROM sales
GROUP BY sale_date
HAVING SUM(amount) > 1000 AND COUNT(DISTINCT product) > 10;

-- 9. Customers with no sale over 150
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING MAX(amount) <= 150;

-- 10. Days with average sale per product above 60
SELECT sale_date
FROM sales
GROUP BY sale_date
HAVING SUM(amount)/COUNT(DISTINCT product) > 60;

-- 11. Products sold every month (assuming complete months in data)
SELECT product
FROM sales
GROUP BY product
HAVING COUNT(DISTINCT DATE_TRUNC('month', sale_date)) = (
  SELECT COUNT(DISTINCT DATE_TRUNC('month', sale_date)) FROM sales
);

-- 12. Regions with at least 2 customers having > 1000 sales
SELECT c.region
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.region
HAVING COUNT(DISTINCT CASE WHEN s.amount > 1000 THEN c.id END) >= 2;

-- 13. Customers who bought same product more than 5 times
SELECT customer_id, product
FROM sales
GROUP BY customer_id, product
HAVING COUNT(*) > 5;

-- 14. Products sold in more than 3 regions
SELECT s.product
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY s.product
HAVING COUNT(DISTINCT c.region) > 3;

-- 15. Days when all sales were over 100
SELECT sale_date
FROM sales
GROUP BY sale_date
HAVING MIN(amount) > 100;

-- 17. Customers with mixed high and low sales
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING MIN(amount) < 50 AND MAX(amount) > 200;

-- 19. Customers whose avg sale is within 10% of max sale
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING AVG(amount) >= MAX(amount) * 0.9;

-- 20. Products with sales variance above 1000
SELECT product
FROM sales
GROUP BY product
HAVING VARIANCE(amount) > 1000;

