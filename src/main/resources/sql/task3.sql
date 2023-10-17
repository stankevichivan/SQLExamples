Create table If Not Exists Employee
(
    Id        int,
    Name      varchar(255),
    Salary    int,
    ManagerId int
);
Truncate table Employee;
insert into Employee (Id, Name, Salary, ManagerId)
values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId)
values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId)
values ('3', 'Sam', '60000', 'None');
insert into Employee (Id, Name, Salary, ManagerId)
values ('4', 'Max', '90000', 'None');

/*решение*/
SELECT e1.Id,
       e1.Name,
       e1.Salary,
       e1.ManagerId
FROM employee e1,
     employee e2
WHERE e1.ManagerId = e2.Id
  and e1.Salary > e2.Salary;
