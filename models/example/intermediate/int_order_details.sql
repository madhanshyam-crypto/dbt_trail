SELECT
    o.order_id,
    o.customer_id,
    c.first_name,
    c.last_name,
    c.email_normalized,
    c.city,
    o.product_id,
    p.product_name,
    p.category,
    o.quantity,
    p.unit_price,
    o.quantity * p.unit_price AS order_amount,
    o.order_date
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
    ON o.customer_id = c.customer_id
JOIN {{ ref('stg_products') }} p
    ON o.product_id = p.product_id