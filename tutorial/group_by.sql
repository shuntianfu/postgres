SELECT
    amount,
    staff_id
FROM
    payment
GROUP BY
    amount,
    staff_id;

SELECT
    customer_id,
    SUM(amount)
FROM
    payment
GROUP BY
    customer_id;

SELECT
    customer_id,
    SUM(amount)
FROM
    payment
GROUP BY
    customer_id
ORDER BY
    SUM(amount);

SELECT
    first_name || ' ' || last_name full_name,
    SUM(amount) amount
FROM
    payment
    INNER JOIN customer USING (customer_id)
    GROUP BY
        full_name
    ORDER BY
        amount;

SELECT
    staff_id,
    COUNT(payment_id)
FROM
    payment
GROUP BY
    staff_id;

SELECT
    customer_id,
    staff_id,
    SUM(amount) amount
FROM
    payment
GROUP BY
    customer_id,
    staff_id
ORDER BY
    amount;

SELECT
    DATE(payment_date),
    SUM(amount)
FROM
    payment
GROUP BY
    payment_date
ORDER BY
    payment_date;
