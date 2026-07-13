-- =====================================
-- RETAIL SALES ANALYTICS
-- BUSINESS SQL QUERIES
-- =====================================

-- =====================================
-- Aggregate Functions
-- =====================================

-- Query 1: Total Sales
SELECT
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM retail_sales;


-- Query 2: Total Profit
SELECT
    ROUND(SUM("Profit"), 2) AS Total_Profit
FROM retail_sales;


-- Query 3: Total Orders
SELECT
    COUNT(*) AS Total_Orders
FROM retail_sales;


-- Query 4: Average Sales
SELECT
    ROUND(AVG("Sales"), 2) AS Average_Sales
FROM retail_sales;


-- Query 5: Average Profit
SELECT
    ROUND(AVG("Profit"), 2) AS Average_Profit
FROM retail_sales;


-- =====================================
-- GROUP BY Queries
-- =====================================

-- Query 6: Sales by Category
SELECT
    Category,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Query 7: Profit by Region
SELECT
    Region,
    ROUND(SUM("Profit"), 2) AS Total_Profit
FROM retail_sales
GROUP BY Region
ORDER BY Total_Profit DESC;


-- Query 8: Sales by Segment
SELECT
    Segment,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM retail_sales
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- Query 9: Top 10 States by Sales
SELECT
    State,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM retail_sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;


-- Query 10: Top 10 Sub-Categories by Sales
SELECT
    "Sub-Category",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM retail_sales
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 10;


-- Query 11: Top 10 Sub-Categories by Profit
SELECT
    "Sub-Category",
    ROUND(SUM("Profit"), 2) AS Total_Profit
FROM retail_sales
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC
LIMIT 10;


-- Query 12: Loss-Making Sub-Categories
SELECT
    "Sub-Category",
    ROUND(SUM("Profit"), 2) AS Total_Profit
FROM retail_sales
GROUP BY "Sub-Category"
HAVING SUM("Profit") < 0
ORDER BY Total_Profit;


-- =====================================
-- WHERE Clause Queries
-- =====================================

-- Query 13: West Region Sales
SELECT
    ROUND(SUM("Sales"), 2) AS West_Sales
FROM retail_sales
WHERE Region = 'West';


-- Query 14: Technology Sales
SELECT
    ROUND(SUM("Sales"), 2) AS Technology_Sales
FROM retail_sales
WHERE Category = 'Technology';


-- Query 15: Orders with Discount Greater Than 20%
SELECT
    Category,
    "Sub-Category",
    "Sales",
    Discount,
    Profit
FROM retail_sales
WHERE Discount > 0.20;


-- Query 16: Technology Products Sold in the West Region
SELECT
    Category,
    "Sub-Category",
    Region,
    Sales,
    Profit
FROM retail_sales
WHERE Category = 'Technology'
AND Region = 'West';


-- Query 17: Orders from East or West Region
SELECT
    Region,
    Sales,
    Profit
FROM retail_sales
WHERE Region = 'East'
OR Region = 'West';


-- Query 18: Orders from East, West, or South Region
SELECT
    Region,
    Sales
FROM retail_sales
WHERE Region IN ('East', 'West', 'South');


-- Query 19: Orders with Sales Between 500 and 1000
SELECT
    Sales,
    Profit,
    Category
FROM retail_sales
WHERE Sales BETWEEN 500 AND 1000;


-- Query 20: Cities Starting with 'San'
SELECT
    City,
    Sales
FROM retail_sales
WHERE City LIKE 'San%';