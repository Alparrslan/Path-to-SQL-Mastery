-- EXTRACT() Function 

-- 1. Extract year from registration date
SELECT user_id, EXTRACT(YEAR FROM registered_at) AS reg_year FROM users;

-- 2. Monthly sales aggregation
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(amount) FROM sales GROUP BY month;

-- 3. Users signed up in a specific quarter
SELECT * FROM users WHERE EXTRACT(QUARTER FROM registered_at) = 2;

-- 4. Extract hour of user logins
SELECT user_id, EXTRACT(HOUR FROM login_time) AS login_hour FROM logins;

-- 5. Average purchase per weekday
SELECT EXTRACT(DOW FROM purchase_date) AS day_of_week, AVG(amount) FROM purchases GROUP BY day_of_week;

-- 6. Blog posts count by year
SELECT EXTRACT(YEAR FROM published_at) AS year, COUNT(*) FROM blog_posts GROUP BY year;

-- 7. Distribution of messages by hour
SELECT EXTRACT(HOUR FROM sent_at) AS hour, COUNT(*) FROM messages GROUP BY hour;

-- 8. Orders per quarter
SELECT EXTRACT(QUARTER FROM order_date) AS quarter, COUNT(*) FROM orders GROUP BY quarter;

-- 9. Customer service calls by day of week
SELECT EXTRACT(DOW FROM call_time) AS weekday, COUNT(*) FROM support_calls GROUP BY weekday;

-- 10. Extract minute from time logs
SELECT user_id, EXTRACT(MINUTE FROM activity_time) AS active_minute FROM activity_logs;

-- 11. Year-over-year user growth
SELECT EXTRACT(YEAR FROM created_at) AS year, COUNT(*) FROM users GROUP BY year;

-- 12. Monthly product launches
SELECT product_id, EXTRACT(MONTH FROM launch_date) AS month FROM products;

-- 13. Hourly access pattern
SELECT EXTRACT(HOUR FROM access_time) AS hour, COUNT(*) FROM access_log GROUP BY hour;

-- 14. Financial report cycle by quarter
SELECT EXTRACT(QUARTER FROM report_date) AS qtr, SUM(income) FROM financials GROUP BY qtr;

-- 15. Day of month stats for orders
SELECT EXTRACT(DAY FROM order_date) AS day, COUNT(*) FROM orders GROUP BY day;

-- 16. User activity grouped by login hour
SELECT EXTRACT(HOUR FROM login_time) AS hour, COUNT(*) FROM logins GROUP BY hour;

-- 17. Extract week number from shipment dates
SELECT shipment_id, EXTRACT(WEEK FROM shipped_date) AS week_num FROM shipments;

-- 18. Extract month & year together
SELECT EXTRACT(YEAR FROM invoice_date) AS year, EXTRACT(MONTH FROM invoice_date) AS month FROM invoices;

-- 19. Track holiday bookings by week
SELECT EXTRACT(WEEK FROM booking_date) AS booking_week, COUNT(*) FROM holidays GROUP BY booking_week;

-- 20. Users signing up on weekends
SELECT * FROM users WHERE EXTRACT(DOW FROM signup_date) IN (0, 6);