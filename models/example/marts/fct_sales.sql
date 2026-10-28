SELECT
    order_id,
    customer_id,
    product_id,
    product_name,
    category,
    quantity,
    unit_price,
    order_amount,
    order_date,
    CASE
        WHEN order_amount >= 10000 THEN 'HIGH'
        ELSE 'STANDARD'
    END AS order_value_category
FROM {{ ref('int_order_details') }}