# SQL-TASK-3

**Task 3 – Writing Basic SELECT Queries**

**Objective** : Practice data retrieval and filtering techniques using MySQL Workbench.
---
**Tools Used** : MySQL Workbench
---

**Database Structure**

Three tables were created:

1. **Departments**

   * `deptId` (Primary Key)
   * `deptName`

2. **Employees**

   * `empId` (Primary Key, Auto Increment)
   * `empName`
   * `emailId`
   * `deptId` (Foreign Key → Departments)

3. **Salaries**

   * `salaryId` (Primary Key, Auto Increment)
   * `empId` (Foreign Key → Employees)
   * `salary`
---

**Queries Performed**

* Retrieve all employees
* Display only selected columns like name and email
* Filter employees by department (e.g., HR)
* Filter names starting with specific letters
* Get employees with salary between a range
* Filter by multiple departments using `IN`
* Sort employees by salary in descending order
* Get top 5 highest-paid employees
* Use `DISTINCT` to show unique departments
* Use aliasing (`AS`) for better column readability
---

**Files Included**

`sql task 3.sql` → Complete SQL script with table creation, data insertion, and all queries.
`README.md` → Documentation of the task
---
