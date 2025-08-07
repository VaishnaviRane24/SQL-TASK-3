DROP DATABASE IF EXISTS employee_management_db;

CREATE DATABASE employee_management_db;
USE employee_management_db;

CREATE TABLE Departments (
		deptId INT PRIMARY KEY ,
        deptName VARCHAR(50) 
);

INSERT INTO Departments(deptId,deptName) VALUES
(1 , "HR") ,
(2 , "Sales") ,
(3 , "Finance") ,
(4 , "IT") ;

CREATE TABLE Employees (
		empId INT AUTO_INCREMENT PRIMARY KEY ,
        empName VARCHAR(50) ,
		emailId VARCHAR(50) ,
        deptId INT ,
        FOREIGN KEY(deptId) REFERENCES Departments(deptId)
);

INSERT INTO Employees(empName , emailId , deptId) VALUES
("Aarav Sharma" , "Aarav25@gmail.com" , 1) , 
("Meera Deshmukh" , "Meera81@gmail.com" , 2) ,
("Rohan Patel" , "Rohan63@gmail.com" , 3) ,
("Ananya Iyer" , "Ananya57@gmail.com" , 1) ,
("Kunal Verma" , "Kunal21@gmail.com" , 4) ,
("Priya Nair" , "Priya34@gmail.com" , 3) ,
("Rahul Joshi" , "Rahul23@gmail.com" , 2) ,
("Divya Kulkarni" , "Divya56@gmail.com" , 1) ,
("Neha Bhandari" , "Neha50@gmail.com" , 4) ,
("Arjun Mehta" , "Arjun13@gmail.com" , 3) ;

CREATE TABLE Salaries (
	salaryId INT AUTO_INCREMENT PRIMARY KEY ,
    empId INT ,
    salary DECIMAL(10 , 2) ,
    FOREIGN KEY(empId) REFERENCES Employees(empId)
);

INSERT INTO Salaries(empId , salary) VALUES
(1 , 45000.00),
(2 , 60000.00),
(3 , 70000.00),
(4 , 35000.00),
(5 , 52300.00),
(6 , 68000.00),
(7 , 48000.00),
(8 , 39000.00),
(9 , 43000.00),
(10 , 74000.00);

-- Select all employees
SELECT * FROM Employees;

-- Select specific columns
SELECT empName, emailId FROM Employees;

-- Filter: Employees in HR department
SELECT E.empName, D.deptName
FROM Employees E
JOIN Departments D ON E.deptId = D.deptId
WHERE D.deptName = 'HR';

-- Filter: Name starts with A
SELECT * FROM Employees
WHERE empName LIKE 'A%';

-- Filter: Salary between 40000 and 70000
SELECT E.empName, S.salary
FROM Employees E
JOIN Salaries S ON E.empId = S.empId
WHERE S.salary BETWEEN 40000 AND 70000;

-- Filter: Employees in Finance or IT
SELECT E.empName, D.deptName
FROM Employees E
JOIN Departments D ON E.deptId = D.deptId
WHERE D.deptName IN ('Finance', 'IT');

-- Sort employees by salary descending
SELECT E.empName, S.salary
FROM Employees E
JOIN Salaries S ON E.empId = S.empId
ORDER BY S.salary DESC;

-- Top 5 highest salaries
SELECT E.empName, S.salary
FROM Employees E
JOIN Salaries S ON E.empId = S.empId
ORDER BY S.salary DESC
LIMIT 5;

-- Distinct departments
SELECT DISTINCT D.deptName
FROM Employees E
JOIN Departments D ON E.deptId = D.deptId;

-- Aliased columns
SELECT E.empName AS employeeName, S.salary AS monthlySalary
FROM Employees E
JOIN Salaries S ON E.empId = S.empId;
