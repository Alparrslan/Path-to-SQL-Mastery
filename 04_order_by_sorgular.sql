-- 1. Çalışanları adı bazında artan sıralama
SELECT * FROM employees ORDER BY first_name ASC;

-- 2. Çalışanları soyadına göre azalan sıralama
SELECT * FROM employees ORDER BY last_name DESC;

-- 3. Maaşa göre büyükten küçüğe sıralama
SELECT * FROM employees ORDER BY salary DESC;

-- 4. Maaşa göre küçükten büyüğe sıralama
SELECT * FROM employees ORDER BY salary ASC;

-- 5. Departmana ve ardından maaşa göre sıralama
SELECT * FROM employees ORDER BY department_id, salary DESC;

-- 6. İsme göre sıralama yaparken büyük/küçük harf duyarlılığını göz ardı et
SELECT * FROM employees ORDER BY LOWER(first_name);

-- 7. Çalışanları işe başlama tarihlerine göre sıralama
SELECT * FROM employees ORDER BY hire_date;

-- 8. En gençten en yaşlıya sıralama (doğum tarihi)
SELECT * FROM employees ORDER BY birth_date DESC;

-- 9. Komisyon alanları, komisyon oranına göre sıralama
SELECT * FROM employees WHERE commission_pct IS NOT NULL ORDER BY commission_pct DESC;

-- 10. Maaş ve işe giriş tarihine göre çift sıralama
SELECT * FROM employees ORDER BY salary DESC, hire_date;

-- 11. Email'e göre alfabetik sıralama
SELECT * FROM employees ORDER BY email;

-- 12. Şehre göre sıralama (adres tablosu)
SELECT * FROM addresses ORDER BY city;

-- 13. Ürünleri fiyatına göre artan sıralama
SELECT * FROM products ORDER BY price;

-- 14. Ürünleri kategoriye ve ardından ada göre sıralama
SELECT * FROM products ORDER BY category_id, product_name;

-- 15. Siparişleri tarihe göre en yeni en üstte olacak şekilde sıralama
SELECT * FROM orders ORDER BY order_date DESC;

-- 16. Müşterileri puanına göre en yüksekten en düşüğe sıralama
SELECT * FROM customers ORDER BY loyalty_points DESC;

-- 17. Satıcıları satış miktarına göre sıralama
SELECT * FROM sellers ORDER BY total_sales DESC;

-- 18. En çok stokta olan ürünler en üstte olacak şekilde sıralama
SELECT * FROM inventory ORDER BY stock_quantity DESC;

-- 19. En az sipariş alan ürünler
SELECT * FROM products ORDER BY total_orders ASC;

-- 20. Ürün adlarının uzunluklarına göre sıralama
SELECT * FROM products ORDER BY LENGTH(product_name);
