USE Northwind;

--Q1.4


SELECT 
	  Products.[CategoryID] AS 'Category ID',
	  CategoryName AS 'Category Name',
	  SUM(UnitsInStock) AS 'Units In Stock' 
FROM 
	Products
	JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY 
	Products.CategoryID,
	CategoryName
ORDER BY 
	Products.CategoryID DESC
	
