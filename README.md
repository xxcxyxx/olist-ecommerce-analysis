# Olist 이커머스 데이터 분석 프로젝트

## 프로젝트 소개
이 프로젝트는 브라질 이커머스 플랫폼 Olist의 공개 데이터를 활용하여 주문, 고객, 상품, 판매자, 결제, 리뷰 데이터를 분석한 프로젝트입니다.

원본 CSV 데이터를 SQLite 데이터베이스에 적재하고, Python과 SQL을 활용해 데이터 구조를 확인한 뒤 탐색적 데이터 분석(EDA)을 수행했습니다. 단순한 수치 확인에 그치지 않고, 주문 흐름과 배송 성과, 고객 구매 패턴, 상품 카테고리 성과, 판매자 분포, 결제 방식, 리뷰 경향을 비즈니스 관점에서 해석하는 데 목적을 두었습니다.

이 프로젝트는 데이터 분석 역량을 중심으로, 데이터 적재와 테이블 구조화 등 기초적인 데이터 엔지니어링 과정까지 함께 포함한 포트폴리오 프로젝트입니다.

---

## 프로젝트 목표
- SQLite 기반의 분석 환경을 직접 구성하고 데이터 적재 과정 정리
- 여러 테이블로 구성된 이커머스 데이터를 관계형 구조로 이해
- SQL과 Python을 활용한 탐색적 데이터 분석 수행
- 주문, 고객, 상품, 판매자, 결제, 리뷰 데이터를 연결하여 해석
- 분석 결과를 비즈니스 인사이트로 정리
- GitHub 기준으로 재현 가능하고 구조적인 프로젝트 문서화

---

## 데이터셋
- 데이터셋명: Brazilian E-Commerce Public Dataset by Olist
- 출처: Kaggle

### 주요 테이블
- `customers`
- `orders`
- `order_items`
- `order_payments`
- `order_reviews`
- `products`
- `sellers`
- `geolocation`
- `product_category_name_translation`

---

## 사용 기술
- Python
- Jupyter Notebook
- SQLite
- pandas
- matplotlib

---

## 프로젝트 구조

```bash
olist-ecommerce-analysis/
├── data/
│   └── raw/
├── db/
│   └── olist.db
├── notebooks/
│   ├── 01_setup.ipynb
│   ├── 02_load_olist_data.ipynb
│   ├── 03_eda_overview.ipynb
│   ├── 04_orders_eda.ipynb
│   ├── 05_customers_eda.ipynb
│   ├── 06_products_eda.ipynb
│   ├── 07_sellers_eda.ipynb
│   ├── 08_payments_eda.ipynb
│   ├── 09_reviews_eda.ipynb
│   └── 10_final_insights.ipynb
├── output/
├── sql/
└── README.md
