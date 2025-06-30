
-- WHERE clause examples
-- Select all employees in the IT department
SELECT * FROM employees
WHERE department = 'IT';

-- Select customers from a specific city
SELECT * FROM customers
WHERE city = 'Istanbul';

-- Select products with price higher than 100
SELECT * FROM products
WHERE price > 100;

-- Select orders made in 2024
SELECT * FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Select users who are not active
SELECT * FROM users
WHERE status != 'active';

-- Select sales with discount applied
SELECT * FROM sales
WHERE discount IS NOT NULL;

-- Select employees with name starting with 'A'
SELECT * FROM employees
WHERE name LIKE 'A%';

-- Select products either in category 1 or 3
SELECT * FROM products
WHERE category_id IN (1, 3);

-- Select orders that were not delivered
SELECT * FROM orders
WHERE delivered = FALSE;

-- Select invoices with total between 500 and 1000
SELECT * FROM invoices
WHERE total BETWEEN 500 AND 1000;
