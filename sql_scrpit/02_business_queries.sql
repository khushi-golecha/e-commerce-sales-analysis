/*
=========================================
Project: E-commerce Order Analysis
File: 02_business_queries.sql

Business Questions Answered

1. Total Revenue
2. Total Orders
3. Average Order Value
4. Revenue by Category
5. Revenue by Payment Method
6. Revenue by Status
7. Top 5 Products
8. Top Customers
9. Monthly Revenue
10. Month-over-Month Growth
=========================================
*/

--------------------------------------------------
-- 1 Total Revenue
--------------------------------------------------

SELECT
SUM(Total) AS TotalRevenue
FROM EcommerceOrders;

--------------------------------------------------
-- 2 Total Orders
--------------------------------------------------

SELECT
COUNT(*) AS TotalOrders
FROM EcommerceOrders;

--------------------------------------------------
-- 3 Average Order Value
--------------------------------------------------

SELECT
AVG(Total) AS AverageOrderValue
FROM EcommerceOrders;

--------------------------------------------------
-- 4 Revenue by Category
--------------------------------------------------

SELECT
Category,
SUM(Total) AS Revenue
FROM EcommerceOrders
GROUP BY Category
ORDER BY Revenue DESC;

--------------------------------------------------
-- 5 Revenue by Payment Method
--------------------------------------------------

SELECT
Payment_Method,
SUM(Total) AS Revenue
FROM EcommerceOrders
GROUP BY Payment_Method
ORDER BY Revenue DESC;

--------------------------------------------------
-- 6 Revenue by Order Status
--------------------------------------------------

SELECT
Status,
COUNT(*) AS Orders,
SUM(Total) AS Revenue
FROM EcommerceOrders
GROUP BY Status
ORDER BY Revenue DESC;

--------------------------------------------------
-- 7 Top 5 Products
--------------------------------------------------

SELECT TOP 5
Product,
SUM(Quantity) AS QuantitySold,
SUM(Total) AS Revenue
FROM EcommerceOrders
GROUP BY Product
ORDER BY QuantitySold DESC;

--------------------------------------------------
-- 8 Top 10 Customers
--------------------------------------------------

SELECT TOP 10
Customer_Name,
SUM(Total) AS TotalSpent
FROM EcommerceOrders
GROUP BY Customer_Name
ORDER BY TotalSpent DESC;

--------------------------------------------------
-- 9 Monthly Revenue
--------------------------------------------------

SELECT

YEAR(Order_Date) AS OrderYear,

MONTH(Order_Date) AS OrderMonth,

SUM(Total) AS MonthlyRevenue

FROM EcommerceOrders

GROUP BY

YEAR(Order_Date),

MONTH(Order_Date)

ORDER BY

OrderYear,

OrderMonth;

--------------------------------------------------
-- 10 Month-over-Month Revenue Growth
--------------------------------------------------

WITH MonthlyRevenue AS
(
SELECT

YEAR(Order_Date) AS OrderYear,

MONTH(Order_Date) AS OrderMonth,

SUM(Total) AS Revenue

FROM EcommerceOrders

GROUP BY

YEAR(Order_Date),

MONTH(Order_Date)
)

SELECT

OrderYear,

OrderMonth,

Revenue,

LAG(Revenue)
OVER
(
ORDER BY OrderYear, OrderMonth
)
AS PreviousMonthRevenue,

ROUND(

(

Revenue -

LAG(Revenue)
OVER
(
ORDER BY OrderYear, OrderMonth
)

)

*100.0/

NULLIF(

LAG(Revenue)
OVER
(
ORDER BY OrderYear, OrderMonth
),

0

),

2

)

AS GrowthPercentage

FROM MonthlyRevenue;

--------------------------------------------------
-- 11 Highest Revenue Product
--------------------------------------------------

SELECT TOP 1

Product,

SUM(Total) AS Revenue

FROM EcommerceOrders

GROUP BY Product

ORDER BY Revenue DESC;

--------------------------------------------------
-- 12 Highest Spending Customer
--------------------------------------------------

SELECT TOP 5

Customer_Name,

SUM(Total) AS TotalSpent

FROM EcommerceOrders

GROUP BY Customer_Name

ORDER BY TotalSpent DESC;