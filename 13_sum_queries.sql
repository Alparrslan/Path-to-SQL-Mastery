-- SUM Function Examples

SELECT SUM(salary) FROM employees;

SELECT SUM(quantity) FROM order_items;

SELECT SUM(total_amount) FROM invoices;

SELECT SUM(price) FROM products WHERE category = 'Electronics';

SELECT SUM(bonus) FROM employees WHERE department = 'Sales';

SELECT SUM(points) FROM users WHERE active = 1;

SELECT SUM(stock) FROM products;

SELECT SUM(total) FROM transactions WHERE payment_method = 'Cash';

SELECT SUM(amount) FROM donations WHERE year = 2023;

SELECT SUM(revenue) FROM sales WHERE region = 'West';

SELECT SUM(cost) FROM purchases;

SELECT SUM(hours_worked) FROM timesheets WHERE project_id = 3;

SELECT SUM(discount) FROM orders WHERE status = 'Completed';

SELECT SUM(tax) FROM invoices;

SELECT SUM(score) FROM exams WHERE subject = 'Math';

SELECT SUM(shipping_cost) FROM orders;

SELECT SUM(penalty_fee) FROM accounts;

SELECT SUM(balance) FROM accounts WHERE status = 'Active';

SELECT SUM(downloads) FROM apps WHERE platform = 'iOS';

SELECT SUM(views) FROM videos WHERE upload_date > '2024-01-01';