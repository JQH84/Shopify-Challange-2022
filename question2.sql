-- 1. How many orders were shipped by Speedy Express in total?

SELECT 
  Count(OrderID) as Total_Orders_SpeedyExpress 
FROM 
  Orders 
WHERE 
  ShipperID = 1;
-- Option 2
SELECT 
  Count(OrderID) as Total_Orders_SpeedyExpress 
FROM 
  Orders as o 
  JOIN Shippers as s ON o.ShipperID = s.ShipperID 
WHERE 
  s.ShipperName = 'Speedy Express';

--------------------------------------------------------------------------------

-- What is the last name of the employee with the most orders?

SELECT 
  e.LastName as LastName, 
  Count(OrderID) as Total_Orders 
FROM 
  Orders as o 
  JOIN Employees as e ON o.EmployeeID = e.EmployeeID 
GROUP BY 
  e.LastName 
ORDER BY 
  Count(OrderID) DESC 
LIMIT 
  1;

--------------------------------------------------------------------------------

-- What product was ordered the most by customers in Germany?

SELECT 
  p.ProductName as ProductName, 
  Count(*) as Total_Orders 
FROM 
  Orders as o 
  JOIN Customers as c ON o.CustomerID = c.CustomerID 
  JOIN OrderDetails as od ON o.OrderID = od.OrderID 
  JOIN Products as p ON od.ProductID = p.ProductID 
WHERE 
  c.Country = 'Germany' 
GROUP BY 
  p.ProductName 
ORDER BY 
  Count(*) DESC 
LIMIT 
  1;