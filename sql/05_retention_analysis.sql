-- 05_retention_analysis.sql
-- 고객별 주문 횟수 및 재구매 비율 분석

WITH customer_order_counts AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
)
SELECT
    COUNT(*) AS total_unique_customers,
    ROUND(AVG(order_count), 2) AS avg_orders_per_customer,
    SUM(CASE WHEN order_count = 1 THEN 1 ELSE 0 END) AS one_time_customers,
    SUM(CASE WHEN order_count >= 2 THEN 1 ELSE 0 END) AS repeat_customers,
    ROUND(SUM(CASE WHEN order_count = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS one_time_customer_pct,
    ROUND(SUM(CASE WHEN order_count >= 2 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS repeat_customer_pct
FROM customer_order_counts;
