SELECT
    film_id,
    title,
    LENGTH
FROM
    film
WHERE
    LENGTH > ALL (
        SELECT
            ROUND(AVG(LENGTH), 2) avg_length
        FROM
            film
        GROUP BY
            rating)
    ORDER BY
        LENGTH;
