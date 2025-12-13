/* sql  query to find the highest salary 
in each department along with the employee name */

SELECT Department.name AS Department,
Employee.name AS Employee,
salary FROM Employee
JOIN Department ON Employee.departmentId=Department.id
WHERE (Employee.departmentId,salary) IN (
   SELECT departmentId, MAX(salary) 
   FROM Employee
   GROUP BY departmentId

);
