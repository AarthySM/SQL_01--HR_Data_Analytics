-- 1. Data Retrieval (Basic Select)

SELECT ﻿Employee_Name, EmpID FROM human_resource;

-- Retrieve multiple columns

SELECT ﻿Employee_Name, EmpID , Salary, GenderID FROM human_resource;
-----------------------------------------------------------------------------------------------------------------------------------

-- 2. Filtering Data (Active Employees)

SELECT * FROM human_resource WHERE EmploymentStatus = 'Active';

SELECT ﻿Employee_Name, Department FROM human_resource WHERE EmploymentStatus = 'Active';

-- Filtering by salary range

SELECT ﻿Employee_Name, Salary FROM human_resource WHERE Salary BETWEEN 40000 AND 60000;
  
-- Filtering by multiple conditions (AND) 
  
SELECT ﻿Employee_Name, Department FROM human_resource 
WHERE EmploymentStatus = 'Active' AND PerformanceScore = 'Exceeds';
-----------------------------------------------------------------------------------------------------------------------------------

-- 3. Sorting Data (Top Salaries)

SELECT ﻿Employee_Name, Salary FROM human_resource ORDER BY Salary DESC;

-- Sorting by multiple columns
  
SELECT ﻿Employee_Name, Salary, DeptID FROM human_resource ORDER BY DeptID ASC, Salary DESC;
  
-- Sorting by hire date
  
SELECT ﻿Employee_Name, DateofHire FROM human_resource ORDER BY DateofHire ASC;
-----------------------------------------------------------------------------------------------------------------------------------

 -- 4. Grouping Data (Employee Count by Department)

SELECT Department, COUNT(*) AS Employee_Count FROM human_resource GROUP BY Department;

-- Group by gender
  
SELECT Sex, COUNT(*) AS Employee_Count FROM human_resource GROUP BY Sex;

SELECT GenderID, COUNT(*) AS Employee_Count FROM human_resource GROUP BY GenderID;
  
-- Group by performance score 
  
SELECT PerformanceScore, COUNT(*) AS Performance_Count FROM human_resource GROUP BY PerformanceScore;
-----------------------------------------------------------------------------------------------------------------------------------

 -- 5. Aggregation Functions (Average Salary)

SELECT AVG(Salary) AS Average_Salary FROM human_resource;

-- Maximum salary
  
SELECT MAX(Salary) AS Highest_Salary FROM human_resource;
SELECT Department, MAX(Salary) AS Highest_Salary FROM human_resource group by department order by  Highest_Salary desc;

-- Minimum salary.
  
SELECT MIN(Salary) AS Lowest_Salary FROM human_resource;
SELECT Department, MIN(Salary) AS Lowest_Salary FROM human_resource group by department order by  Lowest_Salary asc;
-----------------------------------------------------------------------------------------------------------------------------------

-- 6. Calculating Percentages (Percentage of Employees by Gender)

SELECT GenderID, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM human_resource) AS Percentage 
FROM human_resource GROUP BY GenderID;

-- Percentage of employees by department
  
SELECT DeptID, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM human_resource) AS Percentage 
FROM human_resource GROUP BY DeptID;
  
-- Percentage of employees by employment status

SELECT EmploymentStatus, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM human_resource) AS Percentage 
FROM human_resource GROUP BY EmploymentStatus;
-----------------------------------------------------------------------------------------------------------------------------------

-- 7. Limiting Results (Top 5 Salaries)

SELECT ﻿Employee_Name ,Department, Salary FROM human_resource ORDER BY Salary DESC LIMIT 5;

-- Top 5 employees by days late in the last 30 days
  
SELECT ﻿Employee_Name, DaysLateLast30 FROM human_resource ORDER BY DaysLateLast30 DESC LIMIT 5;

-- Bottom 5 salaries

SELECT ﻿Employee_Name, Department, Salary FROM human_resource ORDER BY Salary ASC LIMIT 5;
-----------------------------------------------------------------------------------------------------------------------------------

-- 8. Basic Subqueries (Employees in High Average Salary Departments)

SELECT ﻿Employee_Name,Department, DeptID, Salary
FROM human_resource 
WHERE DeptID IN (SELECT DeptID FROM human_resource GROUP BY DeptID HAVING AVG(Salary) > 50000);

-- Find departments with more than 50 employees
  
SELECT DeptID FROM human_resource 
WHERE DeptID IN (SELECT DeptID FROM human_resource GROUP BY DeptID HAVING COUNT(*) > 50);

SELECT Department, DeptID FROM human_resource 
WHERE DeptID IN (SELECT DeptID FROM human_resource GROUP BY Department, DeptID HAVING COUNT(*) > 50);
  
-- Find employees with salaries above the department average
  
SELECT ﻿Employee_Name, Salary,Department, DeptID FROM human_resource 
WHERE Salary > (SELECT AVG(Salary) FROM human_resource WHERE DeptID = human_resource.DeptID);
-----------------------------------------------------------------------------------------------------------------------------------