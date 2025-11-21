# E-Commerce BI SQL Project

## Description
This is an E-Commerce database built in PostgreSQL for Business Intelligence analysis. It includes Users, Products, Orders, Order Items, and Categories tables, with sample data, BI queries, and prebuilt views.

## Folder Structure
- `psql/`
  - `create_tables.sql` → Table creation scripts
  - `insert_data.sql` → Sample data
  - `queries.sql` → BI queries
  - `views.sql` → Prebuilt BI views

## How to Use
1. Create a PostgreSQL database.
2. Run `create_tables.sql`.
3. Run `insert_data.sql`.
4. Run `queries.sql` or `views.sql` for analytics.

## Notes
- Users must be inserted before Orders to satisfy foreign key constraints.
