# Shah Store Retail Sales Analysis

## Project Overview

This project presents an end-to-end analysis of real retail sales data from Shah Store, a watch retail business.

The original data was maintained manually across multiple monthly worksheets and contained missing values, inconsistent product names, merged cells, incomplete customer information, and differences in recording methods.

The project focused on cleaning the data, identifying reliable business metrics, analyzing sales performance, creating an Excel dashboard, and recommending improvements to future data collection.

## Business Objectives

The analysis was conducted to answer the following questions:

- How much revenue was generated during the period with available selling-price data?
- Which watch models sold the most units?
- Which watch models generated the highest estimated revenue?
- How did revenue change from month to month?
- Which payment methods were used most frequently?
- Which customers made repeat purchases?
- How could the business improve its future data collection?

## Tools Used

- PostgreSQL
- SQL
- Microsoft Excel
- Python
- Pandas
- Matplotlib
- Seaborn

## Project Workflow

1. Inspected the original monthly sales records.
2. Identified missing values and inconsistent formats.
3. Standardized dates, product names, and payment methods.
4. Combined monthly records into a cleaned dataset.
5. Imported the cleaned data into PostgreSQL.
6. Performed SQL-based business analysis.
7. Exported analytical results to Excel.
8. Created an Excel dashboard.
9. Prepared a business report and data collection improvement plan.

## Data Challenges

The original data contained several limitations:

- Selling prices were unavailable for some earlier months.
- Invoice IDs were not recorded.
- Some invoices contained multiple products represented through merged cells.
- Customer names were missing in several records.
- Stock sales and order sales were maintained separately.
- Payment methods were incomplete in some records.
- Product names were recorded inconsistently.

Because invoice IDs were unavailable, total orders and average order value could not be calculated reliably.

## Reliable KPIs

The analysis focused only on metrics supported by the available data, including:

- Total revenue for records with available selling prices
- Total watches sold
- Monthly revenue
- Best-selling watch models
- Estimated revenue by watch model
- Payment-method usage
- Repeat customers

## Key Findings

- Total recorded revenue for the period with available selling prices was approximately ₹3.50 million.
- Certain watch models consistently appeared among the highest-selling products.
- Monthly revenue varied significantly across the available period.
- Digital and cash payment methods were both commonly used.
- Repeat customers were identifiable only in the months where customer information was recorded.
- Several potentially valuable business metrics could not be calculated because invoice IDs, quantity, and cost-price information were missing.

## Business Recommendations

- Maintain sufficient inventory for consistently high-demand watches.
- Monitor demand for premium watch models separately.
- Investigate the causes of low-performing months.
- Compare marketing, stock availability, and customer activity during strong and weak months.
- Build a customer database using customer names and mobile numbers.
- Standardize payment-mode categories.
- Record cost prices to support profit and margin analysis.
- Introduce a consistent invoice-based sales-recording system.

## Recommended Future Data Fields

Future sales records should include:

- Invoice ID
- Date
- Customer name
- Customer mobile number
- Watch brand
- Watch model
- Quantity
- Selling price
- Cost price
- Payment method
- Supplier
- Salesperson
- Customer city
- Remarks

## Dashboard Preview

### 1. Business Overview
![Business Overview](images/Shah-Store-Dashboard.png)

## Repository Structure

```text
data/        Cleaned and anonymized dataset
sql/         SQL analysis scripts
dashboard/   Excel dashboard and preview
report/      Business report and improvement plan
images/      Dashboard images used in the README

Project Files
SQL analysis script
Cleaned dataset
Excel dashboard
Dashboard preview
Business analysis report
Data collection improvement plan
Limitations

Revenue-based product rankings should be interpreted carefully because some records represented combined invoices and invoice-level identifiers were unavailable.

The project intentionally avoids reporting metrics that could not be calculated reliably from the available data.

Learning Outcomes

This project strengthened my ability to:

Work with messy real-world business data
Decide which KPIs are supported by the available data
Analyze retail sales using SQL
Build Excel dashboards
Translate analytical findings into business recommendations
Communicate data limitations clearly
Author

Safina Shah
Data Analyst focused on retail and e-commerce analytics


---
