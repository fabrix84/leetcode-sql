SELECT MAX(Salary) 
From Employee 
WHERE Salary < ( 
                SELECT Max(Salary) 
                FROM Employee
                );
