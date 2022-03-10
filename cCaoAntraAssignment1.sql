Use AdventureWorks2019
Go

--1) Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter.
SELECT p.ProductID, p.Name, p.Color, p.ListPrice
FROM Production.Product p;

--2) Problem 1 with filter, excludes the rows that ListPrice is 0.
SELECT p.ProductID, p.Name, p.Color, p.ListPrice
FROM Production.Product p
WHERE p.ListPrice > 0;

--3) Problem 1 with filter, the rows that are NULL for the Color column.
SELECT p.ProductID, p.Name, p.Color, p.ListPrice
FROM Production.Product p
WHERE p.Color IS NULL;

--4) Problem 1 with filter, the rows that are not NULL for the Color column.
SELECT p.ProductID, p.Name, p.Color, p.ListPrice
FROM Production.Product p
WHERE p.Color IS NOT NULL;

--5) Problem 1 with filter, the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.
SELECT p.ProductID, p.Name, p.Color, p.ListPrice
FROM Production.Product p
WHERE p.Color IS NOT NULL and p.ListPrice > 0;

--6) Write a query that concatenates the columns Name and Color from the Production.Product table by excluding the rows that are null for color.
SELECT p.Name + ', ' + p.Color [Name and Color]
FROM Production.Product p
WHERE p.Color IS NOT NULL;

--7) Write a query that generates the following result set  from Production.Product:
SELECT 'NAME: ' + p.Name + ' -- COLOR: ' + p.Color [Name and Color]
FROM Production.Product p
WHERE p.Color IS NOT NULL;

--8) Write a query to retrieve the to the columns ProductID and Name from the Production.Product table filtered by ProductID from 400 to 500
SELECT p.ProductID, p.Name
FROM Production.Product p
WHERE p.ProductID >=400 AND p.ProductID <= 500;

--9) Write a query to retrieve the to the columns  ProductID, Name and color from the Production.Product table restricted to the colors black and blue
SELECT p.ProductID, p.Name, p.Color
FROM Production.Product p
WHERE p.Color = 'black' OR p.Color = 'blue';

--10) Write a query to get a result set on products that begins with the letter S.
SELECT p.Name
FROM Production.Product p
WHERE p.Name LIKE 'S%';

--11) Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like the following. Order the result set by the Name column.
SELECT p.Name, p.ListPrice
FROM Production.Product p
WHERE p.Name LIKE 'S%'
ORDER BY p.Name;

--12) Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like the following. Order the result set by the Name column. The products name should start with either 'A' or 'S'
SELECT p.Name, p.ListPrice
FROM Production.Product p
WHERE p.Name LIKE 'S%' OR p.Name Like 'A%'
ORDER BY p.Name;

--13) Write a query so you retrieve rows that have a Name that begins with the letters SPO, but is then not followed by the letter K. After this zero or more letters can exists. Order the result set by the Name column.
SELECT Name
FROM Production.Product
WHERE Name LIKE 'SPO[^k]%'
ORDER BY Name;

--14) Write a query that retrieves unique colors from the table Production.Product. Order the results  in descending  manner
SELECT DISTINCT Color
FROM Production.Product
ORDER BY Color DESC;

--15) Write a query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. Format and sort so the result set accordingly to the following. We do not want any rows that are NULL.in any of the two columns in the result.
SELECT DISTINCT Color, ProductSubcategoryID
FROM Production.Product
WHERE Color IS Not NULL AND ProductSubcategoryID IS NOT NULL;
