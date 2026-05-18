-- 02_order_overview.sql
-- 주문 데이터 기본 현황 확인

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    MIN(order_purchase_timestamp) AS first_order_date,
    MAX(order_purchase_timestamp) AS last_order_date
FROM orders;
