SELECT D.Name AS Department, E.Name AS Employee, E.Salary AS Salary 
FROM Employee E, Department D
WHERE ( SELECT COUNT(DISTINCT(Salary))
        FROM Employee EE
        WHERE EE.DepartmentId = E.DepartmentId AND
              EE.Salary > E.Salary
      ) IN (0, 1, 2)
      AND E.DepartmentId = D.Id 
      ORDER BY E.DepartmentId, E.Salary DESC;
