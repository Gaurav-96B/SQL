1. Table creation
--------------------------------------
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

2. Data insertion
---------------------------------------
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, JobTitle, Salary, HireDate)
VALUES
(1, 'Amit', 'Sharma', 'IT', 'Software Engineer', 65000.00, '2021-06-15'),
(2, 'Priya', 'Singh', 'HR', 'HR Manager', 72000.00, '2019-03-10'),
(3, 'Rohit', 'Verma', 'Finance', 'Accountant', 58000.00, '2020-08-22'),
(4, 'Neha', 'Patel', 'IT', 'Senior Developer', 85000.00, '2018-01-05'),
(5, 'Vikram', 'Kumar', 'Sales', 'Sales Executive', 50000.00, '2022-02-14'),
(6, 'Anjali', 'Mishra', 'Marketing', 'Marketing Lead', 67000.00, '2021-09-30');

1. Get all employee details
--------------------------------------
SELECT * FROM Employees;

2. Find employees in the IT department
---------------------------------------
SELECT FirstName, LastName, JobTitle, Salary
FROM Employees
WHERE Department = 'IT';

3. Get employees hired after 2020
--------------------------------------
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate > '2020-01-01';

4. Find the highest paid employee
-----------------------------------------
SELECT FirstName, LastName, JobTitle, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

5. Count employees in each department
------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

6. Get average salary by department
------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

7. Find employees earning more than ₹65,000
------------------------------------------------
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 65000;

8. Sort employees by hire date (newest first)
-------------------------------------------------
SELECT FirstName, LastName, HireDate
FROM Employees
ORDER BY HireDate DESC;

9. Show employees whose last name starts with "S"
-------------------------------------------------------
SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE 'S%';

10. Find second highest salary
-----------------------------------------------------
SELECT FirstName, LastName, Salary
FROM Employees e1
WHERE 2 = (
    SELECT COUNT(DISTINCT Salary)
    FROM Employees e2
    WHERE e2.Salary >= e1.Salary
);

11. Display all employees working in the IT department.
--------------------------------------------------------
SELECT * 
FROM Employees
WHERE Department = 'IT';

12. Find the names and salaries of employees who earn more than 65,000.
------------------------------------------------------------------------
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 65000;

13. Show the total number of employees in each department.
------------------------------------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

14. List the employees who were hired before 2020.
------------------------------------------------------------------------
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate < '2020-01-01';

15. Find the employee(s) with the highest salary in the company.
-----------------------------------------------------------------------
SELECT FirstName, LastName, JobTitle, Salary
FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

16. Get the average salary of employees in the HR department.
----------------------------------------------------------------------
SELECT AVG(Salary) AS AvgHRSalary
FROM Employees
WHERE Department = 'HR';

17. Display all employees whose last name starts with “S”.
---------------------------------------------------------------------
SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE 'S%';

18. List employees in ascending order of their HireDate (oldest employees first).
------------------------------------------------------------------------------------
SELECT FirstName, LastName, HireDate
FROM Employees
ORDER BY HireDate ASC;

19. Find the second highest salary among all employees.
----------------------------------------------------------------------------------
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employees
WHERE Salary < (SELECT MAX(Salary) FROM Employees);

20. Show the department that has the maximum number of employees.
---------------------------------------------------------------------------------
SELECT Department
FROM Employees
GROUP BY Department
ORDER BY COUNT(*) DESC
LIMIT 1;

21. Find the average salary of employees in each department.
--------------------------------------------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
ORDER BY AvgSalary DESC;

22. Get the highest salary in each department.
--------------------------------------------------------------------------------
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department
ORDER BY MaxSalary DESC;

23. List the total salary expense of each department.
------------------------------------------------------------------------------------
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
ORDER BY TotalSalary DESC;

24. Show the number of employees hired each year.
------------------------------------------------------------------------------------
SELECT YEAR(HireDate) AS HireYear, COUNT(*) AS TotalHires
FROM Employees
GROUP BY YEAR(HireDate)
ORDER BY HireYear ASC;

25. Find the department with the least number of employees.
------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department
ORDER BY EmployeeCount ASC
LIMIT 1;

26.List all employees, sorted by department (alphabetical) and then by salary (highest first).
---------------------------------------------------------------------------------------------
SELECT FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Department ASC, Salary DESC;

27.Find the average salary of each job title, sorted from highest to lowest average salary.
--------------------------------------------------------------------------------------------
SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY JobTitle
ORDER BY AvgSalary DESC;

28.Show the minimum, maximum, and average salary for each department.
-------------------------------------------------------------------------------------------
SELECT Department, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
ORDER BY AvgSalary DESC;

29.Get the top 3 departments with the highest total salary expense.
-----------------------------------------------------------------------------------------
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
ORDER BY TotalSalary DESC
LIMIT 3;

30.Find the number of employees in each department, but only show departments with more than 1 employee.
--------------------------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1
ORDER BY TotalEmployees DESC;

