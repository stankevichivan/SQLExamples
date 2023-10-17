Create table If Not Exists Employee
(
    Id     int,
    Salary int
);
Truncate table Employee;
insert into Employee (Id, Salary)
values ('1', '100');
insert into Employee (Id, Salary)
values ('2', '200');
insert into Employee (Id, Salary)
values ('3', '300');

/*решение*/
SELECT (SELECT salary
        FROM employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary;