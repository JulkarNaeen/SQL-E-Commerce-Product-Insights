SELECT 
  City,
  Category,
  SUM(Sales) AS TotalSales
FROM ecmrc_recomnd
GROUP BY City, Category
HAVING SUM(Sales) > 1000
ORDER BY TotalSales DESC;

SELECT 
  ProductName,
  Category,
  Sales,
  (SELECT AVG(Sales) 
   FROM ecmrc_recomnd e2 
   WHERE e2.Category = e1.Category) AS AvgCategorySales
FROM ecmrc_recomnd e1;


WITH RankedProducts AS (
  SELECT 
    ProductName,
    Category,
    Sales,
    RANK() OVER (PARTITION BY Category ORDER BY Sales DESC) AS rk
  FROM ecmrc_recomnd
)
SELECT *
FROM RankedProducts
WHERE rk <= 3;

SELECT 
  ProductName,
  City,
  Sales,
  RANK() OVER (PARTITION BY City ORDER BY Sales DESC) AS CityRank
FROM ecmrc_recomnd;

WITH CityAvgSales AS (
  SELECT 
    City,
    AVG(Sales) AS AvgSales
  FROM ecmrc_recomnd
  GROUP BY City
)
SELECT 
  e.ProductName,
  e.City,
  e.Sales,
  c.AvgSales,
  e.Discount
FROM ecmrc_recomnd e
JOIN CityAvgSales c ON e.City = c.City
WHERE e.Sales < c.AvgSales
ORDER BY e.Discount DESC;


