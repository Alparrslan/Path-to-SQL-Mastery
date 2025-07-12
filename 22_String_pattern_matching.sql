-- Advanced queries using LIKE, REGEXP, POSITION, LOCATE, and pattern-based string functions

-- Query 1
SELECT email FROM users WHERE email LIKE '%.edu';

-- Query 2
SELECT name FROM employees WHERE name LIKE '__a%';

-- Query 3
SELECT comment FROM feedback WHERE comment REGEXP 'error|fail';

-- Query 4
SELECT title FROM articles WHERE title REGEXP '^[A-Z]';

-- Query 5
SELECT code FROM items WHERE code LIKE 'A%1%';

-- Query 6
SELECT username FROM users WHERE username REGEXP '[0-9]{3,}';

-- Query 7
SELECT phone FROM contacts WHERE phone LIKE '+90%';

-- Query 8
SELECT email FROM users WHERE email REGEXP '@(gmail|yahoo)\.com$';

-- Query 9
SELECT name FROM products WHERE name LIKE '%pro%' AND LENGTH(name) < 20;

-- Query 10
SELECT id FROM logs WHERE message REGEXP 'timeout|disconnect';

-- Query 11
SELECT description FROM issues WHERE description REGEXP '\berror\b';

-- Query 12
SELECT name FROM files WHERE name LIKE '%.sql';

-- Query 13
SELECT version FROM software WHERE version REGEXP '^[0-9]+\.[0-9]+$';

-- Query 14
SELECT word FROM dictionary WHERE word REGEXP '^.{6,}$';

-- Query 15
SELECT text FROM posts WHERE text REGEXP '\bdata\b.*\bprivacy\b';

-- Query 16
SELECT name FROM clients WHERE name LIKE '_a%_';

-- Query 17
SELECT city FROM addresses WHERE city REGEXP '[aeiou]{2,}';

-- Query 18
SELECT title FROM books WHERE title REGEXP '[:;]';

-- Query 19
SELECT user_id FROM activities WHERE action REGEXP '^login|logout$';

-- Query 20
SELECT keyword FROM search_history WHERE keyword REGEXP '\d{4}';

