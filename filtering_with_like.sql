-- 1. Find customers whose name starts with 'A'
SELECT * FROM customers WHERE name LIKE 'A%';

-- 2. Search products containing 'Pro'
SELECT * FROM products WHERE name LIKE '%Pro%';

-- 3. Match emails ending with '@gmail.com'
SELECT * FROM users WHERE email LIKE '%@gmail.com';

-- 4. Find cities starting with 'New'
SELECT * FROM cities WHERE name LIKE 'New%';

-- 5. Names ending in 'son'
SELECT * FROM employees WHERE name LIKE '%son';

-- 6. Products with '2024' in their description
SELECT * FROM products WHERE description LIKE '%2024%';

-- 7. Names containing double letters
SELECT * FROM people WHERE name LIKE '%tt%' OR name LIKE '%ll%' OR name LIKE '%ee%';

-- 8. Find users with usernames like 'admin%'
SELECT * FROM users WHERE username LIKE 'admin%';

-- 9. Titles containing exact phrase 'Data'
SELECT * FROM books WHERE title LIKE '%Data%';

-- 10. Filter customers where name includes 'th'
SELECT * FROM customers WHERE name LIKE '%th%';

-- 11. Cities with hyphen in name
SELECT * FROM cities WHERE name LIKE '%-%';

-- 12. Names starting with a vowel
SELECT * FROM students WHERE name LIKE 'A%' OR name LIKE 'E%' OR name LIKE 'I%' OR name LIKE 'O%' OR name LIKE 'U%';

-- 13. Emails with domain 'yahoo'
SELECT * FROM users WHERE email LIKE '%@yahoo.%';

-- 14. Products with code starting 'X1'
SELECT * FROM products WHERE code LIKE 'X1%';

-- 15. Books whose titles include 'Guide'
SELECT * FROM books WHERE title LIKE '%Guide%';