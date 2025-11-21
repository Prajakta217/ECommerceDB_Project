# E-Commerce BI SQL Project

## Description
This project is a sample E-Commerce database built in PostgreSQL, designed for Business Intelligence analysis. It includes Users, Products, Orders, Order Items, and Categories tables, along with sample data, BI queries, and prebuilt views.

## Folder Structure
- `sql/`
  - `create_tables.sql` → Table creation scripts
  - `insert_data.sql` → Sample data inserts
  - `queries.sql` → BI-style analytical queries
  - `views.sql` → Prebuilt BI views

## Features / BI Insights
- Top selling products
- Top customers by revenue
- Monthly revenue trends
- Revenue by category and location
- Low stock alerts
- Average discounts
- Orders by payment method
- Orders per user

## How to Use
1. Open PostgreSQL and create a new database (e.g., `ECommerceDB`).
2. Run `create_tables.sql` to create all tables.
3. Run `insert_data.sql` to insert sample data.
4. Run `queries.sql` to explore BI queries.
5. Run `views.sql` to create prebuilt views for easy analytics.

## Notes
- Make sure to insert Users before Orders to satisfy foreign key constraints.
- Views are ready to query directly for analysis.

