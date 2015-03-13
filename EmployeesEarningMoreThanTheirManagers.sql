# Write your MySQL query statement below
SELECT e.name
FROM Employee as e, Employee as m
WHERE e.ManagerId=m.Id AND e.Salary>m.Salary
