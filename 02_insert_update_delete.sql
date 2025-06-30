--  INSERT UPDATE, DELETE

INSERT INTO ogrenciler (id, ad, soyad, yas, sehir, puan) VALUES (4, 'Zeynep', 'Koç', 23, 'Bursa', 88);

INSERT INTO ogrenciler (id, ad, soyad, yas, sehir, puan) VALUES (5, 'Emre', 'Aydın', 21, 'Eskişehir', 76);

UPDATE ogrenciler SET puan = 92 WHERE id = 4;

UPDATE ogrenciler SET sehir = 'Ankara' WHERE id = 5;

DELETE FROM ogrenciler WHERE id = 5;

DELETE FROM ogrenciler WHERE puan < 70;

INSERT INTO ogrenciler (id, ad, soyad, yas, sehir, puan) VALUES (6, 'Cem', 'Erden', 24, 'İstanbul', 91);

UPDATE ogrenciler SET yas = yas + 1;

DELETE FROM ogrenciler WHERE sehir = 'İzmir';

INSERT INTO ogrenciler (id, ad, soyad, yas, sehir, puan) VALUES (7, 'Derya', 'Kurt', 20, 'Ankara', 85);

UPDATE ogrenciler SET puan = puan + 5 WHERE puan < 90;

DELETE FROM ogrenciler WHERE ad LIKE 'E%';

INSERT INTO ogrenciler (id, ad, soyad, yas, sehir, puan) VALUES (8, 'Barış', 'Can', 22, 'İzmir', 83);

UPDATE ogrenciler SET soyad = 'Yılmaz' WHERE soyad = 'Koç';

DELETE FROM ogrenciler WHERE id = 2;