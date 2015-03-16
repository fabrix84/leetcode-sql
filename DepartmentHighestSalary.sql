SELECT d.Name AS Department, e.Name AS Employee, t.Salary
FROM Employee e JOIN (SELECT DepartmentId, MAX(Salary) AS Salary 
                      FROM Employee 
                      GROUP BY DepartmentId) t
USING(DepartmentId, Salary)
                JOIN Department d
ON d.id = t.DepartmentId
