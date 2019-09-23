USE Northwind

SELECT 
	TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS 'Full Name',
	City 
FROM 
	Employees
WHERE 
	Country = 'UK'
