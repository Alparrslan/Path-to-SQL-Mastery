-- INTERVAL Function 

-- 1. Users inactive for more than 6 months
SELECT * FROM users WHERE last_login < CURRENT_DATE - INTERVAL '6 months';

-- 2. Orders placed in the last 90 days
SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '90 days';

-- 3. Subscriptions expiring within next 15 days
SELECT * FROM subscriptions WHERE expiry_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '15 days';

-- 4. Employees with 5+ years of service
SELECT * FROM employees WHERE hire_date <= CURRENT_DATE - INTERVAL '5 years';

-- 5. Identify late shipments (more than 10 days)
SELECT * FROM shipments WHERE delivery_date > order_date + INTERVAL '10 days';

-- 6. Content published within last week
SELECT * FROM content WHERE published_at >= CURRENT_DATE - INTERVAL '7 days';

-- 7. Payments due within next 3 days
SELECT * FROM payments WHERE due_date <= CURRENT_DATE + INTERVAL '3 days';

-- 8. Logs older than 1 year
SELECT * FROM logs WHERE created_at < CURRENT_DATE - INTERVAL '1 year';

-- 9. Filter records modified exactly 30 days ago
SELECT * FROM records WHERE modified_at::date = CURRENT_DATE - INTERVAL '30 days';

-- 10. Calculate subscription durations
SELECT user_id, expiry_date - start_date AS duration FROM subscriptions;

-- 11. Identify trials expiring in next 24 hours
SELECT * FROM trials WHERE expires_at <= NOW() + INTERVAL '24 hours';

-- 12. Flag overdue tasks
SELECT * FROM tasks WHERE deadline < CURRENT_DATE;

-- 13. Loyalty members joined over 2 years ago
SELECT * FROM members WHERE joined_at < CURRENT_DATE - INTERVAL '2 years';

-- 14. Find invoices older than 60 days
SELECT * FROM invoices WHERE issue_date < CURRENT_DATE - INTERVAL '60 days';

-- 15. Count tickets resolved in last 48 hours
SELECT COUNT(*) FROM tickets WHERE resolved_at >= NOW() - INTERVAL '48 hours';

-- 16. Bookings made between 1 and 2 months ago
SELECT * FROM bookings WHERE booked_at BETWEEN CURRENT_DATE - INTERVAL '2 months' AND CURRENT_DATE - INTERVAL '1 month';

-- 17. Retention cohort: users active after 14 days
SELECT user_id FROM activity WHERE last_active >= signup_date + INTERVAL '14 days';

-- 18. Calculate delay between order and shipment
SELECT order_id, shipped_date - order_date AS delay_days FROM orders;

-- 19. Rentals ending in the next week
SELECT * FROM rentals WHERE end_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';

-- 20. Tasks created in the past 2 days
SELECT * FROM tasks WHERE created_at >= CURRENT_DATE - INTERVAL '2 days';