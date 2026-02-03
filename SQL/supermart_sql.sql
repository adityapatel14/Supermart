USE Salesdb;
/*SELECT *
from sales ;*/

/* SELECT "Order ID","Customer Name" , Sales , Profit
from sales */

/* SELECT *
from sales
WHERE Region = "West" */

/* SELECT *
from sales
WHERE Sales > 1500 */

/* SELECT *
from sales
WHERE Profit < 0 */

/* SELECT *
FROM sales
WHERE Discount = 0 */

/* SELECT *
FROM sales
WHERE Category = 'Technology' */

/* SELECT *
FROM sales
where Sales BETWEEN 100 and 500 */

/* SELECT *
FROM sales
WHERE State LIKE "A%" */


/* SELECT sum(Sales) as Total_sales
FROM sales */

/* SELECT sum(Profit) as Total_sales
FROM sales */

/* SELECT avg(Sales) average_sales
FROM sales; */

/* SELECT max(Sales) as MAX
FROM sales */

/* select count(DISTINCT Segment)
from sales
i had to do customers but there is space in columns */

/* SELECT Category, ROUND(sum(Sales),2)
FROM sales
GROUP BY Category */

/* SELECT Region, ROUND(sum(Profit),2) as totalprofitregion
FROM sales
GROUP BY Region */

/* SELECT Segment,AVG(Sales)
FROM sales
GROUP BY Segment */

/* SELECT Region,COUNT(OrderID)
FROM sales
GROUP BY Region */

/* SELECT SubCategory,SUM(Sales)
FROM sales
GROUP BY SubCategory */

/* SELECT Shipmode , AVG(Profit)
FROM sales
GROUP BY Shipmode */

/* SELECT Sales 
FROM sales
ORDER BY Sales Desc limit 10 */ 

/* SELECT Profit
FROM sales
ORDER BY Profit limit 10 */

/* SELECT CustomerName, SUM(Sales) AS TotalSales
FROM sales
GROUP BY CustomerName
ORDER BY TotalSales desc LIMIT 5 */

/* SELECT Region,sum(Profit) as TotalProfit
FROM sales
GROUP BY Region
ORDER BY TotalProfit desc limit 3 */

/* SELECT Category,SUM(Sales) as TotalSales
FROM sales
GROUP BY Category
HAVING TotalSales > 100000 */

/* SELECT CustomerName , SUM(Profit) as TotalProfit
FROM sales 
GROUP BY CustomerName
HAVING TotalProfit < 0
ORDER BY TotalProfit */

/* SELECT Region,COUNT(OrderID) AS TotalOrders
FROM sales
GROUP BY Region
HAVING TotalOrders > 2500 */

/* SELECT s.Year,sum(Sales) as totalsales
FROM sales as s
GROUP BY s.Year */

/* SELECT *
FROM sales
WHERE Sales > (SELECT AVG(Sales) FROM sales); */

/* SELECT ProductName, SUM(Sales) AS Totalsales
FROM sales
GROUP BY ProductName
HAVING SUM(Sales) > (SELECT AVG(Sales) FROM sales); */

/* SELECT CustomerName , SUM(Sales) as HisSpending
FROM sales
GROUP BY CustomerName
HAVING SUM(Sales) > (SELECT AVG(Sales) FROM sales) */


/* WHICH CATEGORY IS MOST PROFITABLE ?
 
SELECT Category,sum(Profit) as totalProfit
from sales
group by category
order by totalProfit desc limit 1 */

/* SELECT Region,sum(Profit) as totalprofit ,sum(Sales) as totalsales
from sales
group by Region
order by totalprofit asc , totalsales desc limit 3 */

/* SELECT SUM(sales) as totalsales
from sales
group by Products
order by totalsales desc limit 20% */
 
SELECT count(distinct OrderID)
from sales;

SELECT SUM(Quantity)
from sales;

SELECT SUM(Profit)
from sales