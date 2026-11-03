-- 01_data_checks.sql
-- Sanity checks before analysis.

SELECT COUNT(*) AS total_orders FROM orders;                      -- ~99k

SELECT order_status, COUNT(*) AS orders
FROM orders
GROUP BY 1
ORDER BY 2 DESC;                                                  -- most are 'delivered'

SELECT COUNT(*) AS missing_delivery_date
FROM orders
WHERE order_delivered_customer_date IS NULL;

SELECT order_id, COUNT(*) AS dupes
FROM orders
GROUP BY 1
HAVING COUNT(*) > 1;                                              -- expect no rows

-- Cleaning rules used in this project:
--   1. Revenue analysis uses order_status = 'delivered' only.
--   2. Delivery analysis excludes rows with a NULL delivery date.
