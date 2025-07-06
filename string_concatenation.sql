-- Advanced queries using CONCAT, CONCAT_WS, and string merging techniques.

-- Query 1
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;

-- Query 2
SELECT CONCAT_WS('-', area_code, number) AS phone FROM phones;

-- Query 3
SELECT CONCAT(city, ', ', country) FROM locations;

-- Query 4
SELECT CONCAT(REVERSE(last_name), ', ', REVERSE(first_name)) FROM people;

-- Query 5
SELECT CONCAT(UCASE(SUBSTRING(first_name, 1, 1)), LCASE(SUBSTRING(first_name, 2))) FROM users;

-- Query 6
SELECT CONCAT(title, ' (', release_year, ')') FROM movies;

-- Query 7
SELECT CONCAT(SUBSTRING(email, 1, 3), '***', SUBSTRING(email, LOCATE('@', email), LENGTH(email))) FROM users;

-- Query 8
SELECT CONCAT_WS('/', DAY(birthdate), MONTH(birthdate), YEAR(birthdate)) AS formatted_dob FROM employees;

-- Query 9
SELECT CONCAT_WS(': ', question, answer) FROM faq;

-- Query 10
SELECT CONCAT(LEFT(description, 20), '...') FROM products;

-- Query 11
SELECT CONCAT(product_code, '-', LPAD(id, 5, '0')) FROM inventory;

-- Query 12
SELECT CONCAT(city, ' - ', IFNULL(region, 'Unknown')) FROM addresses;

-- Query 13
SELECT CONCAT(SUBSTR(card_number, 1, 4), '-XXXX-XXXX-', SUBSTR(card_number, -4)) FROM payments;

-- Query 14
SELECT CONCAT(author_last, ', ', author_first) FROM books;

-- Query 15
SELECT CONCAT(name, '(', LENGTH(name), ')') FROM teams;

-- Query 16
SELECT CONCAT(LEFT(username, 1), '*****') FROM users WHERE LENGTH(username) > 6;

-- Query 17
SELECT CONCAT('ID: ', id, ' | ', name) FROM records;

-- Query 18
SELECT CONCAT(REPEAT('*', 5), name, REPEAT('*', 5)) FROM categories;

-- Query 19
SELECT CONCAT('Welcome ', name, '!') FROM subscribers;

-- Query 20
SELECT CONCAT_WS(' ', title, middle_name, last_name) FROM staff;

