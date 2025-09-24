# 🧠 Sales Data Warehouse Exploration

Welcome to the **SQL Business Intelligence & Data Exploration Toolkit**.  
This project showcases a curated collection of SQL queries for analyzing a **Sales Data Warehouse** — designed with a **star schema** and focused on the **`gold` layer** of a medallion architecture.

> 💡 Ideal for reporting, dashboard development, or foundational EDA in modern data workflows.

---

## 🏗️ Data Warehouse Architecture

This project assumes a **star schema** with the following structure:

- **Fact Table**  
  `fact_sales`

- **Dimension Tables**  
  `dim_customers`, `dim_products`

---

## 🧭 Analysis Sections

| Section                     | Description                                                                 |
|----------------------------|-----------------------------------------------------------------------------|
| 🗃️ Database Exploration      | Discover all tables and columns                                            |
| 🧭 Dimension Exploration     | Understand customer locations, product categories, and hierarchies         |
| 📅 Date & Demographic Analysis | Order timelines, customer birthdates, and derived age analysis            |
| 📊 Measures & KPIs          | Total sales, items sold, prices, orders, and unique customers              |
| 📈 Magnitude Analysis        | Breakdown by gender, country, category, and product                        |
| 🏆 Ranking & Performance     | Top/lowest performing products and customers                               |
| 📊 Consolidated Metrics     | Unified snapshot report of all key business indicators                     |

---

## 🔍 What You'll Discover

### 🗃️ Database Exploration  
- All available tables and columns  
- Metadata insights via `INFORMATION_SCHEMA`

### 🧭 Dimension Exploration  
- Countries customers come from  
- Categories and subcategories of products  
- Product names for deeper drill-down

### 📅 Date & Demographic Insights  
- First and last order dates  
- Range of years available in the dataset  
- Age of the youngest and oldest customers

### 📊 Core Metrics  
- Total sales value  
- Total quantity of items sold  
- Average selling price  
- Number of orders (all and distinct)  
- Product and customer counts  
- Number of customers who placed orders

### 📋 Consolidated KPI Report  
A clean, unified report using `UNION ALL` to present all key performance indicators in a single view.

---

## 📈 Magnitude Analysis

- Customer distribution by country and gender  
- Product count by category  
- Average product cost per category  
- Total revenue by category  
- Total items sold by country  
- Revenue generated per customer

---

## 🏆 Ranking & Performance

- **Top 5** products by revenue  
- **Bottom 5** products by revenue  
- **Top 10** customers by total spend  
- **Bottom 3** customers by order frequency

---
## 📂 Folder Structure



---

## 📊 Use Cases

- 📈 Power BI or Tableau dashboard backend  
- 📋 Executive summary and reporting  
- 🧪 ETL pipeline validation  
- 🕵️‍♂️ Data quality and anomaly detection  
- 📊 Business performance benchmarking
