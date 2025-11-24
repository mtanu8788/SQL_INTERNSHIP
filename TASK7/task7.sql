CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    hire_date DATE
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(30),
    location VARCHAR(50)
);
INSERT INTO Departments (dept_id, department, location) VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Pune'),
(3, 'Finance', 'Bangalore'),
(4, 'Marketing', 'Delhi'),
(5, 'Operations', 'Hyderabad');
INSERT INTO Employees (emp_id, name, department, salary, hire_date) VALUES
(101, 'Rahul Sharma', 'IT', 75000, '2022-03-12'),
(102, 'Tanuja Mane', 'HR', 55000, '2023-01-05'),
(103, 'Akash Patil', 'Finance', 82000, '2021-07-19'),
(104, 'Riya Singh', 'IT', 60000, '2023-06-01'),
(105, 'Sahil Khan', 'Marketing', 45000, '2022-11-10'),
(106, 'Neha Gupta', 'Operations', 58000, '2023-09-18'),
(107, 'Manoj Deshmukh', 'Finance', 92000, '2020-05-03'),
(108, 'Pooja Nair', 'HR', 50000, '2021-12-21'),
(109, 'Aditya Joshi', 'IT', 67000, '2024-02-10'),
(110, 'Sneha Kulkarni', 'Marketing', 48000, '2022-08-15');
SELECT * FROM Employees;
SELECT * FROM Departments;
INSERT INTO Employees VALUES (111, 'Yash Pawar', 'Operations', 62000, '2024-01-20');
INSERT INTO Employees (emp_id, name, department, salary, hire_date) VALUES
(112, 'Rohit Shetty', 'IT', 72000, '2023-04-09'),
(113, 'Simran Patel', 'Finance', 83000, '2022-10-14');
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT name, department FROM Employees WHERE department = 'IT';
SELECT name, salary FROM Employees WHERE salary > 60000;
SELECT name, salary FROM Employees ORDER BY salary DESC;SELECT MAX(salary) AS Highest_Salary FROM Employees;

SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;
SELECT MAX(salary) AS Highest_Salary FROM Employees;
SELECT * FROM Employees
WHERE YEAR(hire_date) = 2023;
SELECT * FROM Employees WHERE name LIKE 'A%';
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 80000;
SELECT E.name, E.department, D.location
FROM Employees E
JOIN Departments D ON E.department = D.department;
SELECT E.name, D.location
FROM Employees E
JOIN Departments D USING(department)
WHERE D.location = 'Pune';
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;
CREATE VIEW HighSalary AS
SELECT name, salary FROM Employees WHERE salary > 70000;
SELECT * FROM HighSalary;
CREATE VIEW EmpDeptView AS
SELECT E.emp_id, E.name, E.department, D.location
FROM Employees E JOIN Departments D ON E.department = D.department;
SELECT * FROM EmpDeptView WHERE location = 'Mumbai';
UPDATE HighSalary SET salary = salary + 5000 WHERE name = 'Rahul Sharma';
DELETE FROM Employees WHERE emp_id = 110;
UPDATE Employees SET salary = salary * 1.10 WHERE department = 'IT';
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;
SELECT department, MIN(salary) AS min_salary
FROM Employees
GROUP BY department;
SELECT DISTINCT department FROM Employees;
SELECT * FROM Employees WHERE department <> 'Finance';
SELECT * FROM Employees ORDER BY salary DESC LIMIT 3;
SELECT * FROM Employees WHERE hire_date > '2022-12-31';
 SELECT name, salary,
CASE
    WHEN salary >= 80000 THEN 'Grade A'
    WHEN salary >= 60000 THEN 'Grade B'
    ELSE 'Grade C'
END AS grade
FROM Employees;
SELECT name, salary FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);
SELECT department, COUNT(*) AS total
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;
DROP VIEW HighSalary;

