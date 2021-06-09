UPDATE
    courses
SET
    published_date = '2017-07-03'
WHERE
    course_id = 2
RETURNING
    *;

SELECT
    *
FROM
    courses;
