SELECT
    *
FROM
    top_rated_films
INTERSECT
SELECT
    *
FROM
    most_popular_films;

SELECT
    *
FROM
    top_rated_films
EXCEPT
SELECT
    *
FROM
    most_popular_films;

SELECT
    *
FROM
    top_rated_films t
    LEFT JOIN most_popular_films m ON t.title = m.title;
