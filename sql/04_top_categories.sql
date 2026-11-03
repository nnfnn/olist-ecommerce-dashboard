-- 04_top_categories.sql
-- Top 10 product categories by revenue.

SELECT t.product_category_name_english AS category,
       ROUND(SUM(oi.price)::numeric, 2) AS revenue,
       COUNT(DISTINCT oi.order_id) AS orders
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_name_translation t
  ON p.product_category_name = t.product_category_name
GROUP BY 1
ORDER BY revenue DESC
LIMIT 10;
