UPDATE
    product
SET
    net_price = price - price * discount
FROM
    product_segment
WHERE
    product.segment_id = product_segment.id;
