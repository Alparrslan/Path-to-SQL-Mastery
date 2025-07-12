-- Advanced queries using LENGTH, CHAR_LENGTH, and related functions

-- Query 1
SELECT name FROM employees WHERE LENGTH(name) > 10;

-- Query 2
SELECT name, LENGTH(name) AS name_length FROM employees ORDER BY name_length DESC;

-- Query 3
SELECT department, AVG(CHAR_LENGTH(description)) FROM projects GROUP BY department;

-- Query 4
SELECT name FROM customers WHERE LENGTH(REPLACE(name, ' ', '')) > 15;

-- Query 5
SELECT title FROM books WHERE LENGTH(title) = (SELECT MAX(LENGTH(title)) FROM books);

-- Query 6
SELECT username FROM users WHERE CHAR_LENGTH(username) BETWEEN 5 AND 12;

-- Query 7
SELECT email FROM users WHERE LENGTH(SUBSTRING_INDEX(email, '@', 1)) > 8;

-- Query 8
SELECT name, LENGTH(TRIM(name)) FROM suppliers;

-- Query 9
SELECT product_name FROM products WHERE LENGTH(REPLACE(product_name, '-', '')) = 12;

-- Query 10
SELECT user_id FROM logs WHERE LENGTH(comment) != CHAR_LENGTH(comment);

-- Query 11
SELECT message FROM feedback WHERE LENGTH(message) > 100;

-- Query 12
SELECT COUNT(*) FROM documents WHERE LENGTH(content) > 5000;

-- Query 13
SELECT title FROM movies WHERE LENGTH(REPLACE(title, ' ', '')) = LENGTH(title);

-- Query 14
SELECT name FROM students WHERE LENGTH(name) = LENGTH(REVERSE(name));

-- Query 15
SELECT author FROM articles WHERE LENGTH(author) % 2 = 0;

-- Query 16
SELECT city FROM locations WHERE LENGTH(city) = (SELECT MIN(LENGTH(city)) FROM locations);

-- Query 17
SELECT description FROM issues WHERE LENGTH(description) - CHAR_LENGTH(REPLACE(description, ' ', '')) > 5;

-- Query 18
SELECT job_title FROM employees WHERE CHAR_LENGTH(job_title) >= ALL (SELECT CHAR_LENGTH(job_title) FROM employees);

-- Query 19
SELECT url FROM links WHERE LENGTH(url) LIKE '%3';

-- Query 20
SELECT comment FROM reviews WHERE LENGTH(comment) = CHAR_LENGTH(comment);