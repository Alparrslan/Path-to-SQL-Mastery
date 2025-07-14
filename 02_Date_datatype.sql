-- DATE Data Type 

-- 1. Find events happening today
SELECT * FROM events WHERE event_date = CURRENT_DATE;

-- 2. Employees with anniversaries today
SELECT * FROM employees WHERE EXTRACT(MONTH FROM hire_date) = EXTRACT(MONTH FROM CURRENT_DATE)
  AND EXTRACT(DAY FROM hire_date) = EXTRACT(DAY FROM CURRENT_DATE);

-- 3. Orders shipped later than 7 days after order
SELECT * FROM orders WHERE shipped_date > order_date + INTERVAL '7 days';

-- 4. Bookings in the next week
SELECT * FROM bookings WHERE booking_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';

-- 5. Memberships that expired last month
SELECT * FROM memberships WHERE expiry_date BETWEEN DATE_TRUNC('month', CURRENT_DATE - INTERVAL '1 month')
  AND DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 day';

-- 6. Filter past due invoices
SELECT * FROM invoices WHERE due_date < CURRENT_DATE;

-- 7. Users born in leap years
SELECT * FROM users WHERE EXTRACT(YEAR FROM birth_date) % 4 = 0;

-- 8. Contracts signed over 5 years ago
SELECT * FROM contracts WHERE signed_date < CURRENT_DATE - INTERVAL '5 years';

-- 9. Number of users joined each month
SELECT DATE_TRUNC('month', signup_date) AS month, COUNT(*) FROM users GROUP BY month;

-- 10. Events grouped by weekday
SELECT EXTRACT(DOW FROM event_date) AS weekday, COUNT(*) FROM events GROUP BY weekday;

-- 11. Projects ending this quarter
SELECT * FROM projects WHERE end_date <= DATE_TRUNC('quarter', CURRENT_DATE + INTERVAL '3 months') - INTERVAL '1 day';

-- 12. Compare delivery and invoice dates
SELECT * FROM orders WHERE DATE(delivery_date) != DATE(invoice_date);

-- 13. Users whose birthdays are this week
SELECT * FROM users WHERE EXTRACT(DOY FROM birth_date) BETWEEN EXTRACT(DOY FROM CURRENT_DATE) AND EXTRACT(DOY FROM CURRENT_DATE + INTERVAL '7 days');

-- 14. Orders placed exactly one year ago
SELECT * FROM orders WHERE order_date = CURRENT_DATE - INTERVAL '1 year';

-- 15. Employees working more than 1000 days
SELECT * FROM employees WHERE CURRENT_DATE - hire_date > 1000;

-- 16. Products launched on weekends
SELECT * FROM products WHERE EXTRACT(DOW FROM launch_date) IN (0, 6);

-- 17. Difference in days between two date columns
SELECT id, (end_date - start_date) AS duration_days FROM projects;

-- 18. Identify contracts about to expire
SELECT * FROM contracts WHERE expiry_date <= CURRENT_DATE + INTERVAL '10 days';

-- 19. Group loans by year of approval
SELECT EXTRACT(YEAR FROM approved_date) AS year, COUNT(*) FROM loans GROUP BY year;

-- 20. Monthly average sales date by product
SELECT product_id, DATE_TRUNC('month', sale_date) AS month, AVG(sale_date) FROM sales GROUP BY product_id, month;