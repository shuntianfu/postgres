-- CTE stand for common table expression
WITH cte_film AS (
    SELECT
        film_id,
        title, ( CASE WHEN LENGTH < 30 THEN
                'short'
                WHEN LENGTH < 90 THEN
                'medium'
            ELSE
                'long'
END)
LENGTH
FROM
    film
)
SELECT
    film_id,
    title,
    LENGTH
FROM
    cte_film
WHERE
    LENGTH = 'long'
ORDER BY
    title;

WITH cte_rental AS (
    SELECT
        staff_id,
        COUNT(rental_id) rental_count
    FROM
        rental
    GROUP BY
        staff_id
)
SELECT
    s.staff_id,
    first_name,
    last_name,
    rental_count
FROM
    staff s
    INNER JOIN cte_rental USING (staff_id);

WITH cte_film AS (
    SELECT
        film_id,
        rating,
        LENGTH,
        RANK()
        OVER (PARTITION BY
                rating
            ORDER BY
                LENGTH DESC) length_rank
        FROM
            film
)
SELECT
    *
FROM
    cte_film
WHERE
    length_rank = 1;
