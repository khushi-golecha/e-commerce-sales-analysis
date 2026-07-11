# 🛒 E-Commerce Order Analysis | Python, SQL Server & Excel

## Executive Summary

This project demonstrates an end-to-end data analytics workflow using a raw e-commerce transactions dataset. The dataset contained missing values, duplicate records, inconsistent date formats, and data quality issues that required preprocessing before analysis.

Using **Python (Pandas & NumPy)** for data cleaning and statistical analysis, **SQL Server** for business reporting, and **Microsoft Excel** for interactive dashboards, the project transforms raw transactional data into actionable business insights.

The project showcases a complete analytics pipeline, from data preparation to business intelligence reporting, making it representative of a real-world Data Analyst workflow.

---

## Business Problem

Organizations rely on transactional sales data to monitor performance and support strategic decisions. However, raw operational datasets frequently contain:

* Missing values
* Duplicate records
* Inconsistent data formats
* Invalid numerical values
* Incomplete business metrics

Without proper data preparation, these issues can lead to inaccurate reporting and poor business decisions.

This project addresses these challenges by building a structured analytics workflow that cleans, validates, analyzes, and reports on e-commerce order data.

---

# Project Objectives

* Clean and preprocess raw e-commerce transaction data.
* Handle missing values and duplicate records.
* Standardize inconsistent date formats.
* Generate revenue metrics.
* Perform exploratory data analysis (EDA).
* Conduct descriptive statistical analysis.
* Detect revenue outliers using the IQR method.
* Analyze the relationship between purchase quantity and revenue.
* Write SQL queries to answer key business questions.
* Build an Excel dashboard for business reporting.

---

# Tech Stack

| Technology        | Purpose                       |
| ----------------- | ----------------------------- |
| Python            | Data Cleaning & Analysis      |
| Pandas            | Data Manipulation             |
| NumPy             | Statistical Analysis          |
| SQL Server (SSMS) | Business Intelligence Queries |
| Microsoft Excel   | Pivot Tables & Dashboard      |
| Jupyter Notebook  | Data Analysis Workflow        |

---

# Dataset Overview

The dataset contains customer-level e-commerce transactions with product, pricing, payment, and order information.

### Dataset Features

* Order ID
* Customer Name
* Product
* Category
* Quantity
* Price
* Payment Method
* Order Status
* Order Date
* Revenue

---

# Data Cleaning Pipeline

The raw dataset underwent several preprocessing steps before analysis.

### Data Cleaning Activities

* Removed duplicate records.
* Standardized column names by removing leading/trailing spaces.
* Converted Quantity and Price to numeric data types.
* Standardized date formats using Pandas.
* Imputed missing numerical values using the median.
* Filled missing categorical values with **"Unknown"**.
* Generated a calculated Revenue field.
* Exported a cleaned dataset for SQL and Excel analysis.

---

# Exploratory Data Analysis (EDA)

Exploratory analysis was conducted to understand customer purchasing behavior and sales performance.

The analysis included:

* Revenue by Product Category
* Orders by Status
* Revenue by Payment Method
* Category Distribution
* Customer Distribution
* Overall Revenue Trends

---

# Statistical Analysis

Descriptive statistics and anomaly detection were performed on the Revenue column.

### Revenue Statistics

| Metric             |          Value |
| ------------------ | -------------: |
| Records Analyzed   | **100 Orders** |
| Mean Revenue       |  **₹1,355.00** |
| Median Revenue     |  **₹1,413.63** |
| Standard Deviation |  **₹2,485.50** |

### Outlier Detection

The Interquartile Range (IQR) method was used to identify anomalous revenue values.

**Findings**

* **2 revenue outliers** were detected.
* These observations represent unusually large positive or negative transactions and should be investigated before business reporting.

### Correlation Analysis

Pearson Correlation between **Quantity** and **Revenue**

**Correlation Coefficient: 0.607**

Interpretation:

A moderate positive relationship exists between purchase quantity and order revenue, indicating that larger order quantities generally contribute to higher sales values.

---

# SQL Business Analysis

SQL Server was used to answer common business questions, including:

* Total Revenue
* Average Order Value
* Revenue by Category
* Revenue by Payment Method
* Revenue by Order Status
* Top-Selling Products
* Top Customers
* Monthly Revenue Analysis
* Month-over-Month Revenue Growth using Window Functions

---

# Excel Dashboard

An interactive Excel dashboard was developed using:

* Pivot Tables
* KPI Summary Cards
* Pivot Charts
* Conditional Formatting
* Monthly Revenue Analysis
* Category Performance
* Payment Method Analysis

---

# Key Project Findings

* Successfully cleaned and standardized **100 e-commerce transactions** for downstream analysis.
* Identified and resolved missing values, duplicate records, and inconsistent date formats to improve data quality.
* Calculated an **average order revenue of ₹1,355.00**, providing a baseline customer spending metric.
* Detected **2 statistical outliers** using the IQR method, highlighting transactions that require business review.
* Found a **moderate positive correlation (0.607)** between Quantity and Revenue, indicating that higher purchase quantities generally increase revenue.
* Produced SQL reports and Excel dashboards to support business performance monitoring and decision-making.

---

# Repository Structure

```text
Ecommerce-Order-Analysis/
│
├── data/
│   ├── ecommerce_orders.csv
│   └── cleaned_orders.csv
│
├── python_notebooks/
│   ├── 01_Data_Cleaning_EDA.ipynb
│   └── 02_Statistical_Analysis.ipynb
│
├── sql_scripts/
│   ├── 01_schema_setup.sql
│   └── 02_business_queries.sql
│
├── excel_dashboard/
│   ├── EcommerceOrders.xlsx
|   └── dashboard 1.png
|   └── dashboard 2.png
│
└── README.md
```

---

# Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis (EDA)
* Data Validation
* Missing Value Treatment
* Statistical Analysis
* Outlier Detection (IQR)
* Correlation Analysis
* SQL Aggregations
* Window Functions
* Business Reporting
* Microsoft Excel Dashboard Development

---

# Future Enhancements

* Develop an interactive Power BI dashboard.
* Build customer segmentation using RFM analysis.
* Implement sales forecasting models.
* Automate ETL workflows using Python.
* Extend the analysis with customer lifetime value (CLV) and profitability metrics.
