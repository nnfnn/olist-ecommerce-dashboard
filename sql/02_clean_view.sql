-- 02_clean_view.sql
-- Clean view of delivered orders joined with customer location.

CREATE OR REPLACE VIEW clean_orders AS
SELECT o.*,
       c.customer_unique_id,
       c.customer_state,
       c.customer_city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL;
