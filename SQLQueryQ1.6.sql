USE Northwind;

--Q1.6

WITH CTE_Region AS		-- A Common Table Experission has been utilised. A subquiery could have also worked
(
SELECT
	-- Multiplying the sum totals of the Unit Price and the Quantity will provide to total amount made for each territory
	ROUND(SUM(OD.UnitPrice * OD.Quantity), -4) AS 'Total Sales',
	RegionDescription AS 'Region'
	
	-- Joining Territores, Region, EmployeeTerritories, Orders and Order Details should be enuugh to obtain all the information required.
	-- Region and Order Details have to be joined or the calculation cant be done
	FROM    
		Territories T
	JOIN 
		Region R ON R.RegionID = T.RegionID
	JOIN 
		EmployeeTerritories ET ON ET.TerritoryID = T.TerritoryID
	JOIN 
		Orders O ON O.EmployeeID = ET.EmployeeID
	JOIN 
		[Order Details] OD on OD.OrderID = O.OrderID
		
GROUP BY -- GROUP BY used in conjunction with HAVING >= 1000000 to determine the best performing regions
	((OD.UnitPrice) * (OD.Quantity)),
	R.RegionDescription
	HAVING 
		(SUM(OD.UnitPrice) * SUM(OD.Quantity)) >= 1000000
)

SELECT 
	-- Summing the sales for each region will provide the total Sales for Each Region
	SUM(CTE_Region.[Total Sales]) AS 'Total Sales For Each Region',
	CTE_Region.Region FROM CTE_Region

GROUP BY 
		CTE_Region.Region


