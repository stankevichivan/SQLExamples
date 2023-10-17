SELECT 
    e1.Id, e1.Name, e1.Salary, e1.ManagerId
FROM
    employee e1,
    employee e2
WHERE
    e1.ManagerId = e2.Id and e1.Salary > e2.Salary;
