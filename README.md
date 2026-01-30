# 🧸 One Store Factory – E-commerce Data Analytics Project

## 📌 Project Background

**One Store Factory** is an online e-commerce company that sells popular teddy bears worldwide through its website and digital platforms.
This project is based on historical data recorded between **2012 and 2015**.

The company generates large volumes of data across its digital operations, including:

* Website traffic
* Marketing acquisition channels
* Online transactions
* Website sessions and pageviews
* Orders and returns

However, much of this data has historically been **underutilized for structured analytics and data-driven decision-making**.

---

## 🎯 Project Objective

This project focuses on building a **complete end-to-end data analytics pipeline** that transforms raw website session and order data into **clean, structured, and business-ready datasets**.

The core goal is to uncover **actionable insights** that drive:

* Improved marketing performance
* Higher conversion efficiency
* Stronger commercial growth

---

## 🔍 Key Business Focus Areas

Insights and analysis are structured around the following core domains:

### 📈 Traffic & Session Trends

Analysis of website traffic growth, user sessions, and engagement patterns over time.

### 🔄 Conversion Performance

Evaluation of session-to-order conversion rates and funnel efficiency.

### 📣 Marketing Channel Effectiveness

Performance analysis of key acquisition channels:

* Google Search
* Bing Search
* Direct Traffic
* Social Media

---

## 📊 Deliverables

* 📥 **Interactive Power BI Dashboard**
  Download here: *(Add Power BI link)*

* 🧪 **SQL Data Inspection & Quality Checks**
  Queries available here: *(Add GitHub link)*

* 🧹 **SQL Data Cleaning & Transformation Scripts**
  Queries available here: *(Add GitHub link)*

---

## 🗄️ Data Structure

The project uses a **structured relational data model** designed to support scalable analytics and business intelligence workflows.
Data is organized into **normalized tables** that represent core business entities across the e-commerce platform.

### 📦 Core Tables

* **Website Sessions**
  User sessions, traffic sources, devices, and referral data.

* **Website Pageviews**
  Page-level user interactions and navigation paths.

* **Orders**
  Transaction records and order-level details.

* **Order Items**
  Product-level purchase details.

* **Order Item Refunds**
  Returns and refund transactions.

* **Products**
  Product catalog and attributes.

---

## 🔗 Table Relationships (Relational Model)

```
website_sessions  (1 → many)  website_pageviews

website_sessions  (1 → many)  orders
orders            (1 → many)  order_items
order_items       (1 → many)  order_item_refunds

products          (1 → many)  order_items
```

**visual ERD diagram (image)** 



