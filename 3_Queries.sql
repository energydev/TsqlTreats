--------------------------------------------------------------
--Let's take a quick look at the table data
--------------------------------------------------------------
SELECT TOP 100 * FROM dbo.Store
SELECT TOP 100 * FROM dbo.MonthlySales


--------------------------------------------------------------
--Intersect - Show Distinct results from top results set 
--			  that is also in the second results set
--Except -	  Show Distinct results from the first results set
--			  that are not in the second results set
--------------------------------------------------------------

--Get distinct list of all stores that have data in the MonthlySales table
SELECT StoreID FROM Store

INTERSECT 

SELECT StoreID FROM MonthlySales



--Get distinct list of all stores that don't have data in the MonthlySales table
SELECT StoreID FROM Store

EXCEPT 

SELECT StoreID FROM MonthlySales


--------------------------------------------------------------
--CASE statements within SELECT
--------------------------------------------------------------

--Display the Season for each month in MonthlySales
SELECT *,
	CASE WHEN SaleMonth In (1, 2, 3) THEN 'Winter' WHEN SaleMonth IN (4, 5, 6) THEN 'Spring'
		 WHEN SaleMonth In (7, 8, 9) THEN 'Summer' ELSE 'Fall' END AS Season
FROM dbo.MonthlySales



--Show Winter and Spring Sales by Store
SELECT StoreID,
	SUM(CASE WHEN SaleMonth IN (1, 2, 3) THEN TotalSales ELSE 0.00 END) 
		AS WinterSales,
	SUM(CASE WHEN SaleMonth IN (4, 5, 6) THEN TotalSales ELSE 0.00 END) 
		AS SpringSales
FROM dbo.MonthlySales 
GROUP BY StoreID



--Show Count of months each store was open for Winter and Spring 2017
SELECT StoreID,
	COUNT(CASE WHEN SaleMonth IN (1, 2, 3) THEN 'Count me' END) 
		AS WinterMonthsOpen,
	COUNT(CASE WHEN SaleMonth IN (4, 5, 6) THEN 'Count me' END) 
		AS SpringMonthsOpen
FROM dbo.MonthlySales 
WHERE SaleYear = 2017
GROUP BY StoreID




--------------------------------------------------------------
--Windowing Functions
--------------------------------------------------------------

--Rank and display June 2017 Sales
SELECT  S.StoreNumber, 
		TotalSales, 
		RANK() OVER (ORDER BY TotalSales DESC) as CurrentYearRank
FROM dbo.MonthlySales  MS
INNER JOIN dbo.Store S ON (MS.StoreID = S.StoreID)
WHERE SaleYear = 2017 
and SaleMonth = 6
ORDER BY 3

--Rank and display June 2017 Sales by Region.
SELECT S.StoreNumber, 
		S.City, 
		S.State, 
		S.Region, 
		SaleYear, 
		SaleMonth, 
		FORMAT(TotalSales, 'N', 'en-us') AS TotalSales, 
	    RANK() OVER (PARTITION BY S.Region ORDER BY TotalSales DESC) 
			AS CurrentYearRankByRegion
FROM dbo.MonthlySales MS
INNER JOIN dbo.Store S ON (MS.StoreID = S.StoreID)
WHERE SaleYear = 2017 
and SaleMonth = 6
ORDER BY S.Region, 8

--Rank and display June 2017 and June 2016 Sales by Region
SELECT 	S.Region, 
		S.State,
		S.City, 
		S.StoreNumber,
		MS17.SaleYear, 
		FORMAT(MS17.TotalSales, 'N', 'en-us') AS [June Sales 2017], 
		RANK() OVER (PARTITION BY S.Region ORDER BY MS17.TotalSales DESC) as [Current Year Rank By Region],
		MS16.SaleYear,
		FORMAT(MS16.TotalSales, 'N', 'en-us') AS [June Sales 2016], 
		RANK() OVER (PARTITION BY S.Region ORDER BY MS16.TotalSales DESC) as [Prior Year Rank By Region]
FROM dbo.MonthlySales MS17
LEFT JOIN dbo.MonthlySales MS16 ON (MS17.StoreID = MS16.StoreID AND MS17.SaleMonth = MS16.SaleMonth AND MS16.SaleYear = 2016)
INNER JOIN dbo.Store S ON (MS17.StoreID = S.StoreID)
WHERE MS17.SaleYear = 2017 
and MS17.SaleMonth = 6
ORDER BY S.Region, 7




