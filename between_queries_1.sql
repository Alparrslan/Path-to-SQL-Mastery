-- 1. Age between 20 and 30
SELECT * FROM users WHERE age BETWEEN 20 AND 30;

-- 2. Salary between 3000 and 7000
SELECT * FROM employees WHERE salary BETWEEN 3000 AND 7000;

-- 3. Join date between two dates
SELECT * FROM members WHERE join_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 4. Product price between 100 and 500
SELECT * FROM products WHERE price BETWEEN 100 AND 500;

-- 5. Birth year between 1990 and 2000
SELECT * FROM people WHERE birth_year BETWEEN 1990 AND 2000;

-- 6. Rating between 4 and 5
SELECT * FROM reviews WHERE rating BETWEEN 4 AND 5;

-- 7. Transaction amount between 50 and 200
SELECT * FROM transactions WHERE amount BETWEEN 50 AND 200;

-- 8. Temperature between 15 and 25
SELECT * FROM weather WHERE temperature BETWEEN 15 AND 25;

-- 9. Pages between 100 and 300
SELECT * FROM books WHERE pages BETWEEN 100 AND 300;

-- 10. Score between 60 and 80
SELECT * FROM exams WHERE score BETWEEN 60 AND 80;

-- 11. Distance between 5 and 15 km
SELECT * FROM runs WHERE distance_km BETWEEN 5 AND 15;

-- 12. Date of event between two dates
SELECT * FROM events WHERE event_date BETWEEN '2024-05-01' AND '2024-06-01';

-- 13. Number of employees between 10 and 50
SELECT * FROM companies WHERE num_employees BETWEEN 10 AND 50;

-- 14. Time between 08:00 and 12:00
SELECT * FROM appointments WHERE time BETWEEN '08:00:00' AND '12:00:00';

-- 15. Discount between 10% and 30%
SELECT * FROM sales WHERE discount_percentage BETWEEN 10 AND 30;