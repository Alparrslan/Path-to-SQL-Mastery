-- SUBSTR, LEFT, RIGHT, and extraction logic.

-- Query 1
SELECT SUBSTR(name, 1, 3) AS prefix FROM employees;

-- Query 2
SELECT RIGHT(ssn, 4) FROM users;

-- Query 3
SELECT LEFT(zipcode, 2) FROM addresses;

-- Query 4
SELECT SUBSTR(email, LOCATE('@', email) + 1) AS domain FROM users;

-- Query 5
SELECT SUBSTR(description, 5, 10) FROM products;

-- Query 6
SELECT SUBSTRING_INDEX(email, '@', 1) FROM users;

-- Query 7
SELECT SUBSTR(phone, LENGTH(phone)-3, 4) FROM contacts;

-- Query 8
SELECT SUBSTR(url, LOCATE('://', url)+3) FROM links;

-- Query 9
SELECT RIGHT(name, CHAR_LENGTH(name) - LOCATE(' ', name)) FROM customers;

-- Query 10
SELECT LEFT(title, LOCATE(':', title)-1) FROM documents WHERE title LIKE '%:%';

-- Query 11
SELECT SUBSTR(comment, INSTR(comment, 'error'), 20) FROM logs WHERE comment LIKE '%error%';

-- Query 12
SELECT RIGHT(serial_number, 6) FROM devices;

-- Query 13
SELECT SUBSTR(path, 1, LOCATE('/', path)-1) FROM files;

-- Query 14
SELECT SUBSTR(name, -3) FROM products;

-- Query 15
SELECT SUBSTR(code, 3, LENGTH(code)-5) FROM inventory;

-- Query 16
SELECT LEFT(message, CHAR_LENGTH(message)/2) FROM feedback;

-- Query 17
SELECT SUBSTR(description, LOCATE(' ', description)) FROM tasks WHERE description LIKE '% %';

-- Query 18
SELECT RIGHT(email, CHAR_LENGTH(email) - LOCATE('@', email)) FROM subscribers;

-- Query 19
SELECT SUBSTR(username, 2, 4) FROM accounts;

-- Query 20
SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(url, '/', 3), '/', -1) FROM logs;