31.Find the department with the maximum number of employees.
------------------------------------------------------------------------------------------------------
SELECT TOP 1 Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
ORDER BY TotalEmployees DESC;

32.List top 3 highest-paid employees in each department.
--------------------------------------------------------------------------------------------------------
   SELECT e.EmployeeID, e.FirstName, e.LastName, e.Department, e.Salary
FROM Employees e
WHERE (
   SELECT COUNT(*)
   FROM Employees e2
   WHERE e2.Department = e.Department
     AND e2.Salary > e.Salary
) < 3
ORDER BY e.Department, e.Salary DESC;

33.Find departments where the average salary is greater than 70,000.
-------------------------------------------------------------------------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 70000
ORDER BY AvgSalary DESC;

34.Find the average salary for each job title, but only show job titles with more than 1 employee.
--------------------------------------------------------------------------------------------------------------
SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY JobTitle
HAVING COUNT(*) > 1
ORDER BY AvgSalary DESC;

35.Count how many employees share the same job title.
---------------------------------------------------------------------------------------------------------------
SELECT JobTitle, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY JobTitle
ORDER BY TotalEmployees DESC;

36.Departments with more than 3 employees.
--------------------------------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 3;

37.Job titles where the average salary is greater than 70,000.
-------------------------------------------------------------------------------------------------------------------
SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY JobTitle
HAVING AVG(Salary) > 70000;

38.Departments where the maximum salary is above 90,000.
----------------------------------------------------------------------------------------------------------------------
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department
HAVING MAX(Salary) > 90000;

39.Departments with at least 2 employees earning more than 75,000.
-------------------------------------------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS HighEarners
FROM Employees
WHERE Salary > 75000
GROUP BY Department
HAVING COUNT(*) >= 2;

40.List years in which more than 2 employees were hired.
------------------------------------------------------------------------------------------------------------------------
SELECT YEAR(HireDate) AS HireYear, COUNT(*) AS TotalHired
FROM Employees
GROUP BY YEAR(HireDate)
HAVING COUNT(*) > 2;

41.Departments where the minimum salary is less than 55,000.
---------------------------------------------------------------------------------------------------------------------------
SELECT Department, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department
HAVING MIN(Salary) < 55000;

42.Job titles that appear more than once.
----------------------------------------------------------------------------------------------------------------------------
SELECT JobTitle, COUNT(*) AS TitleCount
FROM Employees
GROUP BY JobTitle
HAVING COUNT(*) > 1;

43.Departments where the sum of all salaries is more than 250,000.
-------------------------------------------------------------------------------------------------------------------------------
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 250000;

44.Departments where the average salary is between 60,000 and 80,000.
---------------------------------------------------------------------------------------------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) BETWEEN 60000 AND 80000;

45.Departments with exactly 4 employees.
------------------------------------------------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) = 4;

46.Departments with more than 3 employees, ordered by employee count (highest first).
---------------------------------------------------------------------------------------------------------------------------
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 3
ORDER BY TotalEmployees DESC;

47.Job titles that appear more than once, ordered by how many employees share the title.
----------------------------------------------------------------------------------------------------------------------------
SELECT JobTitle, COUNT(*) AS TitleCount
FROM Employees
GROUP BY JobTitle
HAVING COUNT(*) > 1
ORDER BY TitleCount DESC;

48.Departments where the average salary is between 60,000 and 80,000, ordered by average salary.
---------------------------------------------------------------------------------------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) BETWEEN 60000 AND 80000
ORDER BY AvgSalary DESC;

49.Find the second highest salary in the company
---------------------------------------------------------------------------------------------------------------------------
SELECT Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;-----skips the highest salary and picks the next one.

50.Find the top 3 highest-paid employees in the IT department.
-------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'IT'
ORDER BY Salary DESC
LIMIT 3;

51.Top 5 highest-paid employees in the company.
------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 5;

52.Lowest 3 salaries in the company
----------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Salary ASC
LIMIT 3;

53.First 10 employees from the table (no ordering)
-----------------------------------------------------------------------------------------------------------------------------
SELECT *
FROM Employees
LIMIT 10;

54.Top 3 most recently hired employees
------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, HireDate
FROM Employees
ORDER BY HireDate DESC
LIMIT 3;

55.Earliest 3 hired employees
-------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, HireDate
FROM Employees
ORDER BY HireDate ASC
LIMIT 3;

56.2nd highest-paid employee
-------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;

57.4th to 6th highest-paid employees
--------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3 OFFSET 3;

58.Top 3 salaries in the IT department
----------------------------------------------------------------------------------------------------------------------------------
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'IT'
ORDER BY Salary DESC
LIMIT 3;

59.10th employee record from the Employees table
----------------------------------------------------------------------------------------------------------------------------------------
SELECT *
FROM Employees
LIMIT 1 OFFSET 9;

    



    
    






    












  













  


