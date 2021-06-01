SELECT
    *
FROM
    information_schema.schemata;

SELECT
    *
FROM
    pg_catalog.pg_namespace;

SELECT
    *
FROM
    information_schema.columns
WHERE
    TABLE_NAME = 'payment';

SELECT
    *
FROM
    pg_catalog.pg_tables
WHERE
    schemaname != 'pg_catalog'
    AND schemaname != 'information_schema';

SELECT
    column_name
FROM
    information_schema.columns
WHERE
    TABLE_NAME = 'payment';
