-- File 3: subqueries_in_from.sql
-- Subqueries used in FROM clause

-- 1
SELECT AVG(total_orders) FROM (
  SELECT customer_id, COUNT(*) AS total_orders FROM orders GROUP BY customer_id
) AS order_summary;

-- 2
SELECT department_id, AVG(avg_salary) FROM (
  SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id
) AS dept_avg GROUP BY department_id;

-- 3
SELECT name FROM (
  SELECT name, COUNT(*) AS project_count FROM employees JOIN projects ON employees.id = projects.manager_id GROUP BY name
) AS manager_projects WHERE project_count > 3;

-- 4
SELECT product_id FROM (
  SELECT product_id, SUM(quantity) AS total_quantity FROM sales GROUP BY product_id
) AS sales_summary WHERE total_quantity > 500;

-- 5
SELECT * FROM (
  SELECT id, score, RANK() OVER (ORDER BY score DESC) AS rank FROM evaluations
) AS ranked_scores WHERE rank <= 10;

-- 6
SELECT AVG(spending) FROM (
  SELECT customer_id, SUM(amount) AS spending FROM transactions GROUP BY customer_id
) AS spending_summary;

-- 7
SELECT location FROM (
  SELECT location, COUNT(*) AS visit_count FROM checkins GROUP BY location
) AS location_stats WHERE visit_count > 100;

-- 8
SELECT student_id FROM (
  SELECT student_id, COUNT(*) AS enrolled_courses FROM enrollments GROUP BY student_id
) AS enroll_summary WHERE enrolled_courses > 5;

-- 9
SELECT project_id FROM (
  SELECT project_id, COUNT(*) AS task_count FROM tasks GROUP BY project_id
) AS task_summary WHERE task_count > 10;

-- 10
SELECT author_id FROM (
  SELECT author_id, SUM(likes) AS total_likes FROM posts GROUP BY author_id
) AS like_summary WHERE total_likes > 1000;

-- 11
SELECT id FROM (
  SELECT id, DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank FROM employees
) AS ranked WHERE salary_rank <= 5;

-- 12
SELECT * FROM (
  SELECT product_id, AVG(score) AS avg_score FROM reviews GROUP BY product_id
) AS review_summary WHERE avg_score > 4;

-- 13
SELECT user_id FROM (
  SELECT user_id, COUNT(*) AS total_visits FROM visits GROUP BY user_id
) AS visit_summary WHERE total_visits > 20;

-- 14
SELECT region FROM (
  SELECT region, SUM(sales) AS total_sales FROM regions GROUP BY region
) AS sales_by_region WHERE total_sales > 50000;

-- 15
SELECT teacher_id FROM (
  SELECT teacher_id, COUNT(*) AS class_count FROM classes GROUP BY teacher_id
) AS teacher_summary WHERE class_count > 4;

-- 16
SELECT id FROM (
  SELECT id, login_count FROM (
    SELECT id, COUNT(*) AS login_count FROM logins GROUP BY id
  ) AS inner_summary
) AS final_summary WHERE login_count > 10;

-- 17
SELECT customer_id FROM (
  SELECT customer_id, SUM(total) AS spending FROM invoices GROUP BY customer_id
) AS invoice_summary WHERE spending > 1000;

-- 18
SELECT supplier_id FROM (
  SELECT supplier_id, COUNT(*) AS product_count FROM products GROUP BY supplier_id
) AS product_summary WHERE product_count > 15;

-- 19
SELECT id FROM (
  SELECT id, AVG(score) OVER (PARTITION BY department_id) AS dept_avg_score FROM evaluations
) AS scores WHERE dept_avg_score > 75;

-- 20
SELECT employee_id FROM (
  SELECT employee_id, COUNT(*) AS total_actions FROM actions GROUP BY employee_id
) AS action_summary WHERE total_actions > 30;
