## About Me

👋 Hi, Cześć, Selam

I am learning IT and software development basics. I have experience in **SQL, Excel, VBA, and Python** through hands-on projects.

I am actively improving my skills and building a portfolio to demonstrate my capabilities in data analysis and reporting.

You can review my projects below 👇

## 🧠 Learning

- VBA (basic)
- Python (basic)
- Excel (intermediate)
- SQL (intermediate)
- KQL (intermediate)

# IT-Consultant-Portfolio

SQL, Excel and VBA projects for data analysis and reporting
This repository contains my \*\*SQL, Excel, and VBA\*\* projects prepared for the \*\*Junior IT Consultant\*\* position.  



\*\*SQL projects\*\* are developed on the \*\*AdventureWorksDW2022\*\* database (Microsoft's sample data warehouse for reporting and analysis).  

\*\*Excel and VBA projects\*\* include sample business reports (e.g., sales analysis, customer segmentation) with \*\*multilingual support\*\*.


\*\*All reports and documentation are available in English, Turkish, and Polish\*\* to support international teams and clients (Israel, Poland, Turkey).


## 📁 Project Structure


## 📊 SQL Projects

| File | Description |
|---|---|
| [SQLDimCustomer.sql](SQL/SQLDimCustomer.sql) | Customer segmentation analysis |
| [SQLDimReseller.sql](SQL/SQLDimReseller.sql) | Reseller sales analysis |
| [SQLEnglisProduct.sql](SQL/SQLEnglisProduct.sql) | Product profit analysis |
| [SQLFactResellerSales.sql](SQL/SQLFactResellerSales.sql) | Sales profit calculations |
| [Percentage,Profit_Of_Men_And_Women.sql](SQL/Percentage%2CProfit_Of_Men_And_Women.sql) | Gender-based profit comparison |
| [SQLMarginOfMF_DimCustomer.sql](SQL/SQLMarginOfMF_DimCustomer.sql) | Male/Female customer margin |

## 📊 Excel Projects

| File | Description | Features Used |
|---|---|---|
| Flower Sales (TR/EN/PL) | Monthly sales analysis | SUBTOTAL, Data Validation, Dropdown, Conditional Formatting, Charts, MIN/MAX/AVG |

> 📝 All reports available in **English, Turkish and Polish**

---

## 🤖 VBA Projects

| File | Description |
| :--- | :--- |
| [ProfitCheck_WithColorAndMessage.bas](VBA/ProfitCheck.bas) | Profit/Loss checker with automatic cell coloring (red/green) |
| [Taxcheck.bas](VBA/TaxCheck.bas) | Tax checker with automatic cell coloring (red/green) |


## 🤖 Python Projects

| File | Description |
| :--- | :--- |
| [db.py](PANDAS/db.py) | Connects Python to SQL Server using pyodbc, runs a query, and loads data into a Pandas DataFrame. |

- **/PANDAS** – Python scripts for data analysis


\- \*\*/images\*\* – Screenshots of reports and dashboards
\- \*\*/SQL\*\* – All queries
\- \*\*/VBA\*\* – Scripts
\- \*\*/PANDAS\*\* – Scripts
\---


## 🌐 Languages Used

Language : Turkish, Polish , English


## 📊 Sample Excel Report: Monthly Flower Sales

> \*Note: This is a standalone Excel example to demonstrate my reporting and multilingual skills. It is not part of the AdventureWorksDW2022 database.\*



\*\*Business problem:\*\* Analyze monthly flower sales to calculate product-based totals and percentages.

### 📸 Screenshot

![Flower Sales Report](images/flowersales.png)

### 📁 Excel File


\[Download Excel Report (EN/TR/PL)] ([https://1drv.ms/x/c/0a8adfaceb1dc513/IQAC6wfshuh4TqI\_rltbEJ6vASRfiHCgmS9Ca37ReP154Ts?e=yrk0rk](https://1drv.ms/x/c/0a8adfaceb1dc513/IQAC6wfshuh4TqI_rltbEJ6vASRfiHCgmS9Ca37ReP154Ts?e=yHmxjO))

### 🔧 Excel Features Used



\- Total (`SUM`) and Percentage calculations

\- Absolute cell references (`$E$6`)

\- Min, Max, Average, Count (`MIN`, `MAX`, `AVERAGE`, `COUNT`)


################################################################################################################################################################################                               

## 🌸 Flower Sales Report (Multilingual)

## 📁 Excel Report – Key Features

- **SUBTOTAL Function:** Dynamic totals that respect filters.
- **Data Filtering:** Quick listing by product, seller, or sales amount.
- **Multilingual Support:** Turkish, English, and Polish versions available in **one Excel file (3 sheets)**
- **Sales Calculation:** `Total Amount = Unit Price × Quantity`.

### 🔍 Review

- [Multilingual Sales Report (TR/EN/PL)] (https://1drv.ms/x/c/0a8adfaceb1dc513/IQCFzHQ8LJgAQrZb8zmN9saEAcqvwFr6gupo-6zxydHqoS4?e=yF2suQ)


### 📸 Screenshots

## Turkish Report
![Turkish Report](images/report_tr.png)

## English Report
![English Report](images/report_en.png)

## Polish Report
![Polish Report](images/report_pl.png)



## 🔍 Data Filtering & Listing

The report includes **AutoFilter** (`Ctrl + Shift + L`) to list data dynamically by product, seller, or price range.

**What you can do:**
- Filter by **Product Name** (Rose, Orchid, Daisy, Carnation)
- Filter by **Seller Name**
- Filter by **Sales Amount** (greater than, less than, between)

**Benefits:**
- Quick data exploration without changing the original table.
- Dynamic listing for customer or manager presentations.



################################################################################################################################################################################


## 📂 SQL Queries (AdventureWorksDW2022)

All SQL files are grouped by table and business scenario.  
Each file includes **3‑language documentation** (English, Turkish, Polish).

### 📁 Customer Analysis (`DimCustomer`)

| File | Description |
| :--- | :--- |
| [SQLDimCustomer.sql](SQL/SQLDimCustomer.sql) | Customers with/without children, age ranking, children count, adult children not at home |
| [SQLMarginOfMF_DimCustomer.sql](SQL/SQLMarginOfMF_DimCustomer.sql) | Difference between male and female customers |

### 📁 Product Profit Analysis (`DimProduct`)

| File | Description |
| :--- | :--- |
| [Percentage,Profit_Of_Men_And_Women.sql](SQL/Percentage%2CProfit_Of_Men_And_Women.sql) | Profit, profit margin, total profit and difference between Men's and Women's products |
| [SQLEnglisProduct.sql](SQL/SQLEnglisProduct.sql) | Same product profit analysis (alternative file) |

### 📁 Reseller & Sales Analysis

| File | Table(s) | Description |
| :--- | :--- | :--- |
| [SQLDimReseller.sql](SQL/SQLDimReseller.sql) | `DimReseller` | 'Road' products ordered between June and December |
| [SQLFactResellerSales.sql](SQL/SQLFactResellerSales.sql) | `FactResellerSales` | Net profit per sales order (`SalesAmount - ProductStandardCost - TaxAmt`) |

---

**All queries were tested on Microsoft's AdventureWorksDW2022 sample database.**

################################################################################################################################################################################


## 📊 VBA Project: Profit/Loss Checker with Color Coding
- Its Automatically analyzes profit data
- Loops through each row and checks if profit is ≤ 1000
- Writes **"Loss"** (red background) or **"Profit"** (green background)
- Shows **"Done"** message box when finished

### 📂 File

[ProfitCheck_WithColorAndMessage.bas](VBA/ProfitCheck.bas) 
Profit/Loss checker with cell coloring (red/green) and completion message box.


################################################################################################################################################################################


## 📊 VBA Project: Tax Calculator (KDV Checker with Color Coding)

This macro automatically calculates **23% VAT** for each price in column A, writes the result in column B with colors
- Dynamically finds the last row with data in column A (works with any dataset size)
- Calculates VAT: `(Price × 23) / 100`
- Writes VAT amount to column B
- Colors the cell:
  - 🟢 **Green** if VAT > 1000
  - 🔴 **Red** if VAT ≤ 1000
- Displays a **"It's counted"** message box when finished

### 📂 File

| File | Description |
| :--- | :--- |
| [Taxcheck.bas](VBA/TaxCheck.bas) | VAT calculator with dynamic range, conditional coloring, and completion alert. |

### 🖼️ Example Output

| Column A (Price) | Column B (VAT) | Color |
| :--- | :--- | :--- |
| 1000 | 230 | 🔴 Red |
| 5000 | 1150 | 🟢 Green |
| 2000 | 460 | 🔴 Red |

### 🛠️ Technologies Used

- **VBA (Visual Basic for Applications)**
- Dynamic range detection (`.End(xlUp)`)
- Loops (`For`)
- Conditional logic (`If Else`)
- Cell formatting (`Interior.Color`)
- User feedback (`MsgBox`)

################################################################################################################################################################################

# 🗄️ SQL Server to Pandas Data Analysis

This project demonstrates how to connect to a **Microsoft SQL Server** database using `pyodbc`, run a SQL query, and load the results into a **Pandas DataFrame** for analysis.

## 🔧 Technologies Used

- 🐍 **Python** – Main programming language
- 🔗 **pyodbc** – To connect Python with SQL Server
- 📊 **pandas** – For data manipulation and display
- 🗃️ **SQL Server (AdventureWorksDW2022)** – Sample database from Microsoft

### 📂 File

| File | Description |
| :--- | :--- |
| [db.py](PANDAS/db.py) | Connects Python to SQL Server using pyodbc, runs a query, and loads data into a Pandas |
