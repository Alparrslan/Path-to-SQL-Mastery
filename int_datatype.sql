-- INT Data Type - Intermediate and Advanced Queries

-- 1. Customers with age between 30 and 40
SELECT * FROM customers WHERE age BETWEEN 30 AND 40;

-- 2. Orders with quantity greater than average
SELECT * FROM orders WHERE quantity > (SELECT AVG(quantity) FROM orders);

-- 3. Employees with more than 5 years tenure
SELECT * FROM employees WHERE EXTRACT(YEAR FROM AGE(NOW(), hire_date)) > 5;

-- 4. Products with even numbered IDs
SELECT * FROM products WHERE product_id % 2 = 0;

-- 5. Users with more than 3 login attempts
SELECT user_id FROM login_attempts GROUP BY user_id HAVING COUNT(*) > 3;

-- 6. Items with stock below reorder level
SELECT * FROM inventory WHERE stock < reorder_level;

-- 7. Count users by access level
SELECT access_level, COUNT(*) FROM users GROUP BY access_level;

-- 8. Orders with product count multiples of 5
SELECT * FROM orders WHERE product_count % 5 = 0;

-- 9. Sum of quantities sold per product
SELECT product_id, SUM(quantity) FROM sales GROUP BY product_id;

-- 10. Users with prime number IDs (sample logic)
SELECT * FROM users WHERE user_id IN (2, 3, 5, 7, 11, 13, 17, 19, 23);

-- 11. Find gaps in ID sequence
SELECT id + 1 AS missing_id FROM records r WHERE NOT EXISTS (SELECT 1 FROM records WHERE id = r.id + 1);

-- 12. Assign ranking to top customers
SELECT user_id, RANK() OVER (ORDER BY total_spent DESC) FROM customers;

-- 13. Calculate modulo of user IDs
SELECT user_id, user_id % 10 AS bucket FROM users;

-- 14. Filter users by number of purchases
SELECT user_id FROM purchases GROUP BY user_id HAVING COUNT(*) BETWEEN 5 AND 10;

-- 15. Orders where quantity equals item number
SELECT * FROM orders WHERE quantity = item_no;

-- 16. Number of employees per department
SELECT department_id, COUNT(*) FROM employees GROUP BY department_id;

-- 17. Students with odd-numbered roll numbers
SELECT * FROM students WHERE roll_no % 2 = 1;

-- 18. Top 10 users by login count
SELECT user_id, COUNT(*) AS login_count FROM logins GROUP BY user_id ORDER BY login_count DESC LIMIT 10;

-- 19. Filter transactions using bitwise operations
SELECT * FROM transactions WHERE flags & 1 = 1;

-- 20. Users with exactly 3 failed attempts
SELECT user_id FROM login_attempts WHERE success = FALSE GROUP BY user_id HAVING COUNT(*) = 3;