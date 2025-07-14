-- VARCHAR Data Type - Intermediate and Advanced Queries

-- 1. Users with email ending in '.edu'
SELECT * FROM users WHERE email LIKE '%.edu';

-- 2. Products containing 'Pro' in name
SELECT * FROM products WHERE name ILIKE '%Pro%';

-- 3. Detect names with double spaces
SELECT * FROM users WHERE name LIKE '%  %';

-- 4. Email domains and counts
SELECT SUBSTRING(email FROM POSITION('@' IN email) + 1) AS domain, COUNT(*) FROM users GROUP BY domain;

-- 5. Normalize phone numbers
SELECT REPLACE(REPLACE(phone, '-', ''), ' ', '') AS normalized_phone FROM contacts;

-- 6. Users with palindrome usernames
SELECT * FROM users WHERE username = REVERSE(username);

-- 7. Group users by first letter of username
SELECT LEFT(username, 1) AS initial, COUNT(*) FROM users GROUP BY initial;

-- 8. Identify usernames containing digits
SELECT * FROM users WHERE username ~ '[0-9]';

-- 9. Extract hashtags from posts
SELECT REGEXP_MATCHES(content, '#\w+', 'g') FROM posts;

-- 10. Users whose names start and end with same letter
SELECT * FROM users WHERE LOWER(LEFT(name, 1)) = LOWER(RIGHT(name, 1));

-- 11. Count distinct last names
SELECT COUNT(DISTINCT last_name) FROM employees;

-- 12. Trim trailing whitespace in fields
SELECT TRIM(TRAILING FROM comments) FROM feedback;

-- 13. Compare strings ignoring case
SELECT * FROM users WHERE LOWER(username) = LOWER('JohnDoe');

-- 14. Detect special characters in usernames
SELECT * FROM users WHERE username ~ '[^a-zA-Z0-9_]';

-- 15. Validate email pattern
SELECT * FROM users WHERE email ~ '^[\w._%+-]+@[\w.-]+\.[a-zA-Z]{2,}$';

-- 16. Search for keyword in support messages
SELECT * FROM support_messages WHERE message_text ILIKE '%refund%';

-- 17. Replace banned words in content
SELECT REPLACE(content, 'spoiler', '***') FROM reviews;

-- 18. Concatenate first and last name
SELECT first_name || ' ' || last_name AS full_name FROM users;

-- 19. Find longest usernames
SELECT username FROM users ORDER BY LENGTH(username) DESC LIMIT 5;

-- 20. Group products by brand prefix
SELECT SPLIT_PART(name, ' ', 1) AS brand, COUNT(*) FROM products GROUP BY brand;