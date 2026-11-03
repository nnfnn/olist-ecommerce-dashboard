-- 03_monthly_revenue.sql
-- Monthly revenue, orders, and average order value (AOV).

SELECT DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
       COUNT(DISTINCT o.order_id) AS orders,
       ROUND(SUM(oi.price)::numeric, 2) AS revenue,
       ROUND((SUM(oi.price) / COUNT(DISTINCT o.order_id))::numeric, 2) AS aov
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY 1;
