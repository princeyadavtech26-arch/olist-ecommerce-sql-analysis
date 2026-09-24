# 🛒 Olist E-Commerce Data Analysis | SQL & MySQL

## 📌 Project Overview

This project focuses on analyzing **Olist e-commerce data using SQL and MySQL** to understand order performance, product sales revenue, product category performance, customer spending, customer reviews, monthly revenue, and seller performance.

The project uses SQL queries across multiple related tables to answer practical **business questions** and extract meaningful insights from e-commerce data.

---

## 🎯 Business Objective

The objective of this project is to use SQL to analyze different aspects of an e-commerce business, including:

- Order volume and order status
- Product sales revenue
- Product category performance
- Customer spending
- Monthly revenue trends
- Number of items sold by product category
- Customer review scores
- Seller sales performance

The analysis demonstrates how SQL can be used to transform raw relational data into useful business information.

---

## ❓ Business Questions

The project answers the following business questions:

1. **How many unique orders has Olist received in total?**
2. **How many orders are there for each order status?**
3. **What is the total revenue generated from product sales?**
4. **Which 10 product categories generated the highest sales revenue?**
5. **Who are the top 10 customers based on total spending?**
6. **How much revenue was generated in each month?**
7. **Which product categories sold the highest number of items?**
8. **Which order status has the highest average customer review score?**
9. **What are the top 10 product categories based on items sold?**
10. **Who are the top 5 sellers based on total sales revenue?**

---

## 📊 Analysis Performed

### 📦 1. Order Analysis

Analyzed the overall order volume and distribution of orders across different order statuses.

- Total unique orders
- Orders by order status
- Order status distribution
- Identification of the order status with the highest number of orders

### 💰 2. Sales & Revenue Analysis

Analyzed product sales revenue and revenue trends over time.

- Total product sales revenue
- Monthly revenue
- Revenue by product category
- Top 10 product categories by sales revenue

### 🛍️ 3. Product Category Analysis

Analyzed product categories based on both revenue and the number of items sold.

- Product categories by number of items sold
- Top 10 product categories based on items sold
- Top 10 product categories based on sales revenue

### 👤 4. Customer Analysis

Analyzed customer spending behavior by joining order and order-item data.

- Top 10 customers based on total spending
- Number of orders associated with top customers
- Total spending by customer

### ⭐ 5. Customer Review Analysis

Analyzed customer review scores in relation to order status.

- Average customer review score by order status
- Comparison of average review scores across order statuses

### 🏪 6. Seller Analysis

Analyzed seller performance based on product sales revenue.

- Top 5 sellers by total sales revenue
- Seller-wise revenue comparison

---

## 🛠️ Tools & Technologies

- **MySQL** – Database management and SQL querying
- **SQL** – Data analysis and business problem solving
- **GitHub** – Project documentation and version control

---

## 📁 Dataset & Tables Used

The project uses the **Olist E-Commerce Dataset**.

The SQL analysis uses the following tables:

- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_products_dataset`
- `olist_order_reviews_dataset`
- `olist_sellers_dataset`

These tables are connected using common identifiers such as:

- `order_id`
- `product_id`
- `customer_id`
- `seller_id`

This relational structure allows multiple tables to be joined for deeper analysis.

---

## 💻 SQL Concepts Used

This project demonstrates practical use of the following SQL concepts and functions:

- `SELECT`
- `USE`
- `COUNT()`
- `COUNT(DISTINCT)`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `JOIN`
- `DATE_FORMAT()`
- Aggregate functions
- Data grouping
- Sorting
- Date-based analysis
- Relational table joins

---

## 🔍 Analysis Approach

### 1. Data Understanding

The Olist dataset was explored to understand the available tables, columns, and relationships between the data.

### 2. SQL Query Development

SQL queries were written to answer specific business questions related to orders, revenue, products, customers, reviews, and sellers.

### 3. Data Aggregation

Aggregate functions such as `COUNT()`, `COUNT(DISTINCT)`, `SUM()`, and `AVG()` were used to calculate business metrics.

### 4. Relational Analysis

`JOIN` operations were used to combine information from related tables, such as orders with order items, products, reviews, and sellers.

### 5. Grouping & Sorting

`GROUP BY` and `ORDER BY` were used to compare categories, customers, sellers, and order statuses.

### 6. Date-Based Analysis

`DATE_FORMAT()` was used to group order data by month and analyze monthly revenue.

---

## 📈 Key Results

Some important results from the analysis include:

| Metric | Result |
|---|---:|
| Total Unique Orders | **99,441** |
| Total Product Sales Revenue | **13,591,643.70** |
| Delivered Orders | **96,478** |
| Highest Items Sold by Category | **11,115** |
| Highest Average Review Score | **4.1557** |


## 📊 Key Metrics Analyzed

The project analyzes the following e-commerce metrics:

- **Total Unique Orders**
- **Orders by Status**
- **Total Product Sales Revenue**
- **Monthly Revenue**
- **Revenue by Product Category**
- **Items Sold by Product Category**
- **Top Customer Spending**
- **Average Customer Review Score**
- **Seller Revenue**

---

## 🧠 Skills Demonstrated

### SQL & Database Skills

- SQL querying
- MySQL
- Aggregate functions
- Data grouping
- Sorting and filtering through query logic
- SQL joins
- Date-based analysis
- Relational database analysis

### Data Analysis Skills

- Data exploration
- Business question solving
- E-commerce data analysis
- Customer spending analysis
- Product category analysis
- Sales and revenue analysis
- Customer review analysis
- Seller performance analysis
- Analytical thinking

### Professional Skills

- Translating business questions into SQL queries
- Interpreting query results
- Organizing analytical findings
- GitHub project documentation

---

## 💡 Business Value

This project demonstrates how SQL can be used to analyze e-commerce data and answer practical business questions.

The analysis can help understand:

- Overall order performance
- Order status distribution
- Product sales revenue
- Product category performance
- Customer spending behavior
- Monthly revenue trends
- Customer review performance
- Seller revenue performance

Overall, the project demonstrates the practical application of **SQL and MySQL for data analysis and business problem solving**.

---

## 📄 Project Documentation

The complete project PDF contains the SQL queries and their corresponding results for all 10 analyses.

👉 **[View Complete Olist SQL Project PDF](https://github.com/princeyadavtech26-arch/olist-ecommerce-sql-analysis/blob/main/olist_project%20by%20prince.pdf)**

---

## 📂 Project Structure

```text
olist-ecommerce-sql-analysis/
│
├── README.md
└── olist_project.pdf

---

## 🚧 Project Status
**Completed**

The project contains SQL-based analysis covering orders, sales revenue, product categories, customers, monthly revenue, customer reviews, and seller performance.

---

## 👨‍💻 Author

**Prince Yadav**

Aspiring Data Analyst

**Skills:** SQL | Power BI | Excel | Python
