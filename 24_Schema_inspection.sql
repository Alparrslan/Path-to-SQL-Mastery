-- DESCRIBE / \d Usage Examples

-- 1. Describe a basic user table (MySQL)
DESCRIBE users;

-- 2. PostgreSQL equivalent of describe
\d users

-- 3. Get column names and data types via INFORMATION_SCHEMA (cross-compatible)
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'orders';

-- 4. Find all NOT NULL columns in a table
SELECT column_name 
FROM information_schema.columns 
WHERE table_name = 'employees' AND is_nullable = 'NO';

-- 5. List tables in current schema
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

-- 6. Show indexes on a table (PostgreSQL)
\di orders

-- 7. Show foreign key constraints
SELECT conname, conrelid::regclass AS table_from
FROM pg_constraint 
WHERE contype = 'f';

-- 8. Get all constraints on a table
SELECT conname, contype 
FROM pg_constraint 
JOIN pg_class ON conrelid = pg_class.oid 
WHERE relname = 'users';

-- 9. Column default values
SELECT column_name, column_default 
FROM information_schema.columns 
WHERE table_name = 'products';

-- 10. Identify primary key of a table
SELECT a.attname AS column_name
FROM   pg_index i
JOIN   pg_attribute a ON a.attrelid = i.indrelid AND a.attnum = ANY(i.indkey)
WHERE  i.indrelid = 'orders'::regclass AND i.indisprimary;

-- 11. Check column comments
SELECT objsubid, description
FROM pg_description
WHERE objoid = 'users'::regclass;

-- 12. Tables with serial (auto-increment) columns
SELECT table_name, column_name 
FROM information_schema.columns 
WHERE column_default LIKE 'nextval%';

-- 13. Table storage information (PostgreSQL)
\dt+

-- 14. Display composite types (PostgreSQL)
\dT+

-- 15. Detect enum types used in schema
SELECT n.nspname AS schema, t.typname AS enum_name
FROM pg_type t
JOIN pg_enum e ON t.oid = e.enumtypid
JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
GROUP BY enum_name, schema;

-- 16. List all sequences in current schema
\ds

-- 17. Tables that reference a given table
SELECT conrelid::regclass AS referencing_table
FROM pg_constraint 
WHERE confrelid = 'users'::regclass;

-- 18. Number of columns in each table
SELECT table_name, COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_schema = 'public'
GROUP BY table_name;

-- 19. Columns using array data type
SELECT table_name, column_name 
FROM information_schema.columns 
WHERE data_type = 'ARRAY';

-- 20. Full schema dump of a table
\d+ users