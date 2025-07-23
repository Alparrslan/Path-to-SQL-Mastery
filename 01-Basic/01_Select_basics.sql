-- Sorgu 1
SELECT * FROM ogrenciler;

-- Sorgu 2
SELECT ad, soyad FROM ogrenciler;

-- Sorgu 3
SELECT ad, yas FROM ogrenciler WHERE yas > 18;

-- Sorgu 4
SELECT * FROM ogrenciler WHERE sehir = 'Ankara';

-- Sorgu 5
SELECT * FROM ogrenciler WHERE puan >= 80;

-- Sorgu 6
SELECT ad FROM ogrenciler WHERE puan BETWEEN 70 AND 90;

-- Sorgu 7
SELECT * FROM ogrenciler WHERE yas < 20 OR puan > 85;

-- Sorgu 8
SELECT * FROM ogrenciler WHERE sehir IN ('Ankara', 'İstanbul');

-- Sorgu 9
SELECT * FROM ogrenciler WHERE ad LIKE 'A%';

-- Sorgu 10
SELECT * FROM ogrenciler WHERE ad LIKE '%n';

-- Sorgu 11
SELECT * FROM ogrenciler ORDER BY yas;

-- Sorgu 12
SELECT * FROM ogrenciler ORDER BY puan DESC;

-- Sorgu 13
SELECT DISTINCT sehir FROM ogrenciler;

-- Sorgu 14
SELECT COUNT(*) FROM ogrenciler;

-- Sorgu 15
SELECT AVG(puan) FROM ogrenciler;

-- Sorgu 16
SELECT MAX(yas) FROM ogrenciler;

-- Sorgu 17
SELECT MIN(puan) FROM ogrenciler;

-- Sorgu 18
SELECT sehir, COUNT(*) FROM ogrenciler GROUP BY sehir;

-- Sorgu 19
SELECT sehir, AVG(puan) FROM ogrenciler GROUP BY sehir;

-- Sorgu 20
SELECT sehir, COUNT(*) FROM ogrenciler GROUP BY sehir HAVING COUNT(*) > 1;