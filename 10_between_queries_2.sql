-- 1. Order quantity between 1 and 10
SELECT * FROM orders WHERE quantity BETWEEN 1 AND 10;

-- 2. Course duration between 4 and 12 weeks
SELECT * FROM courses WHERE duration_weeks BETWEEN 4 AND 12;

-- 3. Voltage between 110 and 220
SELECT * FROM devices WHERE voltage BETWEEN 110 AND 220;

-- 4. Bandwidth usage between 50GB and 200GB
SELECT * FROM internet_usage WHERE bandwidth_gb BETWEEN 50 AND 200;

-- 5. Room number between 100 and 200
SELECT * FROM hotel_rooms WHERE room_number BETWEEN 100 AND 200;

-- 6. Miles traveled between 1000 and 5000
SELECT * FROM travel_logs WHERE miles_traveled BETWEEN 1000 AND 5000;

-- 7. Calories burned between 200 and 600
SELECT * FROM workouts WHERE calories_burned BETWEEN 200 AND 600;

-- 8. Student ID between 1000 and 2000
SELECT * FROM students WHERE student_id BETWEEN 1000 AND 2000;

-- 9. Temperature in Fahrenheit between 60 and 90
SELECT * FROM weather_data WHERE temp_f BETWEEN 60 AND 90;

-- 10. Weekly hours worked between 20 and 40
SELECT * FROM employees WHERE weekly_hours BETWEEN 20 AND 40;

-- 11. Speed between 30 and 80 km/h
SELECT * FROM vehicles WHERE speed_kmh BETWEEN 30 AND 80;

-- 12. Electricity bill between 100 and 300
SELECT * FROM bills WHERE electricity_cost BETWEEN 100 AND 300;

-- 13. Years of experience between 2 and 10
SELECT * FROM applicants WHERE experience_years BETWEEN 2 AND 10;

-- 14. Internet speed between 10Mbps and 100Mbps
SELECT * FROM internet_plans WHERE speed_mbps BETWEEN 10 AND 100;

-- 15. Car price between 20000 and 40000
SELECT * FROM cars WHERE price BETWEEN 20000 AND 40000;