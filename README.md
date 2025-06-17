# SQL-E-Commerce-Product-Insights

🛒 E-Commerce Product Insights using SQL
This project provides business intelligence and recommendation insights using SQL on a real-world e-commerce dataset sourced from Kaggle. The dataset contains detailed product-level information such as sales, price, discount, ratings, reviews, stock quantity, city availability, and more.

📊 Project Objective
To analyze product performance, discover trends, identify high/low-performing products, and provide actionable insights for business decision-making in e-commerce.

📁 Dataset Overview
The dataset includes the following columns:

ProductID

ProductName

Category

Price

Rating

NumReviews

StockQuantity

Discount

Sales

DateAdded

City

StockInVastOrLimitedQuantity

✅ Skills Demonstrated
This project showcases the following SQL concepts:

SELECT statements and filtering

Aggregate functions with GROUP BY and HAVING

JOINs (when extended with multiple tables)

Subqueries (scalar, correlated, and in WHERE clause)

Common Table Expressions (CTEs)

Window functions (RANK, ROW_NUMBER, etc.)

Writing complex layered queries for business logic

🔍 Business Questions Answered
What are the top-selling products by city and category?

Which products have high ratings but low sales (underrated)?

What are the most discounted high-performing products?

Which products are at risk of going out of stock?

How does product demand compare to available stock?

Which categories perform best in each city?

🛠️ Tools Used
SQL (PostgreSQL or SQLite recommended)

DB Browser for SQLite / pgAdmin / Jupyter SQL

Optional: Power BI or Tableau for dashboard visualization

📈 Future Improvements
Add customer and order-level tables for deeper insights (using joins)

Build recommendation logic based on city + rating + stock

Export queries into Power BI for interactive dashboards
