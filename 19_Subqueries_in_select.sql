-- File 2: subqueries_in_select.sql
-- Subqueries used in SELECT clause

-- 1
SELECT name, (SELECT COUNT(*) FROM orders WHERE customer_id = customers.id) AS order_count FROM customers;

-- 2
SELECT id, (SELECT AVG(score) FROM reviews WHERE product_id = products.id) AS avg_review FROM products;

-- 3
SELECT name, (SELECT salary FROM salaries WHERE employee_id = employees.id ORDER BY date DESC LIMIT 1) AS latest_salary FROM employees;

-- 4
SELECT id, (SELECT COUNT(*) FROM comments WHERE post_id = posts.id) AS comment_count FROM posts;

-- 5
SELECT id, (SELECT MAX(price) FROM offers WHERE item_id = items.id) AS max_offer FROM items;

-- 6
SELECT department_id, (SELECT COUNT(*) FROM employees e WHERE e.department_id = d.id) AS employee_count FROM departments d;

-- 7
SELECT id, (SELECT MIN(delivery_date) FROM shipments WHERE order_id = orders.id) AS first_delivery FROM orders;

-- 8
SELECT name, (SELECT SUM(amount) FROM donations WHERE donor_id = donors.id) AS total_donated FROM donors;

-- 9
SELECT id, (SELECT COUNT(*) FROM enrollments WHERE course_id = courses.id) AS student_count FROM courses;

-- 10
SELECT id, (SELECT MAX(login_time) FROM logins WHERE user_id = users.id) AS last_login FROM users;

-- 11
SELECT id, (SELECT COUNT(*) FROM purchases WHERE buyer_id = users.id) AS total_purchases FROM users;

-- 12
SELECT id, (SELECT SUM(duration) FROM sessions WHERE user_id = users.id) AS total_time FROM users;

-- 13
SELECT id, (SELECT AVG(score) FROM evaluations WHERE employee_id = employees.id) AS avg_score FROM employees;

-- 14
SELECT id, (SELECT COUNT(*) FROM views WHERE product_id = products.id) AS view_count FROM products;

-- 15
SELECT id, (SELECT SUM(amount) FROM payments WHERE invoice_id = invoices.id) AS paid_total FROM invoices;

-- 16
SELECT id, (SELECT COUNT(*) FROM followers WHERE followed_id = users.id) AS follower_count FROM users;

-- 17
SELECT id, (SELECT MIN(start_date) FROM contracts WHERE client_id = clients.id) AS first_contract FROM clients;

-- 18
SELECT id, (SELECT COUNT(*) FROM checkins WHERE location_id = locations.id) AS checkin_total FROM locations;

-- 19
SELECT id, (SELECT COUNT(*) FROM messages WHERE sender_id = users.id) AS sent_messages FROM users;

-- 20
SELECT id, (SELECT COUNT(*) FROM uploads WHERE owner_id = users.id) AS uploads FROM users;
