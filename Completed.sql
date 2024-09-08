--Exercise 2
SELECT CreditCardID as 'Credit Card ID',CardType as 'Credit Card Type',
CardNumber as 'Credit Card Number',ExpYear as 'Expiry Year' FROM SALES.CreditCard
--Exercise 3
SELECT CustomerID,AccountNumber FROM SALES.Customer
--Exercise 4
SELECT * from Sales.SalesOrderHeader where TotalDue > 2000
--Exercise 5
SELECT * from Sales.SalesOrderDetail where ProductID = 843
--Exercise 6
SELECT * from Sales.SalesOrderDetail where ModifiedDate = '2004-06-06'
--Exercise 7
Select SalesOrderID as 'Order ID',OrderQty as 'Order Quantity',
Unitprice as 'Unit Price',LineTotal as 'Total cost' from Sales.SalesOrderDetail
--Exercise 8
Select * from sales.SalesOrderDetail where LineTotal > 2000 and LineTotal < 2100
--Exercise 9
SELECT NAME, COUNTRYREGIONCODE,SalesYTD FROM Sales.SalesTerritory where TerritoryID = 1
--Exercise 10
SELECT * from Sales.SalesOrderHeader where TaxAmt > 10000
--Exercise 11
SELECT * from Sales.SalesTerritory WHERE  Name in ('France','Canada','Germany')
--Exercise 12
--Not done
SELECT * FROM Sales.SalesTerritory
--Exercise 13
SELECT * FROM Sales.CreditCard where ExpYear =2006 and CardType = 'Vista'
--Exercise 14
SELECT * from Purchasing.PurchaseOrderHeader where shipDate > '2004-07-12'
--Exercise 15
--Did not get this
SELECT RevisionNumber,OrderDate,Status,TotalDue FROM Purchasing.PurchaseOrderHeader where OrderDate = '2001-07-01 00:00:00:000' and TotalDue >10000 ---work on it 
--Exercise 16
SELECT * FROM SALES.SALESORDERHEADER WHERE OnlineOrderFlag > 0
--Exercise 17
SELECT SalesOrderID,TotalDue  FROM SALES.SalesOrderHeader ORDER BY TotalDue DESC
--Exercise 18
SELECT SalesOrderID,TaxAmt FROM Sales.SalesOrderHeader where TotalDue < 2000 order by SalesOrderID ASC---CHECK IT OUT
--Exercise 19
SELECT SalesOrderNumber,TotalDue FROM Sales.SalesOrderHeader ORDER BY TotalDue ASC
--Exercise 20
SELECT * FROM SALES.Currency WHERE Name  LIKE '%Dollar%'
--Exercise 21
SELECT * from Sales.SalesTerritory where Name like 'N%'
--Exercise 22
SELECT SalesPersonID,TerritoryID,SalesQuota  FROM Sales.SalesPerson where SalesQuota is not Null
--Exercise 23
SELECT TOP 3 SalesPersonID from  Sales.SalesPerson order by Bonus 
--Exercise 24
SELECT * FROM Sales.Store where Name like '%Bike%'
--Exercise 25
SELECT CardType from Sales.CreditCard
--Exercise 26
SELECT EmployeeID,LoginID,Title FROM HumanResources.Employee ORDER BY EmployeeID OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY
--Exercise 27
SELECT max(TotalDue) FROM Sales.SalesOrderHeader
SELECT min(TotalDue) FROM Sales.SalesOrderHeader
SELECT avg(TotalDue) FROM Sales.SalesOrderHeader
--Exercise 28
SELECT sum(TotalDue) FROM Sales.SalesOrderHeader
--Exercise 29
--Didn't get this right
 SELECT top 5 SalesOrderID FROM Sales.SalesOrderHeader where DueDate like '%2001' order by TotalDue
--Exercise 30
Select SalesOrderID,ProductID, sum(LineTotal) from Sales.SalesOrderDetail group by SalesOrderID
--Exercise 31
Select ProductID,LineTotal from Sales.SalesOrderDetail where LineTotal>10000 
--Exercise 32
Select ProductID,sum(LineTotal) as Totalamt from Sales.SalesOrderDetail group by rollup (ProductID)
--Exercise 33
Select sum(Linetotal) as 'Total Amt Collected', ModifiedDate from Sales.SalesOrderDetail group by ModifiedDate
--Exercise 34
Select sum(unitprice),sum(Linetotal), Productid
from Sales.SalesOrderDetail where productid in (774,777) group by rollup(Productid) 
--Exercise 35
--Exercise 36
Select SalesOrderID, AVG(TaxAmt) as 'Average value' from sales.SalesOrderHeader where TaxAmt > 5000 group by SalesOrderID
--Exercise 37
Select  CustomerID,SalesPersonID, SUBSTRING(Name,1 , 16) as 'Customer Name' from sales.Store
--Exercise 38 finish it
Select SalesOrderNumber,TotalDue, OrderDate as 'Day of order',ModifiedDate as 'Week Day' from Sales.SalesOrderHeader
--Exercise 39
Select Distinct  SalesOrderID,OrderQty,UnitPrice from sales.SalesOrderDetail order by UnitPrice 
--Exercise 40
Select EmployeeID, datepart(MM,HireDate) as Month, DATEPART(YY,HireDate) as Year from HumanResources.Employee
--Exercise 41 **
Select * from Production.Location where CostRate > 12 order by CostRate desc
--Exercise 42
--SELECT * FROM Production.Product where ListPrice between 360.00 and 499.00
--
--Exercise 43
SELECT PRODUCTID , SUM(LINETOTAL) AS 'TOTAL' FROM SALES.SalesOrderDetail GROUP BY CUBE(ProductID)
--Exercise 44
SELECT salespersonid, sum(Bonus) as 'Earned by each' FROM SALES.SalesPerson  group by rollup (SalesPersonID)
--Exercise 45
SELECT * from sales.salesorderdetail
--Exercise 46
Select PlannedCost as 'Previous Year Price',ActualCost as 'Current Price' from Production.WorkOrderRouting
--Exercise 47
Select Firstname, Lastname , firstname + ' ' + Lastname + ' ' as Fullname from Person.Contact
--Exercise 48
Use FISH

Drop Table Emplo
Create Table Emplo(
	Empid int identity,
	Ename varchar(9) not null,
	Eproject varchar(11) not null default 'Not provided'
)
Insert into Emplo  values ('Tom','Database')

Select * from Emplo
Select Ename,Eproject from Emplo where Empid between 2 and 4

-- Exercise 49
Create Table StudDetail(
	Scrollno int identity,
	Sname varchar(9) not null,
	Class varchar(6) not null default 'Not provided'
)
Insert into StudDetail  values ('SHERLIN','VII')
Select * from StudDetail
Select Sname,Class from StudDetail where Sname like 's%'

--Exercise 50
Create Table StudRec(
	Scrollno int identity,
	Sname varchar(7) not null,
	Smarks int not null default 'Not provided'
)
Insert into StudRec  values ('John',42)
Select * from StudRec





