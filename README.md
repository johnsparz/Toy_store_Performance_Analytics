# 🧸 One Store Factory – E-commerce Data Analytics Project

## 📌 Project Background

**One Store Factory** is an online e-commerce company that sells popular teddy bears worldwide through its website and digital platforms.
This project is based on historical data recorded between **2012 and 2015**.

The company generates large volumes of data across its digital operations, including: Website traffic, Marketing acquisition channels, Online transactions, Website sessions and pageviews, Orders and returns.

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
* Social Book

---

## 📊 Deliverables

* 📥 **Interactive Power BI Dashboard**
  Download here:
  
  *(https://testfutaedu-my.sharepoint.com/:u:/g/personal/arijecss169964_futa_edu_ng/IQCmDUr6J1NISa95nr-5wTAHAUyq1a-_2ZvUecNvGZJUoes?e=9wUvZy)*
  
  ---
  
  *(https://testfutaedu-my.sharepoint.com/:u:/g/personal/arijecss169964_futa_edu_ng/IQCGLjT5C7xvTLP9__FMMT0SAVKnZCpPnbYUFFuNRSCsci4?e=2wlzhx)*
  
   ---
  
  *(https://testfutaedu-my.sharepoint.com/:u:/g/personal/arijecss169964_futa_edu_ng/IQDJUayTiq7DQb1OVZxUOTo7AT1U_RnUNYG1zdWyfZVB-eU?e=zW9guD)*

  ---
  
* 🧪 **SQL Data Inspection & Quality Checks**
  Queries available in *SQL* folder

* 🧹 **SQL Data Cleaning & Transformation Scripts**
  Queries available in *SQL* folder

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
**visual ERD diagram** 
<img width="1536" height="1024" alt="ER Diagram" src="https://github.com/user-attachments/assets/4fd0dcfc-3d6f-41d8-8545-f69bcebea311" />

---

## 📌 Executive Summary

This project delivers a comprehensive analysis of **digital performance, user behavior, and marketing effectiveness** using **SQL-based data modeling** and **Power BI analytics**.

The platform recorded:

* **473,000 total website sessions**
* **32,000 total orders**
* **6.83% overall session-to-order conversion rate**

This indicates **moderate funnel efficiency** with clear opportunities for optimization.

---

## 📈 Traffic & Order Growth
<img width="731" height="410" alt="TrendinWebsiteSessions Order" src="https://github.com/user-attachments/assets/81e094de-e2a2-4aa4-b08b-2de66d7ce0c0" />

* Strong traffic growth from **2012–2015**, reaching **70,000+ sessions per quarter** by 2014–2015
* Order volume increased consistently to **~5,000–6,000 orders per quarter**
* Traffic growth **outpaced order growth**, revealing a widening funnel gap and highlighting the need for **conversion optimization over traffic expansion**

---

## 🔄 Conversion Performance
<img width="734" height="410" alt="SessionToOrderConversionDashboard" src="https://github.com/user-attachments/assets/e4526043-d4b3-407c-9573-003a04c8c752" />

* Average conversion rate: **6.83%**
* Long-term improvement from **~2–3% (2012)** to **~8–9% (2015)**
* Short-term volatility indicates **inconsistent funnel performance** driven by traffic mix and channel quality

---

## 📣 Marketing Channel Effectiveness
<img width="787" height="410" alt="ChannelperformanceDashboard" src="https://github.com/user-attachments/assets/333573ac-1c39-4713-95dc-3a2dad577f1c" />

### 🚀 Paid Search Dominance

**Google Search (gsearch)**

* Highest sessions (~350K+)
* Highest orders (~23K+)
* Mid-tier conversion efficiency (~6.8%)

### ✅ High-Quality Channels

* **Direct**: Highest conversion (~7.5%) → strong user intent & brand trust
* **Bing Search (bsearch)**: High conversion (~7.2%) → high-quality traffic, low volume

### ⚠️ Underperforming Channel

**Social (socialbook)**

* Lowest sessions
* Lowest orders
* Lowest conversion (~3.2%)
  → Inefficient acquisition performance

---

## 🧠 Strategic Recommendations

### 🎯 Prioritize Conversion Optimization

Focus on improving **funnel efficiency** (UX, checkout flow, page speed, trust signals) rather than scaling traffic volume alone.

---

### 💰 Reallocate Marketing Spend

Increase investment in **high-intent channels**:

* Direct
* Google Search
* Bing Search
  These channels demonstrate stronger conversion efficiency and revenue impact.

---

### ⚠️ Reduce Low-Performing Social Spend

Reassess the **social channel strategy**, as current performance shows low conversion efficiency and weak commercial impact.

---

### 🔁 Implement Structured Funnel Optimization

Apply:

* A/B testing
* Behavioral analytics
* User journey mapping
  to reduce friction across **session → checkout → payment**.

---

### 🧩 Adopt Quality-Driven Acquisition

Shift from **volume-based growth** to **intent-driven growth**, optimizing for traffic quality rather than raw session counts.

---

### 🎯 Segment Users for Targeted Optimization

Personalize experiences by:

* Device type
* Traffic source
* User type (new vs repeat)
  to improve conversion performance.




