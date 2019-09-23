USE Northwind
--Q1.1

SELECT 
	CustomerID AS 'Customer ID',
	CompanyName AS 'Company Name', Address + ' ' + City + ' ' +  PostalCode AS 'Full Address'  
FROM 
	Customers
WHERE 
	City = 'Paris' OR City = 'London'

