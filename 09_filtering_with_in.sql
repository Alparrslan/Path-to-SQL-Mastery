-- 1. Find orders with status in ('Shipped', 'Delivered')
SELECT * FROM orders WHERE status IN ('Shipped', 'Delivered');

-- 2. Filter employees in departments (1, 2, 3)
SELECT * FROM employees WHERE department_id IN (1, 2, 3);

-- 3. Products with id in a specific set
SELECT * FROM products WHERE id IN (101, 102, 103);

-- 4. Customers from specific countries
SELECT * FROM customers WHERE country IN ('USA', 'Canada', 'UK');

-- 5. Users with role in ('admin', 'editor')
SELECT * FROM users WHERE role IN ('admin', 'editor');

-- 6. Items with type in ('Book', 'Ebook')
SELECT * FROM items WHERE type IN ('Book', 'Ebook');

-- 7. Students with grade in (90, 85, 80)
SELECT * FROM students WHERE grade IN (90, 85, 80);

-- 8. Cars of specific brands
SELECT * FROM cars WHERE brand IN ('Toyota', 'Honda', 'Ford');

-- 9. Orders placed on specific dates
SELECT * FROM orders WHERE order_date IN ('2023-01-01', '2023-06-15');

-- 10. Users whose IDs are in a sublist
SELECT * FROM users WHERE id IN (SELECT user_id FROM logins WHERE success = TRUE);

-- 11. Filter posts with category id in (2, 4, 6)
SELECT * FROM posts WHERE category_id IN (2, 4, 6);

-- 12. Cities in ('Paris', 'Berlin', 'Rome')
SELECT * FROM cities WHERE name IN ('Paris', 'Berlin', 'Rome');

-- 13. Items in stock locations (101, 102)
SELECT * FROM stock WHERE location_id IN (101, 102);

-- 14. Employees with badge number in a list
SELECT * FROM employees WHERE badge_number IN (1001, 1002, 1003);

-- 15. Users whose country is in EU countries list
SELECT * FROM users WHERE country IN ('Germany', 'France', 'Italy', 'Japan');