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



  













  


