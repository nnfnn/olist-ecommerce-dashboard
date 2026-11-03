-- 07_revenue_by_state.sql
-- Revenue by customer state.

SELECT c.customer_state,
       ROUND(SUM(oi.price)::numeric, 2) AS revenue,
       COUNT(DISTINCT o.order_id) AS orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY revenue DESC;
