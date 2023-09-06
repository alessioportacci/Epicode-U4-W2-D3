--1)
SELECT COUNT(OrderID) as NOrders
FROM Orders

--2)
SELECT COUNT(CustomerID) as NCustomers
FROM Customers

--3)
SELECT COUNT(CustomerID) as NLondoneseCustomers
FROM Customers
WHERE City = 'London'

--4)
SELECT AVG(Freight) as AverageFreight
FROM Orders

--5)
SELECT AVG(Freight) as AverageBOTTM
FROM Orders
WHERE CustomerID = 'BOTTM'

--6)
SELECT SUM(Freight) as SumByCustomers
FROM Orders
GROUP BY CustomerID

--7)
SELECT COUNT(CustomerID) as N, City
FROM Customers
GROUP BY City

--8)
SELECT SUM(UnitPrice * Quantity) as MulOrder
FROM [Order Details]
GROUP BY OrderID

--9)
SELECT SUM(UnitPrice * Quantity) as Mul10248
FROM [Order Details]
Where OrderID = 10248

--10)
SELECT COUNT(ProductID) as n, CategoryID as GroupByCategory
FROM Products
GROUP BY CategoryID

--11)
SELECT COUNT(OrderID) as n, ShipCountry 
FROM Orders
GROUP BY ShipCountry

--12)
SELECT AVG(Freight) as AverageByCity
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY City
