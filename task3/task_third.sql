CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30),
    JoinDate DATE
);
INSERT INTO Employees VALUES
(1,'Amit Sharma','IT',45000,'Pune','2020-01-15'),
(2,'Neha Patil','HR',38000,'Mumbai','2019-03-12'),
(3,'Rahul Singh','Finance',52000,'Delhi','2021-07-19'),
(4,'Sneha Desai','IT',60000,'Pune','2018-11-03'),
(5,'Karan Joshi','Marketing',30000,'Chennai','2022-02-10'),
(6,'Priya Nair','IT',55000,'Bangalore','2017-09-14'),
(7,'Rohan Mehta','Finance',48000,'Delhi','2020-12-01'),
(8,'Trupti Kulkarni','HR',35000,'Pune','2019-06-20'),
(9,'Vikas Gupta','Marketing',29000,'Mumbai','2021-03-25'),
(10,'Meera Rao','IT',62000,'Hyderabad','2018-04-17'),
(11,'Rutuja Mane','Finance',45000,'Pune','2022-09-28'),
(12,'Sagar More','HR',33000,'Mumbai','2020-10-05'),
(13,'Nilesh Pawar','Marketing',34000,'Chennai','2021-11-18'),
(14,'Komal Shetty','Finance',51000,'Bangalore','2019-01-11'),
(15,'Yash Patankar','IT',58000,'Goa','2020-07-07');

SELECT * FROM Employees;

SELECT * FROM Employees WHERE Department='IT';

SELECT * FROM Employees WHERE City='Pune';

SELECT EmpName, Salary FROM Employees;

SELECT EmpName, Department FROM Employees;

SELECT EmpName, City, JoinDate FROM Employees;

SELECT * FROM Employees WHERE Salary > 50000;

SELECT * FROM Employees WHERE Department='Finance' AND Salary < 50000;

SELECT * FROM Employees WHERE City <> 'Mumbai';

SELECT * FROM Employees WHERE Salary = 45000;

SELECT * FROM Employees WHERE JoinDate > '2020-01-01';

SELECT * FROM Employees WHERE Department='IT' OR Department='HR';

SELECT * FROM Employees 
WHERE Salary > 40000 AND City='Pune';

SELECT * FROM Employees WHERE City IN ('Mumbai','Chennai');

SELECT * FROM Employees 
WHERE Department='IT' AND Salary BETWEEN 50000 AND 60000;

SELECT * FROM Employees WHERE EmpName LIKE 'A%';

SELECT * FROM Employees WHERE EmpName LIKE '%a';

SELECT * FROM Employees WHERE EmpName LIKE '%sh%';

SELECT * FROM Employees WHERE EmpName LIKE 'R%';

SELECT * FROM Employees WHERE Salary BETWEEN 30000 AND 50000;

SELECT * FROM Employees 
WHERE JoinDate BETWEEN '2019-01-01' AND '2021-12-31';

SELECT * FROM Employees WHERE EmpID BETWEEN 5 AND 10;

SELECT * FROM Employees ORDER BY Salary ASC;

SELECT * FROM Employees ORDER BY Salary DESC;

SELECT * FROM Employees ORDER BY EmpName;

SELECT * FROM Employees 
ORDER BY Department, Salary DESC;

SELECT * FROM Employees ORDER BY JoinDate DESC;

SELECT * FROM Employees LIMIT 5;

SELECT * FROM Employees 
ORDER BY Salary DESC 
LIMIT 3;

SELECT * FROM Employees 
ORDER BY Salary ASC 
LIMIT 4;

SELECT * FROM Employees 
WHERE Department='IT' 
LIMIT 2;
