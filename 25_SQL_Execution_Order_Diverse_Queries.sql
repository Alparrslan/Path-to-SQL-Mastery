SELECT customer_name, city FROM customers WHERE city IN ('London', 'Berlin') ORDER BY customer_name;

SELECT product_name, unit_price FROM products WHERE unit_price BETWEEN 20 AND 50 ORDER BY unit_price DESC;

SELECT first_name, hire_date FROM employees WHERE hire_date < '2015-01-01' ORDER BY hire_date;

SELECT country_id, city FROM locations WHERE state_province IS NOT NULL ORDER BY country_id, city;

SELECT department_name FROM departments WHERE manager_id IS NOT NULL ORDER BY department_name;

SELECT job_id, MAX(salary) FROM employees GROUP BY job_id;

SELECT status, COUNT(*) FROM orders GROUP BY status ORDER BY COUNT(*) DESC;

SELECT product_id, AVG(unit_price) FROM products GROUP BY product_id HAVING AVG(unit_price) > 30;

SELECT supplier_id, COUNT(product_id) FROM products GROUP BY supplier_id;

SELECT city, COUNT(*) FROM customers GROUP BY city HAVING COUNT(*) > 2;

WITH ActiveOrders AS (SELECT * FROM orders WHERE status = 'Shipped') SELECT o.customer_id, COUNT(*) FROM ActiveOrders o GROUP BY o.customer_id;

WITH DepartmentCount AS (SELECT department_id, COUNT(*) AS emp_count FROM employees GROUP BY department_id) SELECT * FROM DepartmentCount WHERE emp_count >= 5;

WITH RecentHires AS (SELECT * FROM employees WHERE hire_date > '2022-01-01') SELECT job_id, COUNT(*) FROM RecentHires GROUP BY job_id;

WITH HighValueOrders AS (SELECT order_id, customer_id FROM orders WHERE total_amount > 1000) SELECT customer_id, COUNT(*) FROM HighValueOrders GROUP BY customer_id;

WITH ProductSales AS (SELECT product_id, SUM(quantity) AS total_qty FROM order_items GROUP BY product_id) SELECT * FROM ProductSales WHERE total_qty BETWEEN 50 AND 200;

SELECT * FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'IT');

SELECT * FROM products WHERE product_id IN (SELECT product_id FROM order_items WHERE quantity > 5);

SELECT * FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders);

SELECT * FROM orders WHERE order_date = (SELECT MAX(order_date) FROM orders);

SELECT * FROM departments WHERE department_id NOT IN (SELECT DISTINCT department_id FROM employees);

