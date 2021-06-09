SELECT
    brand,
    segment,
    SUM(quantity)
FROM
    sales
GROUP BY
    ROLLUP (brand,
        segment)
ORDER BY
    brand,
    segment;

SELECT
    segment,
    brand,
    SUM(quantity)
FROM
    sales
GROUP BY
    segment,
    ROLLUP (brand)
ORDER BY
    segment,
    brand;

SELECT
    EXTRACT(year FROM rental_date) y,
    EXTRACT(month FROM rental_date) m,
    EXTRACT(day FROM rental_date) d,
    COUNT(rental_id)
FROM
    rental
GROUP BY
    ROLLUP (EXTRACT(year FROM rental_date),
        EXTRACT(month FROM rental_date),
        EXTRACT(day FROM rental_date));

SELECT
    *
FROM
    rental
LIMIT 5;

