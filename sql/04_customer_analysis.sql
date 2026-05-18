-- 04_customer_analysis.sql
-- 고객 지역 분포 분석

SELECT
    customer_state,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_state
ORDER BY customer_count DESC;
