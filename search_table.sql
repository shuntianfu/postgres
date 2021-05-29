

\c dvdrental

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_name like 'add%'
    AND table_schema NOT IN ('information_schema', 'pg_catalgo')
    AND table_type = 'BASE TABLE'
ORDER BY
table_name, table_schema;

SELECT table_name
FROM information_schema.tables
WHERE table_name like 'add%' AND table_type = 'BASE TABLE'
ORDER BY
table_name;

SELECT table_name
FROM information_schema.tables
WHERE table_name like 'add%'
ORDER BY
table_name;
