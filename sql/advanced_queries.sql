-- =====================================
-- ADVANCED SQL QUERIES
-- =====================================
1.Classify every order based on profit.
SELECT
    Category,
    "Sub-Category",
    Sales,
    Profit,
    CASE
        WHEN Profit > 100 THEN 'High Profit'
        WHEN Profit > 0 THEN 'Profit'
        ELSE 'Loss'
    END AS Profit_Status
FROM retail_sales;

2.Count Orders by Profit Status
SELECT
    CASE
        WHEN Profit > 100 THEN 'High Profit'
        WHEN Profit > 0 THEN 'Profit'
        ELSE 'Loss'
    END AS Profit_Status,
    COUNT(*) AS Orders
FROM retail_sales
GROUP BY Profit_Status;

3.Rank states based on total sales.
SELECT
    State,
    ROUND(SUM("Sales"),2) AS Total_Sales,
    RANK() OVER (
        ORDER BY SUM("Sales") DESC
    ) AS Sales_Rank
FROM retail_sales
GROUP BY State;

4.Suppose two states tie for second place.
SELECT
    State,
    ROUND(SUM("Sales"),2) AS Total_Sales,
    DENSE_RANK() OVER (
        ORDER BY SUM("Sales") DESC
    ) AS Sales_Rank
FROM retail_sales
GROUP BY State;

5.ROW_NUMBER()
SELECT
    State,
    ROUND(SUM("Sales"),2) AS Total_Sales,
    ROW_NUMBER() OVER (
        ORDER BY SUM("Sales") DESC
    ) AS Row_Num
FROM retail_sales
GROUP BY State;

-- =====================================
-- Common Table Expression (CTE)
-- =====================================

WITH StateSales AS (
    SELECT
        State,
        ROUND(SUM("Sales"), 2) AS Total_Sales
    FROM retail_sales
    GROUP BY State
)

SELECT *
FROM StateSales
WHERE Total_Sales > 100000
ORDER BY Total_Sales DESC;

-- =====================================
-- Subquery
-- =====================================

SELECT
    Category,
    "Sub-Category",
    Sales,
    Profit
FROM retail_sales
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM retail_sales
);

SELECT
    Category,
    "Sub-Category",
    Profit
FROM retail_sales
WHERE Profit >
(
    SELECT AVG(Profit)
    FROM retail_sales
);