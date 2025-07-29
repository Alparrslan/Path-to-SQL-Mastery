-- 1. Select distinct departments
SELECT DISTINCT department FROM employees;

-- 2. Get distinct job titles
SELECT DISTINCT job_title FROM employees;

-- 3. Find distinct cities from customers table
SELECT DISTINCT city FROM customers;

-- 4. Select distinct product categories
SELECT DISTINCT category FROM products;

-- 5. List distinct order statuses
SELECT DISTINCT status FROM orders;

-- 6. Get distinct countries from suppliers
SELECT DISTINCT country FROM suppliers;

-- 7. Find distinct hire years
SELECT DISTINCT YEAR(hire_date) AS hire_year FROM employees;

-- 8. Select distinct customer segments
SELECT DISTINCT segment FROM customers;

-- 9. Get distinct payment methods
SELECT DISTINCT payment_method FROM payments;

-- 10. Find distinct shipping methods
SELECT DISTINCT shipping_method FROM orders;

-- 11. Select distinct email domains from users
SELECT DISTINCT SUBSTRING_INDEX(email, '@', -1) AS domain FROM users;

-- 12. List distinct product brands
SELECT DISTINCT brand FROM products;

-- 13. Get distinct employee titles
SELECT DISTINCT title FROM employees;

-- 14. Find distinct phone area codes
SELECT DISTINCT LEFT(phone, 3) AS area_code FROM customers;

-- 15. Select distinct currencies used
SELECT DISTINCT currency FROM transactions;

-- 16. Get distinct membership types
SELECT DISTINCT membership_type FROM members;

-- 17. List distinct education levels
SELECT DISTINCT education_level FROM employees;

-- 18. Select distinct genders
SELECT DISTINCT gender FROM employees;

-- 19. Find distinct tax rates
SELECT DISTINCT tax_rate FROM invoices;

-- 20. Get distinct project statuses
SELECT DISTINCT status FROM projects;