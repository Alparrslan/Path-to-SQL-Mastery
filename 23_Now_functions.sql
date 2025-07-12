-- NOW() Function 

-- 1. Users active in the last 10 minutes
SELECT username FROM user_activity WHERE last_seen >= NOW() - INTERVAL '10 minutes';

-- 2. Orders delayed more than 2 hours
SELECT order_id FROM orders WHERE NOW() - order_time > INTERVAL '2 hours';

-- 3. Current server load logs
SELECT * FROM server_logs WHERE log_time >= NOW() - INTERVAL '5 minutes';

-- 4. Sessions that started and are still open
SELECT session_id FROM sessions WHERE end_time IS NULL AND start_time <= NOW();

-- 5. Real-time alert trigger based on NOW
SELECT alert_id FROM alerts WHERE triggered_at >= NOW() - INTERVAL '1 hour';

-- 6. Users logged in within the last week
SELECT user_id FROM logins WHERE login_time >= NOW() - INTERVAL '7 days';

-- 7. Calculate age of latest blog posts
SELECT title, NOW() - published_at AS post_age FROM blog_posts;

-- 8. Incomplete transactions in the last 30 minutes
SELECT txn_id FROM transactions WHERE status = 'PENDING' AND created_at >= NOW() - INTERVAL '30 minutes';

-- 9. Show active support tickets opened today
SELECT * FROM support_tickets WHERE DATE(opened_at) = CURRENT_DATE;

-- 10. Count of failed logins today
SELECT COUNT(*) FROM login_attempts WHERE success = FALSE AND DATE(attempt_time) = CURRENT_DATE;

-- 11. Users with more than 3 logins in the last hour
SELECT user_id FROM logins WHERE login_time >= NOW() - INTERVAL '1 hour' GROUP BY user_id HAVING COUNT(*) > 3;

-- 12. Detect password changes in the last 24 hours
SELECT user_id FROM password_logs WHERE changed_at >= NOW() - INTERVAL '1 day';

-- 13. Latest comment on each post
SELECT DISTINCT ON (post_id) post_id, comment, commented_at FROM comments ORDER BY post_id, commented_at DESC;

-- 14. Orders placed within business hours today
SELECT * FROM orders WHERE DATE(order_time) = CURRENT_DATE AND EXTRACT(HOUR FROM order_time) BETWEEN 9 AND 17;

-- 15. Calculate uptime since last restart
SELECT server_name, NOW() - last_restart_time AS uptime FROM servers;

-- 16. Sessions ending in the next 15 minutes
SELECT * FROM sessions WHERE end_time BETWEEN NOW() AND NOW() + INTERVAL '15 minutes';

-- 17. Events scheduled in next hour
SELECT * FROM calendar WHERE event_time BETWEEN NOW() AND NOW() + INTERVAL '1 hour';

-- 18. Users inactive for over 30 days
SELECT * FROM users WHERE last_seen < NOW() - INTERVAL '30 days';

-- 19. Recent error logs
SELECT * FROM logs WHERE severity = 'ERROR' AND log_time >= NOW() - INTERVAL '6 hours';

-- 20. Comments posted in the last 12 hours
SELECT * FROM comments WHERE commented_at >= NOW() - INTERVAL '12 hours';
