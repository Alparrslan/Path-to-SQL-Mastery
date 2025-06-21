-- File 1: subqueries_in_where.sql
-- Subqueries used in WHERE clause

-- 1
SELECT name FROM employees WHERE department_id IN (SELECT id FROM departments WHERE location = 'London');

-- 2
SELECT * FROM orders WHERE customer_id IN (SELECT id FROM customers WHERE country = 'Germany');

-- 3
SELECT product_id FROM sales WHERE quantity > (SELECT AVG(quantity) FROM sales);

-- 4
SELECT name FROM customers WHERE id NOT IN (SELECT customer_id FROM orders);

-- 5
SELECT employee_id FROM salaries WHERE salary > (SELECT MAX(salary) FROM salaries WHERE department_id = 3);

-- 6
SELECT id FROM projects WHERE manager_id IN (SELECT id FROM employees WHERE role = 'Project Manager');

-- 7
SELECT * FROM accounts WHERE balance < (SELECT MIN(balance) FROM accounts WHERE status = 'active');

-- 8
SELECT id FROM items WHERE price > (SELECT AVG(price) FROM items WHERE category = 'electronics');

-- 9
SELECT id FROM invoices WHERE amount > (SELECT AVG(amount) FROM invoices WHERE date BETWEEN '2023-01-01' AND '2023-12-31');

-- 10
SELECT id FROM assets WHERE acquisition_cost < (SELECT AVG(acquisition_cost) FROM assets);

-- 11
SELECT user_id FROM logins WHERE login_time > (SELECT MAX(login_time) FROM logins WHERE user_id = 1001);

-- 12
SELECT id FROM orders WHERE total < (SELECT AVG(total) FROM orders WHERE status = 'completed');

-- 13
SELECT name FROM products WHERE category_id IN (SELECT id FROM categories WHERE parent_id = 5);

-- 14
SELECT id FROM payments WHERE method IN (SELECT method FROM preferred_payment_methods);

-- 15
SELECT id FROM transactions WHERE status = 'failed' AND user_id IN (SELECT id FROM users WHERE region = 'Asia');

-- 16
SELECT id FROM drivers WHERE city_id IN (SELECT id FROM cities WHERE population > 1000000);

-- 17
SELECT item_id FROM returns WHERE reason_id IN (SELECT id FROM return_reasons WHERE is_customer_related = true);

-- 18
SELECT employee_id FROM timesheets WHERE hours > (SELECT AVG(hours) FROM timesheets);

-- 19
SELECT course_id FROM enrollments WHERE student_id NOT IN (SELECT student_id FROM dropouts);

-- 20
SELECT id FROM vehicles WHERE mileage < (SELECT AVG(mileage) FROM vehicles WHERE status = 'active');
