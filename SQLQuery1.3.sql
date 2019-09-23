USE Northwind

--Q1.3

SELECT 
	Suppliers.CompanyName AS 'Company Name',
	Suppliers.Country 
	FROM 
	Products  --Join suppliers table onto Products table to get all info
	JOIN 
	Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE 
	QuantityPerUnit LIKE '%bottles%' -- Use % wild card to ensure only bottled products are showed