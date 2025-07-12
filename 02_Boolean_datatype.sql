-- BOOLEAN Data Type

-- 1. Select all active users
SELECT * FROM users WHERE is_active = TRUE;

-- 2. Count of verified vs unverified users
SELECT is_verified, COUNT(*) FROM users GROUP BY is_verified;

-- 3. Filter items not deleted
SELECT * FROM items WHERE deleted IS FALSE;

-- 4. Users who agreed to terms but not verified
SELECT * FROM users WHERE accepted_terms = TRUE AND is_verified = FALSE;

-- 5. Find premium users
SELECT * FROM users WHERE is_premium;

-- 6. Group products by availability
SELECT in_stock, COUNT(*) FROM products GROUP BY in_stock;

-- 7. Invert a boolean value
SELECT NOT is_active AS is_inactive FROM users;

-- 8. Calculate boolean percentage
SELECT 100.0 * COUNT(*) FILTER (WHERE subscribed) / COUNT(*) AS subscribe_ratio FROM users;

-- 9. Boolean-based filter on transactions
SELECT * FROM transactions WHERE approved AND NOT flagged;

-- 10. Users with email confirmed
SELECT * FROM users WHERE email_confirmed IS TRUE;

-- 11. Customers opted out of marketing
SELECT * FROM customers WHERE marketing_opt_in = FALSE;

-- 12. Use boolean in CASE expression
SELECT user_id, CASE WHEN is_active THEN 'Active' ELSE 'Inactive' END AS status FROM users;

-- 13. Count of true/false fields
SELECT COUNT(*) FILTER (WHERE flag = TRUE) AS true_count, COUNT(*) FILTER (WHERE flag = FALSE) AS false_count FROM logs;

-- 14. Archived orders only
SELECT * FROM orders WHERE is_archived = TRUE;

-- 15. Pending and not canceled orders
SELECT * FROM orders WHERE is_pending = TRUE AND is_canceled = FALSE;

-- 16. Boolean filter with EXISTS
SELECT * FROM users u WHERE EXISTS (SELECT 1 FROM logins l WHERE l.user_id = u.id AND l.success = TRUE);

-- 17. Detect inconsistencies in status flags
SELECT * FROM users WHERE is_verified = FALSE AND verified_date IS NOT NULL;

-- 18. Show users with profile picture
SELECT * FROM users WHERE has_profile_picture;

-- 19. Boolean toggle example
UPDATE settings SET dark_mode = NOT dark_mode WHERE user_id = 123;

-- 20. Count admin vs non-admin users
SELECT is_admin, COUNT(*) FROM users GROUP BY is_admin;