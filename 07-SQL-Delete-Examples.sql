-- 07 - DELETE ile Veri Silme Örnekleri

-- 1. Tüm kayıtları sil
DELETE FROM calisanlar;

-- 2. Belirli bir ID'ye sahip kaydı sil
DELETE FROM musteriler WHERE musteri_id = 5;

-- 3. Yaşı 30'dan küçük olanları sil
DELETE FROM kisiler WHERE yas < 30;

-- 4. Belirli bir şehirdeki kayıtları sil
DELETE FROM musteriler WHERE sehir = 'Ankara';

-- 5. Stokta olmayan ürünleri sil
DELETE FROM urunler WHERE stok_adedi = 0;

-- 6. Belirli bir departmana ait çalışanları sil
DELETE FROM calisanlar WHERE departman_id = 3;

-- 7. 2022’den önceki siparişleri sil
DELETE FROM siparisler WHERE siparis_tarihi < '2022-01-01';

-- 8. Adı NULL olan kayıtları sil
DELETE FROM kisiler WHERE ad IS NULL;

-- 9. Ücreti 10000 TL’den fazla olan ürünleri sil
DELETE FROM urunler WHERE fiyat > 10000;

-- 10. Geçici kullanıcıları sil
DELETE FROM kullanicilar WHERE rol = 'gecici';

-- 11. E-posta adresi olmayan müşterileri sil
DELETE FROM musteriler WHERE email IS NULL;

-- 12. İlişkili kayıtlar: önce çocuk kayıtları silinmeli
DELETE FROM siparis_urun WHERE siparis_id IN (SELECT siparis_id FROM siparisler WHERE musteri_id = 10);

-- 13. Belirli bir tarih aralığındaki kayıtları sil
DELETE FROM log_kayitlari WHERE tarih BETWEEN '2023-01-01' AND '2023-12-31';

-- 14. İki tabloyu bağlayan eşleşmeyen kayıtları sil (JOIN ile)
DELETE FROM urunler
WHERE urun_id NOT IN (SELECT urun_id FROM siparis_urun);

-- 15. Son 5 yıl içinde aktif olmayan kullanıcıları sil
DELETE FROM kullanicilar WHERE son_giris < DATE('now', '-5 years');