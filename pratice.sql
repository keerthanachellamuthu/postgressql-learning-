CREATE TABLE E1 (
    EmpID INT,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Department VARCHAR(20),
    Salary FLOAT,
    HireDate TIMESTAMP
);

INSERT INTO e1 (EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES (1, 'John', 'Smith', 'Sales', 60000, '2022-01-15'),
(2, 'Jane', 'Doe', 'Marketing', 75000, '2021-06-20'),
(3, 'David', 'Lee', 'IT', 80000, '2020-11-05'),
(4, 'Sarah', 'Jones', 'Sales', 65000, '2023-03-10'),
(5, 'Michael', 'Brown', 'Marketing', 70000, '2022-09-25'),
(6, 'Emily', 'Davis', 'IT', 90000, '2019-04-18'),

----Easy -----
sELECT * FROM e1;

SELECT empid,lastname from e1;

select empid,firstname,lastname from e1 where department ="Sales";

select empid,firstname,lastname from e1 where department ='Sales' order By hiredate DEsc;

Select * from E1 limit 4;

---- imtermettiate ------

--Calculate the average salary--

SELECT AVG(salary) as averageSalary from E1;

----Count the number of employees in each department--

select count(department) as DepCount from E1 where empid group by department;

--Find the highest salary in each departmentE1

select max(salary) as HigherSalary , department from E1 where empid Group by department;

--Find employees hired after a specific date

SELECT * from E1 where HireDate = '2019-04-18';

--Use LIKE for pattern matching:E1

select empid,firstname,lastname from e1 where department ='s%';

---hardest---E1Find the second highest salary

SELECT * from E1 order by salary desc limit 1 OFFSET 1;

---Find employees who have the same salary

select a.firstname,a.lastname,b.FirstName,b.LastName from E1 a join E1 b on a.Salary= b.Salary;

---Find the Nth highest salary (replace N with the desired number
