
SELECT * FROM sales;

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
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    segment
UNION ALL
SELECT
    NULL,
    NULL,
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
GROUPING SETS(
    (brand, segment),
    brand,
    segment,
    ()
);

SELECT 
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    (brand, segment),
    brand,
    segment,
    ();

SELECT
    GROUPING(brand) grouping_brand,
    GROUPINg(segment) grouping_segnment,
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
GROUPING SETS(
    brand,
    segment,
    () 
);

SELECT
    GROUPING(brand) grouping_brand,
    GROUPINg(segment) grouping_segnment,
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
GROUPING SETS(
    brand,
    segment,
    () 
)
HAVING GROUPING(brand) = 0;
