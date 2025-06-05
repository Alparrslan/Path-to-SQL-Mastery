-- Müşteri ve sipariş bilgilerinde güncellemeler

-- 1. Müşteri adını güncelle
UPDATE customers SET name = 'Ahmet Yılmaz' WHERE customer_id = 1;

-- 2. E-posta adresini değiştir
UPDATE customers SET email = 'ayilmaz@example.com' WHERE customer_id = 1;

-- 3. Bir siparişin teslimat tarihini güncelle
UPDATE orders SET delivery_date = '2025-06-10' WHERE order_id = 101;

-- 4. Sipariş durumunu "Teslim Edildi" olarak değiştir
UPDATE orders SET status = 'Teslim Edildi' WHERE order_id = 102;

-- 5. Stok miktarını düşür
UPDATE products SET stock = stock - 5 WHERE product_id = 2001;

-- 6. Müşteri adresini güncelle
UPDATE customers SET address = 'İstanbul, Kadıköy' WHERE customer_id = 2;

-- 7. Siparişin toplam fiyatını güncelle
UPDATE orders SET total_price = 499.90 WHERE order_id = 103;

-- 8. Ürünün adını düzelt
UPDATE products SET name = 'Bluetooth Kulaklık Pro' WHERE product_id = 2003;

-- 9. Müşterinin telefon numarasını güncelle
UPDATE customers SET phone = '+90 532 123 45 67' WHERE customer_id = 3;

-- 10. Siparişin ödeme durumunu güncelle
UPDATE orders SET payment_status = 'Ödendi' WHERE order_id = 104;

-- 11. Ürün fiyatını artır
UPDATE products SET price = price * 1.10 WHERE product_id = 2004;

-- 12. Teslimat adresini güncelle
UPDATE orders SET shipping_address = 'Ankara, Çankaya' WHERE order_id = 105;

-- 13. Müşteri notunu ekle
UPDATE orders SET notes = 'Kargoya dikkatli verilsin' WHERE order_id = 106;

-- 14. Müşteri puanını güncelle
UPDATE customers SET loyalty_points = 120 WHERE customer_id = 4;

-- 15. Ürünün aktiflik durumunu kapat
UPDATE products SET is_active = FALSE WHERE product_id = 2005;
