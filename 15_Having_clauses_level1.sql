-- HAVING Clause
-- Dataset assumption: sales(id, product, amount, sale_date), customers(id, name, region)

-- 1. Total sales amount per product greater than 1000
SELECT product, SUM(amount) AS total_sales
FROM sales
GROUP BY product
HAVING SUM(amount) > 1000;

-- 2. Customers with more than 5 purchases
SELECT customer_id, COUNT(*) AS total_orders
FROM sales
GROUP BY customer_id
HAVING COUNT(*) > 5;

-- 3. Products with average sale amount above 50
SELECT product, AVG(amount) AS avg_sale
FROM sales
GROUP BY product
HAVING AVG(amount) > 50;

-- 4. Monthly sales totals above 500
SELECT DATE_TRUNC('month', sale_date) AS month, SUM(amount)
FROM sales
GROUP BY DATE_TRUNC('month', sale_date)
HAVING SUM(amount) > 500;

-- 5. Products sold more than 10 times
SELECT product, COUNT(*) AS sold_count
FROM sales
GROUP BY product
HAVING COUNT(*) > 10;

-- 6. Products with min sale above 20
SELECT product, MIN(amount)
FROM sales
GROUP BY product
HAVING MIN(amount) > 20;

-- 7. Regions with max sale over 100
SELECT c.region, MAX(s.amount)
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.region
HAVING MAX(s.amount) > 100;

-- 8. Customers with total sales between 500 and 1000
SELECT customer_id, SUM(amount)
FROM sales
GROUP BY customer_id
HAVING SUM(amount) BETWEEN 500 AND 1000;

-- 9. Products with sales on more than 3 different days
SELECT product, COUNT(DISTINCT sale_date)
FROM sales
GROUP BY product
HAVING COUNT(DISTINCT sale_date) > 3;

-- 10. Daily total sales more than 300
SELECT sale_date, SUM(amount)
FROM sales
GROUP BY sale_date
HAVING SUM(amount) > 300;

-- 11. Top 5 customers with most sales
SELECT customer_id, SUM(amount)
FROM sales
GROUP BY customer_id
HAVING SUM(amount) > (
    SELECT SUM(amount)
    FROM sales
    GROUP BY customer_id
    ORDER BY SUM(amount) DESC
    LIMIT 1 OFFSET 4
);

-- 12. Products with even total quantity sold
SELECT product, SUM(amount)
FROM sales
GROUP BY product
HAVING MOD(SUM(amount), 2) = 0;

-- 13. Customers with average sale under 100
SELECT customer_id, AVG(amount)
FROM sales
GROUP BY customer_id
HAVING AVG(amount) < 100;

-- 14. Products where total sales ≠ 500
SELECT product, SUM(amount)
FROM sales
GROUP BY product
HAVING SUM(amount) <> 500;

-- 15. Customers with max single sale > 200
SELECT customer_id, MAX(amount)
FROM sales
GROUP BY customer_id
HAVING MAX(amount) > 200;

-- 16. Products with no sale under 10
SELECT product
FROM sales
GROUP BY product
HAVING MIN(amount) >= 10;

-- 17. Daily product sales > 100
SELECT sale_date, product, SUM(amount)
FROM sales
GROUP BY sale_date, product
HAVING SUM(amount) > 100;

-- 18. Regions with total sales > 5000
SELECT c.region, SUM(s.amount)
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.region
HAVING SUM(s.amount) > 5000;

-- 19. Products with avg sales ≠ total sales / count
SELECT product
FROM sales
GROUP BY product
HAVING AVG(amount) <> SUM(amount)/COUNT(*);

-- 20. Products with sales on exactly 2 different dates
SELECT product
FROM sales
GROUP BY product
HAVING COUNT(DISTINCT sale_date) = 2;