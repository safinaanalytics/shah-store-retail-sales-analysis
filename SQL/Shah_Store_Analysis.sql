/*==========================================================
Project : Shah Store Watch Sales Analysis
Database: shah_store_order_db
Table   : ss_order

Analyst : Safina Shah
Start Date : July 2026
==========================================================*/

-- Creating Order Sales Table
CREATE TABLE ss_order (
    date DATE,
    month VARCHAR(15),
    watch_name VARCHAR(100),
    selling_price NUMERIC(10,2),
    payment_mode VARCHAR(20),
    cust_name VARCHAR(100),
    sale_type VARCHAR(20)
);
-- Viewing the Table

SELECT *
FROM ss_order
LIMIT 10;

-- Checking by counting the rows.

SELECT COUNT(*)
FROM ss_order;

-- Checking DataType of selling_price column and outlier.

SELECT
MIN(Selling_Price),
MAX(Selling_Price)
FROM ss_order;

-- Examining the 0 value of selling_price.

SELECT *
FROM ss_order
WHERE selling_price = 0;

UPDATE ss_order
SET selling_price = NULL
WHERE selling_price = 0;

/*===============================================
Reliable KPIs
=================================================*/
-- 1) Total Revenue generated from Jan 26 to July 26:
SELECT
SUM(selling_price) AS total_revenue,
COUNT(selling_price) AS priced_sales
FROM ss_order;

-- 2)Total Sales Records (Watches Sold):
SELECT
COUNT(watch_name) AS Total_Watches_Sold
FROM ss_order;

-- 3)Most Sold Watches:
SELECT 
watch_name,
COUNT(*) AS quantity
FROM ss_order
GROUP BY watch_name
ORDER BY quantity DESC;

--3)a: Unique Watch Models Sold:
SELECT
COUNT(DISTINCT watch_name)
FROM ss_order;

-- 4)Revenue Trend by Month (From Jan to July):
SELECT
Month, SUM(selling_price) AS Monthly_Revenue
FROM ss_order
GROUP BY Month
ORDER BY CASE Month
		WHEN 'September' THEN 1
		WHEN 'October' THEN 2
		WHEN 'November' THEN 3
		WHEN 'December' THEN 4
		WHEN 'January' THEN 5
		WHEN 'March' THEN 6
		WHEN 'April' THEN 7
		WHEN 'May' THEN 8
		WHEN 'June' THEN 9
		WHEN 'July' THEN 10
END;


-- 5)Most Common Payment Mode:
SELECT
payment_mode, COUNT(payment_mode) AS payment_mode_count
FROM ss_order
GROUP BY payment_mode
ORDER BY payment_mode_count DESC;

-- 6)Repeat Customers (From Apri to July 2026):
SELECT 
cust_name, COUNT(cust_name) AS customer_count
FROM ss_order
GROUP BY cust_name
ORDER BY customer_count DESC;


/*==========================================================
PRODUCT ANALYSIS
===========================================================*/
-- 1) Estimated Revenue by Watch Model 
SELECT watch_name, SUM(selling_price) AS revenue_by_watch
FROM ss_order
GROUP BY watch_name
ORDER BY revenue_by_watch DESC;

/*===========================================================
TIME ANALYSIS
============================================================*/
--1) Sales by Month
SELECT month, COUNT(watch_name) AS Sales_by_Month
FROM ss_order
GROUP BY month
ORDER BY CASE month
		WHEN 'September' THEN 1
		WHEN 'October' THEN 2
		WHEN 'November' THEN 3
		WHEN 'December' THEN 4
		WHEN 'January' THEN 5
		WHEN 'March' THEN 6
		WHEN 'April' THEN 7
		WHEN 'May' THEN 8
		WHEN 'June' THEN 9
		WHEN 'July' THEN 10
END;

--2) Sales by Day
SELECT date, COUNT(watch_name) AS Sales_by_Day
FROM ss_order
GROUP BY date
ORDER BY date;

--3) Sales by Week Days
SELECT TO_CHAR(date, 'Day') AS week_days, 
COUNT(watch_name) AS Sales_by_week_days
FROM ss_order
GROUP BY week_days
ORDER BY week_days;

/*===========================================================
CUSTOMER ANALYSIS (FROM APRIL TO JULY 2026)
============================================================*/
-- 1)Repeat Customers (From Apri to July 2026):
SELECT 
cust_name, COUNT(cust_name) AS purchase_count
FROM ss_order
GROUP BY cust_name
ORDER BY purchase_count DESC;

-- 2) Top Customers (From April to July) 
SELECT cust_name, SUM(selling_price) AS Revenue_by_customer
FROM ss_order
WHERE selling_price > 0
GROUP BY cust_name
ORDER BY Revenue_by_customer DESC;




