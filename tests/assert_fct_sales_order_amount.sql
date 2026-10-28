
-- Singular dbt data test:
-- Returns failing rows if order_amount is incorrect.

SELECT
    order_id,
    quantity,
    unit_price,
    order_amount
FROM {{ ref('fct_sales') }}
WHERE order_amount IS NULL
   OR order_amount < 0
   OR order_amount <> quantity * unit_price
