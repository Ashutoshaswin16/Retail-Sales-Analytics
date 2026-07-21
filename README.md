#  Retail Sales Analytics

An end-to-end Retail Sales Analytics project built using Python, SQL, SQLite, and Power BI to analyze sales performance, identify business insights, and create an interactive dashboard.

# Project Overview

This project analyzes a retail sales dataset containing 9,994 transactions across different product categories, regions, customer segments, and states.

The project covers the complete data analytics workflow:

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Business Analysis
- Interactive Power BI Dashboard

# Tools & Technologies

- Python
- Pandas
- Matplotlib
- SQLite
- SQL
- Power BI
- Git
- GitHub

# Project Structure

Retail-Sales-Analytics/
│
├── dashboard/
│   └── Retail_Sales_Dashboard.pbix
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── retail_sales.db
│
├── notebooks/
│   ├── 01_Data_Cleaning.ipynb
│   └── 02_EDA.ipynb
│
├── scripts/
│   └── load_to_sqlite.py
│
├── sql/
│   ├── business_queries.sql
│   ├── advanced_queries.sql
│   └── create_database.sql
│
└── README.md

## Dashboard Features

- KPI Cards
  - Total Sales
  - Total Profit
  - Total Orders
  - Average Discount

- Sales by Category
- Profit by Region
- Top 10 States by Sales
- Interactive Filters
  - Region
  - Category
  - Segment

# Key Business Insights

- Technology generated the highest sales.
- The West region produced the highest profit.
- California was the highest revenue-generating state.
- Tables, Bookcases, and Supplies were loss-making sub-categories.
- Consumer was the highest revenue-generating customer segment.

# SQL Analysis

The project includes SQL analysis covering:

- Aggregate Functions
- GROUP BY
- HAVING
- WHERE
- CASE WHEN
- Window Functions
- CTEs
- Subqueries

#Power BI Dashboard

![alt text](<Screenshot 2026-07-18 231430.png>)


# Author

Ashutosh Aswin

GitHub:
https://github.com/Ashutoshaswin16  
# 📊 Retail Sales Analytics

An end-to-end Retail Sales Analytics project built using **Python, SQL, SQLite, and Power BI**. This project demonstrates the complete data analytics workflow, including data cleaning, exploratory data analysis (EDA), SQL-based business analysis, and interactive dashboard creation.

---

# 📌 Project Overview

The objective of this project is to analyze retail sales data to uncover business insights related to sales performance, profitability, customer segments, product categories, and regional performance.

The project follows a complete analytics pipeline:

- Data Cleaning using Python
- Exploratory Data Analysis (EDA)
- Business Analysis using SQL
- Interactive Dashboard Development using Power BI
- Version Control using Git and GitHub

---

# 🎯 Objectives

- Clean and preprocess retail sales data.
- Perform exploratory data analysis to identify trends and patterns.
- Write SQL queries to answer business questions.
- Build an interactive Power BI dashboard for business reporting.
- Present key insights to support data-driven decision-making.

---

# 📂 Project Structure

```text
Retail-Sales-Analytics/
│
├── dashboard/
│   └── Retail_Sales_Dashboard.pbix
│
├── data/
│   ├── raw/
│   │   └── SampleSuperstore.csv
│   │
│   └── processed/
│       └── cleaned_superstore.csv
│
├── database/
│   └── retail_sales.db
│
├── images/
│   └── dashboard.png
│
├── notebooks/
│   ├── 01_Data_Cleaning.ipynb
│   └── 02_EDA.ipynb
│
├── scripts/
│   └── load_to_sqlite.py
│
├── sql/
│   ├── create_database.sql
│   ├── business_queries.sql
│   └── advanced_queries.sql
│
└── README.md
```

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| Matplotlib | Data Visualization |
| SQLite | Database Storage |
| SQL | Business Analysis |
| Power BI | Dashboard Development |
| Git | Version Control |
| GitHub | Project Hosting |

---

# 📊 Dataset Information

- Dataset Name: Sample Superstore
- Total Records: **9,994**
- Total Features: **13**

### Dataset Columns

- Ship Mode
- Segment
- Country
- City
- State
- Postal Code
- Region
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

---

# 🧹 Data Cleaning

The following preprocessing steps were performed using Python:

- Imported dataset using Pandas
- Checked dataset shape and structure
- Verified data types
- Checked for missing values
- Removed duplicate records (if any)
- Standardized column names
- Saved cleaned dataset for analysis

---

# 📈 Exploratory Data Analysis

EDA was performed to understand the business performance through various visualizations and statistical summaries.

### Analysis Performed

- Sales by Category
- Profit by Region
- Sales by Customer Segment
- Orders by Ship Mode
- Top 10 States by Sales
- Top Selling Sub-Categories
- Most Profitable Sub-Categories
- Loss-Making Sub-Categories
- Correlation Matrix
- Distribution Analysis

---

# 💻 SQL Analysis

Business queries were written using SQLite to answer important analytical questions.

### SQL Concepts Covered

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- LIMIT
- Aggregate Functions
- CASE WHEN
- Window Functions
  - RANK()
  - DENSE_RANK()
  - ROW_NUMBER()
- Common Table Expressions (CTEs)
- Subqueries

---

# 📊 Power BI Dashboard

The interactive dashboard provides a comprehensive overview of sales performance.

### Dashboard Features

### KPI Cards

- Total Sales
- Total Profit
- Total Orders
- Average Discount

### Charts

- Sales by Category
- Profit by Region
- Top 10 States by Sales
- Top 10 Sub-Categories by Sales

### Interactive Filters

- Region
- Category
- Segment

---

#  Dashboard Preview

> 
```markdown
![Dashboard](https://1drv.ms/i/c/3420b5b7d4e52e7e/IQAoEIh47dVGSrlWvgZlpeMSAamKtZGVtpvON-oDK-7njNs?e=q6ZPk6)
```

---

# 🔍 Key Business Insights

- Technology generated the highest overall sales.
- The West region recorded the highest profit.
- California was the highest revenue-generating state.
- Consumer was the highest revenue-generating customer segment.
- Phones and Chairs were among the top-selling product sub-categories.
- Tables, Bookcases, and Supplies generated overall losses.
- Standard Class was the most frequently used shipping mode.

---

#  Project Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning (Python)
      │
      ▼
Exploratory Data Analysis
      │
      ▼
SQLite Database
      │
      ▼
SQL Business Queries
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

#  Future Improvements

- Sales Forecasting using Machine Learning
- Customer Segmentation
- Profit Prediction
- Time-Series Sales Analysis
- Interactive Web Dashboard

---

#  Learning Outcomes

Through this project, I gained practical experience in:

- Data Cleaning
- Data Analysis
- SQL Query Writing
- Database Management
- Dashboard Design
- Business Intelligence
- Git & GitHub
- End-to-End Data Analytics Workflow

---

#  Author

**Ashutosh Aswin**

Bachelor of Science (Hons.) in Data Science and Analytics

GitHub: https://github.com/Ashutoshaswin16

---

#  If you found this project useful, consider giving a thumbs up!!