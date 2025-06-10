
-- 1. Find customers without a phone number
SELECT * FROM customers WHERE phone IS NULL;

-- 2. Find orders that have been shipped
SELECT * FROM orders WHERE shipped_date IS NOT NULL;

-- 3. Get employees with no manager assigned
SELECT * FROM employees WHERE manager_id IS NULL;

-- 4. Get products that are still in stock
SELECT * FROM products WHERE discontinued IS NOT NULL;

-- 5. List users who have not updated their profile
SELECT * FROM users WHERE profile_updated_at IS NULL;

-- 6. Get invoices that are not paid yet
SELECT * FROM invoices WHERE payment_date IS NULL;

-- 7. Get books that have an assigned ISBN
SELECT * FROM books WHERE isbn IS NOT NULL;

-- 8. Find students who have submitted their thesis
SELECT * FROM students WHERE thesis_submission_date IS NOT NULL;

-- 9. Get transactions with missing descriptions
SELECT * FROM transactions WHERE description IS NULL;

-- 10. List employees whose email is set
SELECT * FROM employees WHERE email IS NOT NULL;

-- 11. Find appointments without confirmation
SELECT * FROM appointments WHERE confirmed_at IS NULL;

-- 12. Find reviews that are verified
SELECT * FROM reviews WHERE verified_at IS NOT NULL;

-- 13. Find customers who haven't added a shipping address
SELECT * FROM customers WHERE shipping_address IS NULL;

-- 14. Get events with a known location
SELECT * FROM events WHERE location IS NOT NULL;

-- 15. Get support tickets that are still open
SELECT * FROM tickets WHERE resolved_at IS NULL;

-- 16. Find products with missing warranty information
SELECT * FROM products WHERE warranty_period IS NULL;

-- 17. List payments that are successfully processed
SELECT * FROM payments WHERE processed_at IS NOT NULL;

-- 18. Get promotions with start dates defined
SELECT * FROM promotions WHERE start_date IS NOT NULL;

-- 19. Find blog posts without a featured image
SELECT * FROM blog_posts WHERE featured_image IS NULL;

-- 20. Get users who have confirmed their email
SELECT * FROM users WHERE email_confirmed_at IS NOT NULL;
