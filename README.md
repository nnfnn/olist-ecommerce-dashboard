# Olist E-commerce Sales Dashboard

End-to-end analysis of ~100k Brazilian e-commerce orders using PostgreSQL and Power BI.

## Business Problem
Olist wants to understand sales performance, customer behavior, and delivery issues so it can grow revenue and improve customer satisfaction.

**Questions answered:**
- How do revenue and orders trend month over month?
- Which product categories and states drive the most revenue?
- What is the average order value (AOV) and repeat customer rate?
- How often are orders delivered late, and does it hurt review scores?
- How do customers pay?

## Tools
PostgreSQL, SQL, Power BI, DAX

## Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (Kaggle), about 100k orders from 2016 to 2018, 9 CSV files.

## Approach
1. Loaded the 9 CSVs into PostgreSQL.
2. Cleaned and validated the data in SQL (kept `delivered` orders only, removed null delivery dates, checked duplicates).
3. Wrote KPI queries for revenue, AOV, categories, repeat rate, delivery, and review score.
4. Built a 3-page Power BI dashboard with DAX measures.

## Key Insights
> Replace the placeholders with your real numbers after running the queries.
- Revenue grew **X%** from 2017 to 2018, peaking in **[month]**.
- The top 3 categories bring **Y%** of total revenue.
- Only **Z%** of customers buy again, so retention is weak.
- Late deliveries lower the average review score from **A** to **B**.
- **[State]** drives **W%** of revenue.

## Recommendations
- Improve delivery performance in **[states]**, because late orders hurt reviews.
- Run a retention campaign (offers, email) for first-time buyers.
- Focus marketing on the top-performing categories and states.

## Dashboard Preview
![Overview](screenshots/overview.png)
![Customers and Products](screenshots/customers_products.png)
![Delivery and Reviews](screenshots/delivery_reviews.png)

## Repository Structure
```
olist-ecommerce-dashboard/
├── README.md
├── sql/                  # KPI and cleaning queries
├── dashboard/            # Power BI (.pbix) file
└── screenshots/          # Dashboard images
```

## How to Run
1. Download the dataset from Kaggle and load the CSVs into PostgreSQL (database `olist`).
2. Run the scripts in `/sql` in order.
3. Open `dashboard/olist_dashboard.pbix` in Power BI Desktop and point it to your database.

## Author
**Muhammed Nifan**
[LinkedIn](https://www.linkedin.com/in/nifan-mk-/) | [GitHub](https://github.com/nnfnn)
