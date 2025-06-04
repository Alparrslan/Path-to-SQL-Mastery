-- 1. Yeni bir çalışan ekleme
INSERT INTO employees (first_name, last_name, email, hire_date, job_id) VALUES ('Ali', 'Yılmaz', 'ali.yilmaz@example.com', '2024-01-15', 'IT_PROG');

-- 2. Ürün tablosuna veri ekleme
INSERT INTO products (product_name, price, category_id) VALUES ('Kulaklık', 199.99, 2);

-- 3. Yeni müşteri ekleme
INSERT INTO customers (first_name, last_name, email, phone) VALUES ('Zeynep', 'Demir', 'zeynep.demir@example.com', '555-1234');

-- 4. Sipariş tablosuna veri ekleme
INSERT INTO orders (order_date, customer_id, total_amount) VALUES ('2025-05-10', 1, 459.90);

-- 5. Adres ekleme
INSERT INTO addresses (customer_id, street, city, postal_code) VALUES (1, 'Atatürk Cad. No:12', 'Ankara', '06000');

-- 6. Kategori ekleme
INSERT INTO categories (category_name) VALUES ('Elektronik');

-- 7. Yeni çalışan ekleme
INSERT INTO employees (first_name, last_name, email, hire_date, job_id, salary) VALUES ('Ayşe', 'Kara', 'ayse.kara@example.com', '2024-03-20', 'HR_REP', 5000);

-- 8. Yeni ürün ekleme
INSERT INTO products (product_name, price, stock_quantity) VALUES ('Bluetooth Hoparlör', 299.99, 50);

-- 9. Yeni müşteri kaydı
INSERT INTO customers (first_name, last_name, email) VALUES ('Mehmet', 'Koç', 'mehmet.koc@example.com');

-- 10. Yeni sipariş
INSERT INTO orders (order_date, customer_id, total_amount, status) VALUES ('2025-05-12', 2, 799.50, 'Kargolandı');

-- 11. Yeni stok girişi
INSERT INTO inventory (product_id, stock_quantity) VALUES (3, 150);

-- 12. Yeni bir tedarikçi ekleme
INSERT INTO suppliers (supplier_name, contact_name, phone) VALUES ('TeknoTedarik', 'Ahmet Can', '555-6789');

-- 13. Yeni kategori
INSERT INTO categories (category_name, description) VALUES ('Ev Aletleri', 'Ev için elektronik ürünler');

-- 14. Yeni çalışan
INSERT INTO employees (first_name, last_name, email, hire_date, job_id, department_id) VALUES ('Burak', 'Yüce', 'burak.yuce@example.com', '2024-06-01', 'SA_REP', 80);

-- 15. Yeni ürün
INSERT INTO products (product_name, price, category_id, supplier_id) VALUES ('Çay Makinesi', 349.00, 3, 1);

-- 16. Yeni sipariş detayları
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES (1, 2, 3, 199.99);

-- 17. Yeni müşteri adresi
INSERT INTO addresses (customer_id, street, city, postal_code) VALUES (2, 'Cumhuriyet Mah.', 'İzmir', '35000');

-- 18. Yeni çalışan
INSERT INTO employees (first_name, last_name, email, hire_date, job_id, salary, commission_pct) VALUES ('Selin', 'Aksoy', 'selin.aksoy@example.com', '2023-11-10', 'SA_MAN', 8000, 0.15);

-- 19. Yeni ürün ve stok ilişkisi
INSERT INTO inventory (product_id, stock_quantity, warehouse_id) VALUES (5, 100, 1);

-- 20. Yeni tedarikçi
INSERT INTO suppliers (supplier_name, contact_name, email) VALUES ('Elektronika A.Ş.', 'Elif Öztürk', 'contact@elektronika.com');
