/* sql query to find the second highest salary
 from the Employee table using subquery
 */

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
)