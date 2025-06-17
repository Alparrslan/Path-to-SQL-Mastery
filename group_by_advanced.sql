-- group_by_advanced.sql
-- Konu: SQL'de GROUP BY Kullanımı (İleri Seviye)
-- Açıklama: GROUP BY ifadelerinin HAVING, JOIN, ALT SORGULAR ile birlikte kullanımı örneklenmiştir.

-- Örnek tablolar: satislar (id, urun_id, miktar, fiyat), urunler (id, ad, kategori)

-- 1. Ürün adına göre toplam satış (JOIN ile)
SELECT u.ad, SUM(s.miktar) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.ad;

-- 2. Kategoriye göre toplam gelir
SELECT u.kategori, SUM(s.miktar * s.fiyat) AS gelir
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.kategori;

-- 3. En çok satan ürünler (HAVING ile)
SELECT u.ad, SUM(s.miktar) AS toplam_satis
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.ad
HAVING toplam_satis > 100;

-- 4. Kategori bazında ortalama satış > 50 olanlar
SELECT u.kategori, AVG(s.miktar) AS ort
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.kategori
HAVING ort > 50;

-- 5. Satış sayısı 5’ten fazla olan ürünler
SELECT u.ad, COUNT(*) AS satis_sayisi
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.ad
HAVING satis_sayisi > 5;

-- 6. En yüksek gelire sahip 3 ürün
SELECT u.ad, SUM(s.miktar * s.fiyat) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.ad
ORDER BY toplam DESC
LIMIT 3;

-- 7. En çok satan kategori
SELECT u.kategori, SUM(s.miktar) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.kategori
ORDER BY toplam DESC
LIMIT 1;

-- 8. Alt sorgu ile: En çok satış yapan ürünler
SELECT ad, toplam FROM (
  SELECT u.ad, SUM(s.miktar) AS toplam
  FROM satislar s
  JOIN urunler u ON s.urun_id = u.id
  GROUP BY u.ad
) AS alt
WHERE toplam > 200;

-- 9. Tüm kategorilerin satış ortalaması ve toplamı
SELECT u.kategori, AVG(s.miktar) AS ortalama, SUM(s.miktar) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.kategori;

-- 10. Aynı kategorideki ürünleri kıyasla (HAVING + CASE)
SELECT u.kategori, u.ad, SUM(s.miktar) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.kategori, u.ad
HAVING toplam > 50;

-- 11. Günlük satış sayısı (tarih sütunu varsayımıyla)
-- SELECT DATE(s.tarih), COUNT(*) FROM satislar s GROUP BY DATE(s.tarih);

-- 12. Her ürünün ilk 3 satışı hariç toplamı (subquery NOT IN)
-- Bu örnek için özel tarih sütunu gerekebilir.

-- 13. Her ürünün son satış fiyatı (window function yerine max tarih)
-- SELECT u.ad, MAX(s.tarih), s.fiyat FROM satislar s JOIN urunler u ON ...

-- 14. Tüm kategorilerdeki ürün sayıları
SELECT kategori, COUNT(*) FROM urunler GROUP BY kategori;

-- 15. Kategorideki en pahalı ürünün adı
-- (subquery ile yapılır)

-- 16. Ortalama satıştan fazla yapan ürünler
-- (HAVING ile kıyaslı sorgu)

-- 17. Kategoriye göre en çok satan ürün
-- (subquery, window function gerekebilir)

-- 18. Boş kategori kontrolü (LEFT JOIN + GROUP BY)
-- SELECT kategori, COUNT(u.id) FROM kategoriler k LEFT JOIN urunler u ...

-- 19. Her ay toplam satış (DATE_TRUNC veya FORMAT)
-- SELECT FORMAT(tarih, 'yyyy-MM') AS ay, SUM(miktar)

-- 20. Tüm zamanların en çok kazandıran ürünü
SELECT u.ad, SUM(s.miktar * s.fiyat) AS toplam
FROM satislar s
JOIN urunler u ON s.urun_id = u.id
GROUP BY u.ad
ORDER BY toplam DESC
LIMIT 1;
