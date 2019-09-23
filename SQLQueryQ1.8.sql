--Q1.8 Use TOP 1 to obtain the highest discount item. 
USE Northwind
-- Multiply Discount by UnitPrice to obtain the amount that was discounted.
SELECT 
	TOP 1 
	OrderID,
	(Discount * UnitPrice) AS 'Amount After Discount Applied',
	UnitPrice,
	Discount 
FROM 
	[Order Details] 

GROUP BY 
	OrderID,
	(Discount * UnitPrice),
	UnitPrice,
	Discount
ORDER BY 
	(Discount * UnitPrice) DESC