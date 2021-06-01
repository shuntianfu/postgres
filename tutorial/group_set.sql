SELECT
    *
FROM
    sales;

SELECT
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    brand,
    segment;

SELECT
    brand,
    SUM(quantity)
FROM
    sales
GROUP BY
    brand;

SELECT
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    segment;

SELECT
    SUM(quantity)
FROM
    sales;

SELECT
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    brand,
    segment
UNION ALL
SELECT
    brand,
    NULL,
    SUM(quantity)
FROM
    sales
GROUP BY
    brand
UNION ALL
SELECT
    NULL,
    NULL,
    SUM(quantity)
FROM
    sales;
