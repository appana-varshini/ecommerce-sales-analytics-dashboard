/* =========================================
   E-Commerce Sales Analytics Project
   Dataset: Sample Superstore
   ========================================= */


/* Total Records */

SELECT COUNT(*) AS TotalRows
FROM SuperstoreSales_Import;


/* Total Sales */

SELECT SUM(Sales) AS TotalSales
FROM SuperstoreSales_Import;


/* Total Profit */

SELECT SUM(Profit) AS TotalProfit
FROM SuperstoreSales_Import;


/* Sales by Category */

SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM SuperstoreSales_Import
GROUP BY Category
ORDER BY TotalSales DESC;


/* Profit by Category */

SELECT
    Category,
    SUM(Profit) AS TotalProfit
FROM SuperstoreSales_Import
GROUP BY Category
ORDER BY TotalProfit DESC;


/* Profit Margin by Category */

SELECT
    Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    ROUND((SUM(Profit) * 100.0) / SUM(Sales), 2) AS ProfitMarginPercent
FROM SuperstoreSales_Import
GROUP BY Category
ORDER BY ProfitMarginPercent DESC;


/* Sales by Region */

SELECT
    Region,
    SUM(Sales) AS TotalSales
FROM SuperstoreSales_Import
GROUP BY Region
ORDER BY TotalSales DESC;


/* Profit by Region */

SELECT
    Region,
    SUM(Profit) AS TotalProfit
FROM SuperstoreSales_Import
GROUP BY Region
ORDER BY TotalProfit DESC;


/* Profit Margin by Region */

SELECT
    Region,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    ROUND((SUM(Profit) * 100.0) / SUM(Sales), 2) AS ProfitMarginPercent
FROM SuperstoreSales_Import
GROUP BY Region
ORDER BY ProfitMarginPercent DESC;


/* Sales by Sub-Category */

SELECT
    Sub_Category,
    SUM(Sales) AS TotalSales
FROM SuperstoreSales_Import
GROUP BY Sub_Category
ORDER BY TotalSales DESC;


/* Profit by Sub-Category */

SELECT
    Sub_Category,
    SUM(Profit) AS TotalProfit
FROM SuperstoreSales_Import
GROUP BY Sub_Category
ORDER BY TotalProfit DESC;


/* Discount Impact Analysis */

SELECT
    Sub_Category,
    AVG(Discount) AS AvgDiscount,
    SUM(Profit) AS TotalProfit
FROM SuperstoreSales_Import
GROUP BY Sub_Category
ORDER BY AvgDiscount DESC;