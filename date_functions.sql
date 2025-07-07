-- DATE() Function - Intermediate and Advanced Queries

-- 1. Daily new user registrations
SELECT DATE(created_at) AS reg_date, COUNT(*) FROM users GROUP BY reg_date;

-- 2. Compare DATE() values from two tables
SELECT u.id FROM users u JOIN sessions s ON DATE(u.created_at) = DATE(s.started_at);

-- 3. Orders placed on weekends
SELECT * FROM orders WHERE EXTRACT(DOW FROM order_time) IN (0, 6);

-- 4. Employees hired on the same day
SELECT * FROM employees e1 JOIN employees e2 ON DATE(e1.hire_date) = DATE(e2.hire_date) AND e1.id <> e2.id;

-- 5. Revenue comparison by day
SELECT DATE(sale_time) AS day, SUM(amount) FROM sales GROUP BY day ORDER BY day DESC;

-- 6. Group blog posts by publishing weekday
SELECT EXTRACT(DOW FROM published_at) AS weekday, COUNT(*) FROM blog_posts GROUP BY weekday;

-- 7. Detect date gaps in sequence
SELECT curr.id, curr.event_date FROM events curr LEFT JOIN events prev ON DATE(curr.event_date) = DATE(prev.event_date + INTERVAL '1 day') WHERE prev.id IS NULL;

-- 8. App usage grouped by date
SELECT DATE(logged_at), COUNT(*) FROM app_logs GROUP BY DATE(logged_at);

-- 9. Filter contracts expiring today
SELECT * FROM contracts WHERE DATE(expiry_date) = CURRENT_DATE;

-- 10. Find employees with birthdays today
SELECT * FROM employees WHERE EXTRACT(MONTH FROM birth_date) = EXTRACT(MONTH FROM CURRENT_DATE) AND EXTRACT(DAY FROM birth_date) = EXTRACT(DAY FROM CURRENT_DATE);

-- 11. Revenue trends for last 14 days
SELECT DATE(sale_time), SUM(amount) FROM sales WHERE sale_time >= CURRENT_DATE - INTERVAL '14 days' GROUP BY DATE(sale_time);

-- 12. Count of logins per day
SELECT DATE(login_time) AS login_day, COUNT(*) FROM logins GROUP BY login_day;

-- 13. Orders not delivered on the same day
SELECT * FROM orders WHERE DATE(order_time) <> DATE(delivery_time);

-- 14. Identify events outside business days
SELECT * FROM events WHERE EXTRACT(DOW FROM event_time) BETWEEN 1 AND 5;

-- 15. Daily maximum temperatures
SELECT DATE(measured_at), MAX(temp) FROM weather GROUP BY DATE(measured_at);

-- 16. User activity grouped by week day
SELECT EXTRACT(DOW FROM activity_time) AS weekday, COUNT(*) FROM activity_log GROUP BY weekday;

-- 17. Tasks overdue as of today
SELECT * FROM tasks WHERE due_date < CURRENT_DATE AND completed = FALSE;

-- 18. Orders placed exactly 1 year ago
SELECT * FROM orders WHERE DATE(order_time) = CURRENT_DATE - INTERVAL '1 year';

-- 19. Attendance logs with missing dates
SELECT employee_id FROM attendance GROUP BY employee_id HAVING COUNT(DISTINCT DATE(logged_at)) < 20;

-- 20. Count of support tickets per date
SELECT DATE(created_at), COUNT(*) FROM support_tickets GROUP BY DATE(created_at);