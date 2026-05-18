# SQL Analysis

Olist 이커머스 데이터를 활용해 주요 분석 질문을 SQL로 정리했습니다.  
각 쿼리는 데이터 구조 확인, 주문 흐름, 배송 성과, 고객 구매 패턴, 재구매율, 매출 분석을 목적으로 작성했습니다.

| No | 파일명 | 분석 목적 | 주요 SQL 개념 |
|---|---|---|---|
| 01 | `01_table_check.sql` | 테이블 구조, row 수, 주요 key 확인 | COUNT, 기본 조회 |
| 02 | `02_order_overview.sql` | 전체 주문 수, 주문 상태, 월별 주문 흐름 확인 | GROUP BY, 날짜 처리 |
| 03 | `03_delivery_analysis.sql` | 평균 배송 소요일, 배송 지연율, 배송 지연과 리뷰 점수 비교 | JOIN, CASE WHEN, AVG |
| 04 | `04_customer_analysis.sql` | 고객 수, 지역별 고객 분포, 고객별 주문 횟수 확인 | COUNT DISTINCT, GROUP BY |
| 05 | `05_retention_analysis.sql` | 1회 구매 고객과 재구매 고객 비율 분석 | CTE, CASE WHEN, 집계 |
| 06 | `06_sales_analysis.sql` | 총 매출, 월별 매출, 카테고리별 매출 분석 | JOIN, SUM, GROUP BY |
