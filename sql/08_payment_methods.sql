-- 08_payment_methods.sql
-- Payment method mix.

SELECT p.payment_type,
       COUNT(DISTINCT p.order_id) AS orders,
       ROUND(SUM(p.payment_value)::numeric, 2) AS total_value,
       ROUND(100.0 * COUNT(DISTINCT p.order_id) /
             SUM(COUNT(DISTINCT p.order_id)) OVER (), 2) AS pct_of_orders
FROM order_payments p
JOIN orders o ON p.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY orders DESC;
