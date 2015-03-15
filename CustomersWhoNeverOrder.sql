SELECT c.Name
FROM Customers as c LEFT JOIN Orders as o
ON c.Id=o.CustomerId
WHERE o.Id IS NULL
