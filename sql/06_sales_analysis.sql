-- 06_sales_analysis.sql
-- 월별 주문 수 및 결제 금액 추이 분석

SELECT
    STRFTIME('%Y-%m', o.order_purchase_timestamp) AS order_month,
    COUNT(DISTINCT o.order_id) AS order_count,
    ROUND(SUM(p.payment_value), 2) AS total_payment
FROM orders o
JOIN order_payments p
    ON o.order_id = p.order_id
GROUP BY order_month
ORDER BY order_month;
