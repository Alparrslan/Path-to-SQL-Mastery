-- Execution Order Advanced Examples

SELECT department_id, COUNT(*) AS total_employees FROM employees GROUP BY department_id HAVING COUNT(*) > 10 ORDER BY total_employees DESC;

SELECT job_id, AVG(salary) AS avg_salary FROM employees WHERE salary > 5000 GROUP BY job_id HAVING AVG(salary) > 7000;

SELECT e.manager_id, COUNT(*) FROM employees e WHERE e.hire_date >= '2020-01-01' GROUP BY e.manager_id;

SELECT d.department_name, COUNT(e.employee_id) FROM employees e JOIN departments d ON e.department_id = d.department_id GROUP BY d.department_name ORDER BY COUNT(e.employee_id) DESC;

SELECT country_id, COUNT(*) FROM locations WHERE city LIKE 'S%' GROUP BY country_id HAVING COUNT(*) >= 2;

SELECT c.customer_name, COUNT(o.order_id) AS total_orders FROM customers c JOIN orders o ON c.customer_id = o.customer_id WHERE o.order_date >= '2022-01-01' GROUP BY c.customer_name ORDER BY total_orders DESC;

SELECT p.product_name, SUM(oi.quantity) FROM products p JOIN order_items oi ON p.product_id = oi.product_id GROUP BY p.product_name ORDER BY SUM(oi.quantity) DESC;

SELECT e.first_name, e.last_name, d.department_name FROM employees e JOIN departments d ON e.department_id = d.department_id WHERE d.location_id IN (1400, 1500);

SELECT j.job_title, AVG(e.salary) FROM employees e JOIN jobs j ON e.job_id = j.job_id GROUP BY j.job_title HAVING AVG(e.salary) BETWEEN 5000 AND 10000;

SELECT l.city, COUNT(*) FROM locations l JOIN departments d ON l.location_id = d.location_id GROUP BY l.city ORDER BY COUNT(*) DESC;

SELECT employee_id, first_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT department_id, department_name FROM departments WHERE department_id IN (SELECT department_id FROM employees WHERE job_id = 'IT_PROG');

SELECT e.first_name, e.salary FROM employees e WHERE e.salary = (SELECT MAX(salary) FROM employees);

SELECT p.product_name FROM products p WHERE p.product_id NOT IN (SELECT product_id FROM order_items);

SELECT * FROM orders o WHERE EXISTS (SELECT 1 FROM order_items oi WHERE oi.order_id = o.order_id AND quantity >= 10);

WITH HighSalary AS (SELECT * FROM employees WHERE salary > 10000) SELECT department_id, COUNT(*) FROM HighSalary GROUP BY department_id;

WITH OrderStats AS (SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id) SELECT * FROM OrderStats WHERE order_count >= 5;

WITH Sales AS (SELECT product_id, SUM(quantity) AS total_qty FROM order_items GROUP BY product_id) SELECT * FROM Sales WHERE total_qty > 100;

WITH RegionalEmployees AS (SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1700)) SELECT job_id, COUNT(*) FROM RegionalEmployees GROUP BY job_id;

WITH DateRangeOrders AS (SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31') SELECT COUNT(*) FROM DateRangeOrders;