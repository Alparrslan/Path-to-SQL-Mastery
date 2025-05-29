-- 📘 SQL DERSİ: AND, OR, NOT Operatörleri

-- 1. Hem şehir Ankara hem de puan 80'den büyük

SELECT * FROM ogrenciler WHERE sehir = 'Ankara' AND puan > 80;

-- 2. Yaşı 20'den küçük veya puanı 90'dan büyük

SELECT * FROM ogrenciler WHERE yas < 20 OR puan > 90;

-- 3. Şehir İstanbul olmayanları listele

SELECT * FROM ogrenciler WHERE NOT sehir = 'İstanbul';

-- 4. Adı Ali olan ve puanı 85'ten büyük olan öğrenciler

SELECT * FROM ogrenciler WHERE ad = 'Ali' AND puan > 85;

-- 5. Puanı 70'ten küçük VE şehir Ankara olanlar

SELECT * FROM ogrenciler WHERE puan < 70 AND sehir = 'Ankara';

-- 6. Yaşı 21 olmayanları listele

SELECT * FROM ogrenciler WHERE NOT yas = 21;

-- 7. Adı Ahmet olmayan VE puanı 60’tan büyük olan öğrenciler

SELECT * FROM ogrenciler WHERE NOT ad = 'Ahmet' AND puan > 60;

-- 8. Yaşı 18'den büyük VE şehir İzmir olmayanlar

SELECT * FROM ogrenciler WHERE yas > 18 AND NOT sehir = 'İzmir';

-- 9. Yaşı 20 OLMAYAN ya da puanı 90 OLAN öğrenciler

SELECT * FROM ogrenciler WHERE NOT yas = 20 OR puan = 90;

-- 10. Şehir İstanbul VE (puan 80 veya 85 olanlar)

SELECT * FROM ogrenciler WHERE sehir = 'İstanbul' AND (puan = 80 OR puan = 85);

-- 11. (Yaşı 22 olan veya adı Ayşe olan) VE puanı 75'ten büyük

SELECT * FROM ogrenciler WHERE (yas = 22 OR ad = 'Ayşe') AND puan > 75;

-- 12. Ne Ankara ne de İstanbul’da olanlar

SELECT * FROM ogrenciler WHERE NOT sehir IN ('Ankara', 'İstanbul');

-- 13. Yaşı 20 VE (puan 90 ya da 95)

SELECT * FROM ogrenciler WHERE yas = 20 AND (puan = 90 OR puan = 95);

-- 14. Adı 'Mehmet' olmayanlar VE puanı 70’in altında olmayanlar

SELECT * FROM ogrenciler WHERE NOT ad = 'Mehmet' AND NOT puan < 70;

-- 15. Yaşı 21 OLMAYAN veya puanı 80 olmayanlar

SELECT * FROM ogrenciler WHERE NOT yas = 21 OR NOT puan = 80;