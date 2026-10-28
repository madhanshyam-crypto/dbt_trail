SELECT
    customer_id,
    first_name,
    last_name,
    LOWER(email) AS email_normalized,
    city
FROM {{ source('databricks_raw', 'customers') }}