📦 siddharth_trade_pipeline
International Trade Data Pipeline – Siddharth Associates Assignment
🚀 Objective

Build a complete data engineering pipeline that:

Ingests raw international trade data (2017–Aug 2025)

Cleans and preprocesses it

Converts unstructured text (Goods Description) into structured fields

Loads into normalized database tables

Creates analytical SQL views

Builds dashboards for insights

📁 Project Structure
siddharth_trade_pipeline/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── scripts/
│   ├── extract.ipynb
│   ├── transform.ipynb
│   ├── load.sql
│   └── analysis.sql
│
├── db/
│   └── schema.sql
│
├── dashboards/
│   ├── powerbi.pbix
│   └── screenshots/
│
└── README.md

🧠 Skills & Tools

Python – Pandas, Regex

SQL – Data modeling & indexing

Power BI / Tableau – Dashboards

ETL Pipeline Design

Data Quality & Standardization

🏗️ ETL Workflow
1️⃣ Extract

Read multiple CSV files (2017–2025)

Merge into one combined dataset

Python Example:

import pandas as pd
df = pd.concat([pd.read_csv(file) for file in files])

2️⃣ Transform

Tasks include:

Remove special characters

Fix inconsistent formatting

Convert units (KG → TON, INR → USD, etc.)

Handle missing values

3️⃣ Parse Goods Description

Convert text into structured fields:

Field	Example
Model	A52
Capacity	256GB
Material	Aluminum
Price	12000

Process using regex + string rules.

4️⃣ Load (Database)

Create normalized SQL tables:

imports

exports

products

countries

analytics_views

Load cleaned data into database using SQL or Python.

5️⃣ Create Analytics Views

Examples:

CREATE VIEW top_countries AS
SELECT country, SUM(value) AS total_value
FROM imports
GROUP BY country
ORDER BY total_value DESC;


Other views may include:

HS Code performance

YOY growth

Product contribution

Seasonal patterns

6️⃣ Dashboards

Dashboards include:

Country-wise trade value

Product category trends

Year-over-year comparison

Monthly growth heatmaps

📊 Insights to Present

Which product categories drive most value?

Which countries have strong trade relationships?

How trade changed over years (especially post-2020)?

Which products show the fastest growth or decline?

🔥 Optional Advanced Add-ons

✔ Automate pipeline with Airflow
✔ Deploy dashboards online
✔ Auto-email reports
✔ Store logs for monitoring

🧑‍💻 Requirements

Python 3.9+

Pandas

Jupyter

SQL database (PostgreSQL / MySQL / SQLite)

Power BI / Tableau

🤝 Author

Methari Shirisha
siddharth_trade_pipeline – Data Engineering Assignment
