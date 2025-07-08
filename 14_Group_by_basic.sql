-- Açıklama: Bu dosyada GROUP BY kullanımına dair temel örnekler yer almaktadır.

-- Örnek tablo: satislar (id, urun_adi, kategori, miktar, fiyat)

-- 1. Ürün adına göre toplam satış miktarı
SELECT urun_adi, SUM(miktar) AS toplam_miktar
FROM satislar
GROUP BY urun_adi;

-- 2. Kategori bazında toplam gelir
SELECT kategori, SUM(miktar * fiyat) AS toplam_gelir
FROM satislar
GROUP BY kategori;

-- 3. Her kategorideki ortalama fiyat
SELECT kategori, AVG(fiyat) AS ortalama_fiyat
FROM satislar
GROUP BY kategori;

-- 4. Ürün başına maksimum satış miktarı
SELECT urun_adi, MAX(miktar) AS maksimum_miktar
FROM satislar
GROUP BY urun_adi;

-- 5. Her ürün için kaç adet satış yapılmış
SELECT urun_adi, COUNT(*) AS satis_sayisi
FROM satislar
GROUP BY urun_adi;

-- 6. Kategoriye göre satış sayısı
SELECT kategori, COUNT(*) AS adet
FROM satislar
GROUP BY kategori;

-- 7. Kategori bazında en düşük fiyat
SELECT kategori, MIN(fiyat) AS en_dusuk_fiyat
FROM satislar
GROUP BY kategori;

-- 8. Ürün adı ve fiyat ortalamasına göre gruplama
SELECT urun_adi, AVG(fiyat) AS ortalama
FROM satislar
GROUP BY urun_adi;

-- 9. Kategori bazında satış ortalaması
SELECT kategori, AVG(miktar) AS ortalama_miktar
FROM satislar
GROUP BY kategori;

-- 10. Ürün adına göre toplam gelir
SELECT urun_adi, SUM(fiyat * miktar) AS gelir
FROM satislar
GROUP BY urun_adi;

-- 11. Aynı kategoride kaç farklı ürün satıldı?
SELECT kategori, COUNT(DISTINCT urun_adi) AS urun_sayisi
FROM satislar
GROUP BY kategori;

-- 12. Ürün adına göre ortalama fiyat ve toplam satış
SELECT urun_adi, AVG(fiyat) AS ort_fiyat, SUM(miktar) AS toplam_miktar
FROM satislar
GROUP BY urun_adi;

-- 13. Tüm ürünler için toplam satış miktarı
SELECT 'Genel Toplam', SUM(miktar)
FROM satislar;

-- 14. Satış sayısı en çok olan ürünler (ilk 5)
SELECT urun_adi, COUNT(*) AS sayi
FROM satislar
GROUP BY urun_adi
ORDER BY sayi DESC
LIMIT 5;

-- 15. Her kategoriden en çok satan ürün
-- (subquery ile yapılır, daha ileri düzeyde örneği aşağıda var)

-- 16. Her kategorideki ürün sayısı
SELECT kategori, COUNT(DISTINCT urun_adi) AS urun_sayisi
FROM satislar
GROUP BY kategori;

-- 17. Ürün başına toplam gelir ve ortalama fiyat
SELECT urun_adi, SUM(miktar*fiyat) AS toplam_gelir, AVG(fiyat) AS ort_fiyat
FROM satislar
GROUP BY urun_adi;

-- 18. Tüm kategorilerin ortalama fiyatı
SELECT kategori, ROUND(AVG(fiyat), 2) AS ortalama_fiyat
FROM satislar
GROUP BY kategori;

-- 19. Fiyat aralıklarına göre gruplama (CASE ile)
SELECT 
  CASE 
    WHEN fiyat < 50 THEN 'Düşük'
    WHEN fiyat BETWEEN 50 AND 100 THEN 'Orta'
    ELSE 'Yüksek'
  END AS fiyat_araligi,
  COUNT(*) AS urun_sayisi
FROM satislar
GROUP BY fiyat_araligi;

-- 20. Ürün bazlı satış hacmi (adet * fiyat)
SELECT urun_adi, SUM(miktar * fiyat) AS satis_hacmi
FROM satislar
GROUP BY urun_adi;
