-- 03_delivery_analysis.sql
-- 배송 소요 기간 및 배송 지연 여부 분석

SELECT
    order_id,
    order_purchase_timestamp,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    JULIANDAY(order_delivered_customer_date) - JULIANDAY(order_purchase_timestamp) AS delivery_days,
    CASE
        WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 1
        ELSE 0
    END AS is_delayed
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;
