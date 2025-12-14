/* SQL query to find employees earning more than their managers */

--uses  Self-join where emp salary > mgr salary.​
-- e1 refers to the employee in the employee table whereas
-- e2 refers to the manager in the same table.​

SELECT e1.name AS Employee FROM Employee e1
JOIN Employee e2 ON e1.managerId = e2.Id
WHERE e1.Salary > e2.Salary;
