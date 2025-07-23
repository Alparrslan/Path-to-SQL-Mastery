-- 1. En yüksek maaşlı çalışanları getir

SELECT * FROM employees ORDER BY salary DESC LIMIT 5;


-- 2. Belirli bir departmandaki çalışanları listele


SELECT * FROM employees WHERE department = 'IT';


-- 3. Çalışanların isim ve e-posta adreslerini getir
SELECT name, email FROM employees;


-- 4. Ortalama maaşı hesapla


SELECT AVG(salary) AS average_salary FROM employees;


-- 5. Maaşı 5000'den yüksek olan çalışanları listele
SELECT * FROM employees WHERE salary > 5000;


-- 6. Çalışanları işe giriş tarihlerine göre sırala
SELECT * FROM employees ORDER BY hire_date ASC;


-- 7. Her departmandaki toplam çalışan sayısını bul
SELECT department, COUNT(*) FROM employees GROUP BY department;


-- 8. En son işe alınan 3 çalışanı getir
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 3;


-- 9. Aynı maaşa sahip çalışanları bul
SELECT salary, COUNT(*) FROM employees GROUP BY salary HAVING COUNT(*) > 1;


-- 10. Belirli bir şehirdeki çalışanları getir
SELECT * FROM employees WHERE city = 'Istanbul';


-- 11. En düşük maaşlı çalışanı getir
SELECT * FROM employees ORDER BY salary ASC LIMIT 1;


-- 12. 'A' harfi ile başlayan çalışan isimlerini listele
SELECT * FROM employees WHERE name LIKE 'A%';


-- 13. Her şehirdeki ortalama maaşı bul
SELECT city, AVG(salary) FROM employees GROUP BY city;


-- 14. En uzun süredir çalışan kişiyi bul
SELECT * FROM employees ORDER BY hire_date ASC LIMIT 1;


-- 15. Çalışanların yaşlarına göre sıralı listesi
SELECT * FROM employees ORDER BY age DESC;
