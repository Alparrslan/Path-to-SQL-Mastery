-- File 4: correlated_subqueries.sql
-- Correlated subqueries

-- 1
SELECT name FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);

-- 2
SELECT name FROM customers c WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id AND o.status = 'delivered');

-- 3
SELECT id FROM products p WHERE price > (SELECT AVG(price) FROM products WHERE category_id = p.category_id);

-- 4
SELECT id FROM students s WHERE 2 < (SELECT COUNT(*) FROM enrollments e WHERE e.student_id = s.id);

-- 5
SELECT id FROM departments d WHERE EXISTS (SELECT 1 FROM employees e WHERE e.department_id = d.id);

-- 6
SELECT id FROM courses c WHERE (SELECT COUNT(*) FROM enrollments e WHERE e.course_id = c.id) > 50;

-- 7
SELECT id FROM projects p WHERE deadline < (SELECT MIN(deadline) FROM projects WHERE manager_id = p.manager_id);

-- 8
SELECT id FROM books b WHERE publication_year < (SELECT AVG(publication_year) FROM books WHERE author_id = b.author_id);

-- 9
SELECT id FROM reviews r WHERE rating < (SELECT AVG(rating) FROM reviews WHERE product_id = r.product_id);

-- 10
SELECT id FROM warehouses w WHERE capacity > (SELECT AVG(capacity) FROM warehouses WHERE region = w.region);

-- 11
SELECT id FROM suppliers s WHERE EXISTS (SELECT 1 FROM products p WHERE p.supplier_id = s.id);

-- 12
SELECT name FROM teams t WHERE (SELECT COUNT(*) FROM players p WHERE p.team_id = t.id) > 11;

-- 13
SELECT id FROM articles a WHERE word_count > (SELECT AVG(word_count) FROM articles WHERE author_id = a.author_id);

-- 14
SELECT id FROM flights f WHERE duration < (SELECT AVG(duration) FROM flights WHERE route_id = f.route_id);

-- 15
SELECT id FROM employees e WHERE hire_date = (SELECT MIN(hire_date) FROM employees WHERE department_id = e.department_id);

-- 16
SELECT id FROM assets a WHERE value > (SELECT AVG(value) FROM assets WHERE type = a.type);

-- 17
SELECT id FROM invoices i WHERE amount > (SELECT AVG(amount) FROM invoices WHERE customer_id = i.customer_id);

-- 18
SELECT id FROM doctors d WHERE (SELECT COUNT(*) FROM patients p WHERE p.doctor_id = d.id) > 100;

-- 19
SELECT id FROM complaints c WHERE severity > (SELECT AVG(severity) FROM complaints WHERE category = c.category);

-- 20
SELECT id FROM trainers t WHERE (SELECT COUNT(*) FROM sessions s WHERE s.trainer_id = t.id) > 5;
