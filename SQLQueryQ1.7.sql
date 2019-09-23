USE Northwind;

-- Using a common table experrsion allows us to see how many Frieghts we have over 100
WITH CTE_Freight AS
(
SELECT 
	COUNT(OrderID) AS 'Number Of Frieghts Over 100.00',
	(Freight),
	ShipCountry
FROM 
	Orders
GROUP BY 
	OrderID, Freight, ShipCountry
HAVING 
	Freight > 100 AND ShipCountry = 'USA' OR ShipCountry = 'UK'
)

--Once the numbmers of Frights over 100 have been established. We can count the total number for them for the UK and USA
SELECT 
	SUM(CTE_Freight.[Number Of Frieghts Over 100.00]) AS 'Number Of Frieghts Over 100.00',
	CTE_Freight.ShipCountry
FROM 
	CTE_Freight 

GROUP BY 
	CTE_Freight.ShipCountry





