SELECT DISTINCT
    customer_id,
    first_name,
    last_name,
    first_name || ' ' || last_name AS full_name,
    email_normalized,
    city
FROM {{ ref('int_order_details') }}